<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rank.aspx.cs" Inherits="finalHomeWork.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>浩源的书屋—排行榜</title>
    <link href="css/common.css" rel="stylesheet" />
    <link href="css/rankCss.css" rel="stylesheet" />
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
                    <li><a href="#">排行</a></li>
                    <li><a href="allWorksView.aspx">全部作品</a></li>
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
         <div class="w">
                <div class="rank_head">
                    热度排行榜
                </div>
             <div class="view">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="5">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="图片" SortExpression="BookPicture">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("BookPicture") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("BookPicture") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="BookName" HeaderText="书名" SortExpression="BookName" />
                            <asp:BoundField DataField="BookSort" HeaderText="种类" SortExpression="BookSort" />
                            <asp:BoundField DataField="AuthorName" HeaderText="作者" SortExpression="AuthorName" />
                            <asp:BoundField DataField="HotDegree" HeaderText="热度" SortExpression="HotDegree" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor=" #b48be9" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor=" #b48be9" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#b48be9" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookWebConnectionString %>" SelectCommand="SELECT * FROM [rankView] ORDER BY [HotDegree] DESC"></asp:SqlDataSource>
             </div>
            
        </div>
        

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
