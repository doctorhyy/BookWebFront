<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="regesiter.aspx.cs" Inherits="finalHomeWork.WebForm1" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>浩源的书屋-注册页面</title>
        <link href="css/common.css" rel="stylesheet" />
        <link href="css/reStyle.css" rel="stylesheet" />
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>
    </head>

    <body>
        <script>
            function nolog() {
                alert("请先进行注册");
            }
        </script>
        <div class="header w">
            <!-- logo -->
            <div class="logo">
                <img src="images/logo.png" alt=""/>
            </div>
            <!-- nav -->
            <div class="nav">
                <ul>
                    <li><a href="index1.aspx" onclick="nolog()">首页</a></li>
                    <li><a href="rank.aspx" onclick="nolog()">排行</a></li>
                    <li><a href="allWorksView" onclick="nolog()">全部作品</a></li>
                </ul>
            </div>
            <!-- search -->
            <div class="search">
                <input type="text" value="输入关键词" />
                <button></button>
            </div>
            <!-- user -->
            <div class="user">
                欢迎注册浩源书屋！
            </div>
        </div>
        <!--form begin-->
        <form id="form1" runat="server">
            <div class="w">
                <div class="re_head">
                    填写注册信息
                </div>
                <div class="re">

                    <div>
                        <div class="inline_block">
                            用户名：
                        </div>
                        <asp:TextBox class="textInput" ID="UserName" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <div class="inline_block">
                            手机号：
                        </div>
                        <asp:TextBox class="textInput" ID="Telephone" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <div class="inline_block">
                            账号：
                        </div>
                        <asp:TextBox class="textInput" ID="UserCode" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <div class="inline_block">
                            密码：
                        </div>
                        <asp:TextBox class="textInput" ID="PassWord" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                    <div>
                        <div class="inline_block"> 确认密码：</div>
                        <asp:TextBox class="textInput" ID="ConfirmPassWord" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                    <div>
                        <div class="sexTitle inline_block">
                            性别：
                        </div>
                        <div class="sexRadio">
                            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="sex" Text="男" Checked="True" />
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/images/man.jpg" />&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="sex" Text="女" />
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/women.jpg" />
                        </div>
                    </div>
                    <div class="but">
                        <asp:Button class="btn" ID="Button1" runat="server" Text="免费注册" ForeColor="White" OnClick="Button1_Click " />
                    </div>
                    <div class="phone">
                        <div class="inline_block">已有账号？</div>
                        <a href="logWeb.aspx">点击登录</a>
                    </div>
                </div>
            </div>
        </form>
        <!-- form end -->
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