<%--
  Created by IntelliJ IDEA.
  User: czm
  Date: 2019/3/8
  Time: 16:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="Java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<html>
<head>
    <title>商品查找展示页</title>
    <link rel="stylesheet" type="text/css" href="index_css/reset.css">
    <link rel="stylesheet" type="text/css" href="index_css/main.css">
    <script type="text/javascript" src="index_js/jquery.js"></script>

</head>
<body>
<div class="header_con">
    <div class="header">
        <div class="welcome fl">欢迎来到盖伦电子城!</div>
        <div class="fr">

            <c:if test="${member==null}">
                <div class="login_btn fl">
                    <a href="login.jsp">登录</a>
                    <span>|</span>
                    <a href="register.jsp">注册</a>
                </div>
            </c:if>
            <c:if test="${member!=null}">
                <div class="login_info fl">
                    欢迎您：<em>${member.member_nick}</em>
                </div>

                <div class="user_link fl">
                    <span>|</span>
                    <a href="user_center_info.jsp">用户中心</a>
                    <span>|</span>
                    <a href="shop_cart.jsp">我的购物车</a>
                    <span>|</span>
                    <a href="user_center_order.jsp">我的订单</a>
                </div>
            </c:if>
        </div>
    </div>
</div>

<div class="search_bar clearfix">
    <a href="index.jsp" class="logo fl"><img src="images/logo.png"></a>
    <div class="search_con fl">
        <input type="text" class="input_text fl" name="" placeholder="搜索商品">
        <input type="button" class="input_btn fr" name="" value="搜索">
    </div>
    <div class="guest_cart fr">
        <a href="#" class="cart_name fl">我的购物车</a>
        <div class="goods_count fl" id="show_count">1</div>
    </div>
    <div id="cart_con ">

    </div>
</div>
<!--上导航-->
<div class="navbar_con">
    <div class="navbar">
        <h1 class="fl">全部商品分类</h1>
        <ul class="navlist fl">
            <li><a href="index.jsp">首页</a></li>
            <li class="interval">|</li>
            <li><a href="${pageContext.request.contextPath}/Goods.do?opr=query_sort&sort_id=1">手机</a></li>
            <li class="interval">|</li>
            <li><a href="${pageContext.request.contextPath}/Goods.do?opr=query_sort&sort_id=2">平板</a></li>
            <li class="interval">|</li>
            <li><a href="${pageContext.request.contextPath}/Goods.do?opr=query_sort&sort_id=3">摄影摄像</a></li>
            <li class="interval">|</li>
            <li><a href="${pageContext.request.contextPath}/Goods.do?opr=query_sort&sort_id=4">智能硬件</a></li>
            <li class="interval">|</li>
            <li><a href="${pageContext.request.contextPath}/Goods.do?opr=query_sort&sort_id=5">娱乐影音</a></li>
            <li class="interval">|</li>
            <li><a href="${pageContext.request.contextPath}/Goods.do?opr=query_sort&sort_id=6">电脑周边</a></li>
            <li class="interval">|</li>
            <li><a href="${pageContext.request.contextPath}/Goods.do?opr=query_sort&sort_id=7">手机配件</a></li>
        </ul>
    </div>
</div>

<div class="goods_con clearfix" style="margin: 0 200px;">
    <ul class="goods_list fl">
        <c:forEach items="${goods_list}" var="goods" varStatus="status">
        <li>
            <h4><a href="#">${goods.goods_name}</a></h4>
            <a href="${pageContext.request.contextPath}/Goods.do?opr=query_goods&goods_id=${goods.goods_id}">
                <img src="images/${goods.pic}">
            </a>
            <div class="prize">¥ ${goods.price}</div>
        </li>
        <c:if test="${(status.index+1)%4==0}"></ul>
</div><div class="goods_con clearfix" style="margin: 0 200px;">
    <ul class="goods_list fl">

        </c:if>
        </c:forEach>

    </ul>
</div>
</body>
</html>
