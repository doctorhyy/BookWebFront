<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="logWeb.aspx.cs" Inherits="finalHomeWork.css.logWEb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>浩源的书屋-登录界面</title>
    <link href="css/common.css" rel="stylesheet" />
    <link href="css/logStyle.css" rel="stylesheet" />
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
                欢迎注册浩源书屋！
            </div>
        </div>    
        <div class="w">
                <div class="re_head">
                    填写登录信息
                </div>
                <div class="re">

                    <div class="username">
                        <div class="inline_block">
                            账号：
                        </div>
                        <asp:TextBox class="textInput" ID="userCode" runat="server"></asp:TextBox>
                    </div>             
                    <div class="password">
                        <div class="inline_block">
                            密码：
                        </div>
                        <asp:TextBox class="textInput" ID="passWord" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="but">
                        <asp:Button class="btn" ID="Button1" runat="server" Text="立即登录" ForeColor="White" OnClick="Button1_Click" OnClientClick="this.disabled=true;" UseSubmitBehavior="False"/>
                    </div>
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
