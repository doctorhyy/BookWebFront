<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HistoryRecode.aspx.cs" Inherits="finalHomeWork.pageList.HistoryRecode" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <title>浩源书屋-历史纪实</title>
    <link href="../css/common.css" rel="stylesheet" />
    <link href="../css/list.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
               <!-- header头部模块开始 -->
    <div class="header w">
        <!-- logo -->
        <div class="logo">
            <img src="../images/logo.png" alt=""/>
        </div>
        <!-- nav -->
        <div class="nav">
            <ul>
                <li><a href="../index1.aspx">首页</a></li>
                <li><a href="../rank.aspx">排行</a></li>
                <li><a href="../allWorksView.aspx">全部作品</a></li>
            </ul>
        </div>
        <!-- search -->
        <div class="search">
            <input type="text" value="输入关键词"/>
            <button></button>
        </div>
        <!-- user -->
        <div class="user">
            <img src="../images/user.png" alt="" style="vertical-align: middle;"/>
            &nbsp<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </div>
        <!--list-->
        <!-- box start -->
    <div class="box w">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookWebConnectionString %>" SelectCommand="SELECT * FROM [HistoryRecode_View]"></asp:SqlDataSource>
        <!-- 此地方一定要清除浮动，务必务必务必 -->
        <div class="box-bd clearfix">
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <div class="leftshow">

                        <a href='<%# Eval("bookLink") %>'>
                            <div class="box_img">
                                    <img src='<%# Eval("BookPicture") %>' alt="" />
                            </div>
                            
                        </a>
                    </div>
                    <div class="rightshow">
                        <h1>
                            <em>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("BookName") %>'></asp:Label></em>
                            <span>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("AuthorName") %>'></asp:Label>&nbsp著</span>
                        </h1>
                        <p>
                            发表时间：<asp:Label ID="Label4" runat="server" Text='<%# Eval("PublishTime") %>'></asp:Label>
                        </p>
                        <p>
                            简介：<asp:Label ID="Label5" runat="server" Text='<%# Eval("ContentIntro") %>'></asp:Label>
                        </p>
                    </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
       </div>
    <!-- box end -->
    </form>

      <!-- footer start -->
    <div class="footer">
        <div class="w">
            <!-- 左侧 -->
            <div class="copyright">
                <img src="../images/logo.png" alt=""/> <p>浩源的书屋致力推广中国优秀作品，是青年人阅读刊物的优秀网站<br/> © 2021年XTCG Inc.保留所有权利。-沪ICP备xxxxxxxxx号</p>
                <a href="#" class="app"> 下载 app</a>
            </div>
            <!-- 右侧 -->
            <div class="links">
                <dl>
                    <dt>关于浩源的书屋</dt>
                    <dd><a href="#">关于</a></dd>
                    <dd><a href="#">管理团队</a></dd>
                    <dd><a href="#">工作机会</a></dd>
                    <dd><a href="#">客户服务</a></dd>
                    <dd><a href="#">帮助</a></dd>
                </dl>
                <dl>
                    <dt>新手指南</dt>
                    <dd><a href="#">如何注册</a></dd>
                    <dd><a href="#">如何阅览</a></dd>
                    <dd><a href="#">如何保存到我的书架</a></dd>
                    <dd><a href="#">积分是什么</a></dd>
                </dl>

                <dl>
                    <dt>合作伙伴</dt>
                    <dd><a href="#">合作机构</a></dd>
                    <dd><a href="#">合作网站</a></dd>
                </dl>
            </div>
        </div>
    </div>
    <!-- footer end -->
</body>
</html>


