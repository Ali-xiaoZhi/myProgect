<%--
  Created by IntelliJ IDEA.
  User: czm
  Date: 2019/2/27
  Time: 17:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="Java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>盖伦电子城-登录</title>
    <link rel="stylesheet" type="text/css" href="index_css/reset.css">
    <link rel="stylesheet" type="text/css" href="index_css/main.css">
</head>
<body>
<div class="login_top clearfix">
    <a href="index.jsp" class="login_logo"><img src="images/logo.png"></a>
</div>

<div class="login_form_bg">
    <div class="login_form_wrap clearfix">
        <div class="login_banner fl"></div>
        <div class="slogan fl">日夜兼程 · 急速送达</div>
        <div class="login_form fr">
            <div class="login_title clearfix">
                <h1>用户登录</h1>
                <a href="register.jsp">立即注册</a>
            </div>
            <div class="form_input">
                <form action="<c:url value="/member.do?opr=login"/>" method="post">
                    <input type="text" name="username" class="name_input" placeholder="请输入用户名" value="">
                    <div class="user_error">输入错误</div>
                    <input type="password" name="pwd" class="pass_input" placeholder="请输入密码">

                    <div class="pwd_error">输入错误</div>
                    <div class="more_input clearfix">
                       <!-- <input type="button" name="pwd" class="code_button" value="获取验证码">-->
                        <input type="checkbox" name="" id="checked">
                        <label for="checked">记住用户名</label>
                        <a href="#">忘记密码</a>
                    </div>
                    <input type="submit" name="" value="登录" class="input_submit">
                </form>
                <p align="center" style="color: red">${message}</p>
            </div>
        </div>
    </div>
</div>

<div class="footer no-mp">
    <div class="foot_link">
        <a href="#">关于我们</a>
        <span>|</span>
        <a href="#">联系我们</a>
        <span>|</span>
        <a href="#">招聘人才</a>
        <span>|</span>
        <a href="#">友情链接</a>
    </div>
    <p>CopyRight © 2019 德玛西亚盖伦电子城信息技术有限公司 All Rights Reserved</p>
    <p>电话：010-****888    京ICP备*******8号</p>
</div>

</body>

</html>
