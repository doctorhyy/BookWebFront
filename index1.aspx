<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index1.aspx.cs" Inherits="finalHomeWork.index1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>浩源的书屋——当今年轻人潮流的读书网站</title>
    <link rel="stylesheet" href="css/style1.css"/>
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>
</head>
<body>
    <form id="form1" runat="server">
           <!-- header头部模块开始 -->
    <div class="header w">
        <!-- logo -->
        <div class="logo">
            <img src="images/logo.png" alt=""/>
        </div>
        <!-- nav -->
        <div class="nav">
            <ul>
                <li><a href="#">首页</a></li>
                <li><a href="rank.aspx">排行</a></li>
                <li><a href="allWorksView.aspx">全部作品</a></li>
            </ul>
        </div>
        <!-- search -->
        <div class="search">
            <input type="text" value="输入关键词"/>
            <button></button>
            <!--button的逻辑没有实现-->
        </div>
        <!-- user -->
        <div class="user">
            <img src="images/user.png" alt="" style="vertical-align: middle;"/>
            &nbsp<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </div>
    <!-- header头部模块结束 -->
    <!-- banner 部分start -->
    <div class="banner">
        <div class="w">
            <!-- 左侧 subnav  -->
            <div class="subnav">
                <ul>
                    <li class="menu_item"><a href="pageList/Fantasy.aspx">玄幻修真 <i>  </i></a></li>
                    <li class="menu_item"><a href="pageList/Metropolitan.aspx">都市异能 <i>  </i></a></li>
                    <li class="menu_item"><a href="pageList/ImmortalHero.aspx">仙侠奇幻 <i>  </i></a></li>
                    <li class="menu_item"><a href="pageList/Game.aspx">游戏智能 <i>  </i></a></li>
                    <li class="menu_item"><a href="pageList/Derive.aspx">衍生同人 <i>  </i></a></li>
                    <li class="menu_item"><a href="pageList/HistoryRecode.aspx">历史纪实 <i>  </i></a></li>
                    <li class="menu_item"><a href="pageList/Logic.aspx">逻辑推理 <i>  </i></a></li>
                    <li class="menu_item"><a href="pageList/Suspense.aspx">悬疑惊悚 <i>  </i></a></li>
                </ul>
            </div>
            <!-- 右侧 course -->
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BookWebConnectionString %>" SelectCommand="SELECT * FROM [history_List]"></asp:SqlDataSource>
               <!--未实现的功能当用户点击图书之后，把书加到历史之中，然后生成一个视图来作为首页的显示的历史记录-->
            <div class="course">
                <div class="course-hd">阅览记录</div>
                <div class="course-bd">
                    <ul>
                  <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2">
                    <ItemTemplate>
                        <li>
                            <h4>继续阅读 <asp:Label ID="Label3" runat="server" Text='<%# Eval("BookName") %>'></asp:Label></h4>
                            <p>正在阅读-<asp:Label ID="Label2" runat="server" Text='<%# Eval("LastReadChapter") %>'></asp:Label>章</p>                         
                        </li>
                    </ItemTemplate>
                </asp:DataList>    
                   </ul>
                    <a href="history.aspx" class="all">全部历史</a>
                </div>
            </div>
        </div>
    </div>
    <!-- banner 部分end -->

    <!-- goods START -->
    <div class="goods w">
        <h3> 精品推荐 </h3>
        <div class="goods-item">
            | <a href="https://book.qidian.com/info/1209977">斗破苍穹</a> | <a href="https://book.qidian.com/info/1115277">斗罗大陆</a> | <a href="https://book.qidian.com/info/1027339371">深空彼岸</a> | <a href="https://book.qidian.com/info/1025990049">术士手册</a> | <a href="https://book.qidian.com/info/1639199">吞噬星空</a> | <a href="https://book.qidian.com/info/1028423934">隐秘之首</a>
        </div>
        <div class="mod"> 我的兴趣 </div>
    </div>
    <!-- goods END -->

    <!-- box start -->
    <div class="box w">
        <div class="box-hd">
            <h3>精品推荐</h3>
            <a href="#">查看全部</a>
        </div>

        <!-- 此地方一定要清除浮动 -->

        <div class="box-bd clearfix">
            <ul>
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="5" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <li>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("bookLink") %>'>
                                <div class="box_li">
                                    <div class="box_img">
                                        <img src='<%# Eval("BookTitlePicture") %>' alt="" class="pic" />
                                    </div>
                                    <h4>
                                        <asp:Label ID="BookNameLabel" runat="server" Text='<%# Eval("BookName") %>' /></h4>
                                    <h4>类型:
                                        <asp:Label ID="BookSortLabel" runat="server" Text='<%# Eval("BookSort") %>' />小说</h4>
                                    <p>
                                        <span>新品</span> • 
                                        <asp:Label ID="NumOfReadLabel" runat="server" Text='<%# Eval("NumOfRead") %>' />人正在阅读
                                    </p>
                                </div>
                            </asp:HyperLink></li>
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookWebConnectionString %>" SelectCommand="SELECT * FROM [hotRecommend]"></asp:SqlDataSource>

            </ul>
        </div>
    </div>
    <!-- box end -->

    </form>
    <!-- footer start -->
    <div class="footer">
        <div class="w">
            <!-- 左侧 -->
            <div class="copyright">
                <img src="images/logo.png" alt=""/> <p>浩源的书屋致力推广中国优秀作品，是青年人阅读刊物的优秀网站<br/> © 2021年XTCG Inc.保留所有权利。-沪ICP备xxxxxxxxx号</p>
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
