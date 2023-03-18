<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manage.aspx.cs" Inherits="finalHomeWork.manage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/rankCss.css" rel="stylesheet" />
    <link href="css/common.css" rel="stylesheet" />
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
                欢迎您，管理员<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>！
            </div>
        </div>
        <!--rank-->
               
        <div class="box w"> 
            <div class="view">
                    <asp:DetailsView ID="DetailsView1" runat="server"  AllowPaging="True" AutoGenerateRows="False" DataKeyNames="BookCode" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#507CD1" GridLines="None" HeaderText="欢迎您，亲爱的管理员！">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                        <EditRowStyle BackColor="#b48be9" />
                        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                        <Fields>
                            <asp:TemplateField HeaderText="BookTitlePicture" SortExpression="BookTitlePicture">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("BookTitlePicture") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("BookTitlePicture") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Bind("BookTitlePicture") %>' Width="1080px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="BookCode" HeaderText="BookCode" ReadOnly="True" SortExpression="BookCode" />
                            <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
                            <asp:BoundField DataField="AuthorCode" HeaderText="AuthorCode" SortExpression="AuthorCode" />
                            <asp:BoundField DataField="PublishTime" HeaderText="PublishTime" SortExpression="PublishTime" />
                            <asp:BoundField DataField="BookSort" HeaderText="BookSort" SortExpression="BookSort" />
                            <asp:TemplateField HeaderText="BookPicture" SortExpression="BookPicture">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("BookPicture") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("BookPicture") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("BookPicture") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="ContentIntro" HeaderText="ContentIntro" SortExpression="ContentIntro" />
                            <asp:BoundField DataField="HotDegree" HeaderText="HotDegree" SortExpression="HotDegree" />
                            <asp:BoundField DataField="bookLink" HeaderText="bookLink" SortExpression="bookLink" />
                            <asp:BoundField DataField="NumOfRead" HeaderText="NumOfRead" SortExpression="NumOfRead" />
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                        </Fields>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#B48BE9" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#b48be9" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookWebConnectionString %>" DeleteCommand="DELETE FROM [Book] WHERE [BookCode] = @BookCode" InsertCommand="INSERT INTO [Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (@BookCode, @BookName, @AuthorCode, @PublishTime, @BookSort, @BookPicture, @ContentIntro, @HotDegree, @BookTitlePicture, @bookLink, @NumOfRead)" SelectCommand="SELECT * FROM [Book]" UpdateCommand="UPDATE [Book] SET [BookName] = @BookName, [AuthorCode] = @AuthorCode, [PublishTime] = @PublishTime, [BookSort] = @BookSort, [BookPicture] = @BookPicture, [ContentIntro] = @ContentIntro, [HotDegree] = @HotDegree, [BookTitlePicture] = @BookTitlePicture, [bookLink] = @bookLink, [NumOfRead] = @NumOfRead WHERE [BookCode] = @BookCode">
                        <DeleteParameters>
                            <asp:Parameter Name="BookCode" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="BookCode" Type="String" />
                            <asp:Parameter Name="BookName" Type="String" />
                            <asp:Parameter Name="AuthorCode" Type="String" />
                            <asp:Parameter Name="PublishTime" Type="DateTime" />
                            <asp:Parameter Name="BookSort" Type="String" />
                            <asp:Parameter Name="BookPicture" Type="String" />
                            <asp:Parameter Name="ContentIntro" Type="String" />
                            <asp:Parameter Name="HotDegree" Type="Int32" />
                            <asp:Parameter Name="BookTitlePicture" Type="String" />
                            <asp:Parameter Name="bookLink" Type="String" />
                            <asp:Parameter Name="NumOfRead" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="BookName" Type="String" />
                            <asp:Parameter Name="AuthorCode" Type="String" />
                            <asp:Parameter Name="PublishTime" Type="DateTime" />
                            <asp:Parameter Name="BookSort" Type="String" />
                            <asp:Parameter Name="BookPicture" Type="String" />
                            <asp:Parameter Name="ContentIntro" Type="String" />
                            <asp:Parameter Name="HotDegree" Type="Int32" />
                            <asp:Parameter Name="BookTitlePicture" Type="String" />
                            <asp:Parameter Name="bookLink" Type="String" />
                            <asp:Parameter Name="NumOfRead" Type="String" />
                            <asp:Parameter Name="BookCode" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
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
</body>
</html>
