<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="accountManger.aspx.cs" Inherits="finalHomeWork.accountManger" %>

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
    <form id="form2" runat="server">
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
        <div class="box w">
            <div class="view">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookWebConnectionString %>" SelectCommand="SELECT * FROM [user]" DeleteCommand="DELETE FROM [user] WHERE [userCode] = @userCode" InsertCommand="INSERT INTO [user] ([userCode], [Name], [Sex], [Telephone], [PassWord], [isManager]) VALUES (@userCode, @Name, @Sex, @Telephone, @PassWord, @isManager)" UpdateCommand="UPDATE [user] SET [Name] = @Name, [Sex] = @Sex, [Telephone] = @Telephone, [PassWord] = @PassWord, [isManager] = @isManager WHERE [userCode] = @userCode">
                    <DeleteParameters>
                        <asp:Parameter Name="userCode" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="userCode" Type="String" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Sex" Type="String" />
                        <asp:Parameter Name="Telephone" Type="String" />
                        <asp:Parameter Name="PassWord" Type="String" />
                        <asp:Parameter Name="isManager" Type="Boolean" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Sex" Type="String" />
                        <asp:Parameter Name="Telephone" Type="String" />
                        <asp:Parameter Name="PassWord" Type="String" />
                        <asp:Parameter Name="isManager" Type="Boolean" />
                        <asp:Parameter Name="userCode" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:DetailsView ID="DetailsView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" HeaderText="欢迎您，亲爱的管理员！" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="userCode" DataSourceID="SqlDataSource1">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <EditRowStyle BackColor="#b48be9" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="userCode" HeaderText="userCode" ReadOnly="True" SortExpression="userCode" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                        <asp:BoundField DataField="Telephone" HeaderText="Telephone" SortExpression="Telephone" />
                        <asp:BoundField DataField="PassWord" HeaderText="PassWord" SortExpression="PassWord" />
                        <asp:CheckBoxField DataField="isManager" HeaderText="isManager" SortExpression="isManager" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#b48be9" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#b48be9" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#b48be9" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />

                </asp:DetailsView>
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
