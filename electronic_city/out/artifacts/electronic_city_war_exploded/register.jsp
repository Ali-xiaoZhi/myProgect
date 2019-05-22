<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="Java" %>
<%--
  Created by IntelliJ IDEA.
  User: czm
  Date: 2019/2/27
  Time: 17:33
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>天天生鲜-注册</title>
    <link rel="stylesheet" type="text/css" href="index_css/reset.css">
    <link rel="stylesheet" type="text/css" href="index_css/main.css">
    <script type="text/javascript" src="index_js/jquery.js"></script>
    <script type="text/javascript" src="index_js/register.js"></script>
</head>
<body>
<div class="register_con">
    <div class="l_con fl">
        <a class="reg_logo" href="index.jsp"><img src="images/logo.png"></a>
        <div class="reg_slogan">足不出户  ·  享受科技生活</div>
        <div class="reg_banner"></div>
    </div>

    <div class="r_con fr">
        <div class="reg_title clearfix">
            <h1>用户注册</h1>
            <a href="login.jsp">登录</a>
        </div>
        <div class="reg_form clearfix">
            <form action="<c:url value="/member.do?opr=register"/>" method="post">
                <ul>
                    <li>
                        <label for="user_name">用户名:</label>
                        <input type="text" name="user_name" id="user_name">
                        <span class="error_tip">提示信息</span>
                    </li>
                    <li>
                        <label for="pwd">密码:</label>
                        <input type="password" name="pwd" id="pwd">
                        <span class="error_tip">提示信息</span>
                    </li>
                    <li>
                        <label for="cpwd">确认密码:</label>
                        <input type="password" name="cpwd" id="cpwd">
                        <span class="error_tip">提示信息</span>
                    </li>
                    <li>
                        <label for="phone">手机号:</label>
                        <input type="text" name="phone" id="phone">
                        <span class="error_tip">提示信息</span>
                    </li>
                    <li>
                        <label for="email">邮箱:</label>
                        <input type="text" name="email" id="email">
                        <span class="error_tip">提示信息</span>
                    </li>
                    <li class="agreement">
                        <input type="checkbox" name="allow" id="allow" checked="checked">
                        <label for="allow">同意”德玛用户使用协议“</label>
                        <span class="error_tip2">提示信息</span>
                    </li>
                    <li class="reg_sub">
                        <input type="submit" value="注 册" name="">
                    </li>
                </ul>
            </form>
            <p align="center" style="color: red">${message}</p>
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
