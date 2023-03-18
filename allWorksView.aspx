<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="allWorksView.aspx.cs" Inherits="finalHomeWork.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
   <link href="css/common.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/allstyle.css"/>
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header w">
            <!-- logo -->
            <div class="logo">
                <img src="images/logo.png" alt=""/>
            </div>
            <!-- nav -->
            <div class="nav">
                <ul>
                    <li><a href="index1.aspx">首页</a></li>
                    <li><a href="rank.aspx">排行</a></li>
                    <li><a href="#">全部作品</a></li>
                </ul>
            </div>
            <!-- search -->
            <div class="search">
                <input type="text" value="输入关键词" />
                <button></button>
            </div>
            <!-- user -->
            <div class="user">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </div>
        </div>
        <!--rank-->
               
        <div class="box w"> 
            <div class="all_head">
                    作品一览
                </div>
            <!-- 此地方一定要清除浮动，务必务必务必 -->
            <div class="extend_bac  clearfix">
                <div>
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" CellSpacing="30" RepeatColumns="4" RepeatDirection="Horizontal">
                        <ItemTemplate>
                            <ul>
                                <li><a href='<%# Eval("bookLink") %>'>
                                    <div class="inner">
                                        <div class="image">
                                            <img alt="" src='<%# Eval("BookTitlePicture") %>' />
                                        </div>
                                        <div class="title">
                                            <h4>
                                                <asp:Label ID="BookNameLabel" runat="server" Text='<%# Eval("BookName") %>' />
                                                <br />
                                                作者：<asp:Label ID="AuthorCodeLabel" runat="server" Text='<%# Eval("AuthorName") %>' />
                                            </h4>
                                            <p>
                                                <asp:Label ID="ContentIntroLabel" runat="server" Text='<%# Eval("ContentIntro") %>' />
                                            </p>
                                        </div>
                                        <div class="date">
                                            <span>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("PublishTIme","{0:yyyy-MM-dd}").ToString() %>'></asp:Label></span>
                                        </div>
                                    </div>
                                </a>
                                </li>
                            </ul>
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookWebConnectionString %>" SelectCommand="SELECT * FROM [allWorksView]"></asp:SqlDataSource>
    </form>
    <!-- footer start -->
    <div class="footer">
        <div class="w">
            <!-- 左侧 -->
            <div class="copyright">
                <img src="images/logo.png" alt=""/>
                <p>浩源的书屋致力推广中国优秀作品，是青年人阅读刊物的优秀网站<br/> © 2021年XTCG Inc.保留所有权利。-沪ICP备xxxxxxxxx号</p>
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
