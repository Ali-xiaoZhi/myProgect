<%--
  Created by IntelliJ IDEA.
  User: czm
  Date: 2019/2/27
  Time: 16:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="Java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>个人中心</title>
    <link rel="stylesheet" type="text/css" href="index_css/reset.css">
    <link rel="stylesheet" type="text/css" href="index_css/main.css">
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

<div class="search_bar clearfix" style="border-bottom: 2px solid #39a93e;">
    <a href="index.jsp" class="logo fl"><img src="images/logo.png" alt="index"></a>
    <div class="sub_page_name fl">|&nbsp;&nbsp;&nbsp;&nbsp;用户中心</div>
</div>

<div class="main_con clearfix">
    <div class="right_content clearfix">
        <div class="info_con clearfix">
            <h3 class="common_title2">修改个人信息</h3>
            <form action="javascript:if(confirm('确定提交?')){location='/member.do?opr=update&member_id=${member.member_id}'}">
                <table class="user_info_list" style="width: 980px;font-size: small">
                    <tr><td style="text-align: right"><span>昵称：</span></td><td><input style="height: 25px" type="text" required value="${member.member_nick}" ></td></tr>
                    <tr><td style="text-align: right"><span>联系方式：</span></td><td><input style="height: 25px" type="text" required value="${member.phone}" ></td></tr>
                    <tr><td style="text-align: right"><span>邮箱：</span></td><td><input style="height: 25px" type="text" required value="${member.email }"></td></tr>
                    <tr><td style="text-align: right"><span>收货地址：</span></td><td><input style="width: 500px" type="text" required value="${member.address }"></td></tr>
                    <tr><td></td><td><input style="width: 70px;height: 30px;" type="submit" value="提交修改"/></td></tr>

                </table>
            </form>

        </div>

        <%--<h3 class="common_title2">最近浏览</h3>
        <div class="has_view_list">
            <ul class="goods_type_list clearfix">
                <li>
                    <a href="goods_detail.jsp"><img src="images/goods/goods003.jpg"></a>
                    <h4><a href="goods_detail.jsp">大兴大棚草莓</a></h4>
                    <div class="operate">
                        <span class="prize">￥16.80</span>
                        <span class="unit">16.80/500g</span>
                        <a href="#" class="add_goods" title="加入购物车"></a>
                    </div>
                </li>

                <li>
                    <a href="#"><img src="images/goods/goods004.jpg"></a>
                    <h4><a href="#">吐鲁番梨光杏</a></h4>
                    <div class="operate">
                        <span class="prize">￥5.50</span>
                        <span class="unit">5.50/500g</span>
                        <a href="#" class="add_goods" title="加入购物车"></a>
                    </div>
                </li>

                <li>
                    <a href="#"><img src="images/goods/goods005.jpg"></a>
                    <h4><a href="#">黄肉桃</a></h4>
                    <div class="operate">
                        <span class="prize">￥10.00</span>
                        <span class="unit">10.00/500g</span>
                        <a href="#" class="add_goods" title="加入购物车"></a>
                    </div>
                </li>

                <li>
                    <a href="#"><img src="images/goods/goods006.jpg"></a>
                    <h4><a href="#">进口西梅</a></h4>
                    <div class="operate">
                        <span class="prize">￥28.80</span>
                        <span class="unit">28.8/500g</span>
                        <a href="#" class="add_goods" title="加入购物车"></a>
                    </div>
                </li>

                <li>
                    <a href="#"><img src="images/goods/goods007.jpg"></a>
                    <h4><a href="#">香梨</a></h4>
                    <div class="operate">
                        <span class="prize">￥6.45</span>
                        <span class="unit">6.45/500g</span>
                        <a href="#" class="add_goods" title="加入购物车"></a>
                    </div>
                </li>
            </ul>
        </div>--%>
    </div>
</div>



<div class="footer">
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
