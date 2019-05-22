<%--
  Created by IntelliJ IDEA.
  User: czm
  Date: 2019/2/27
  Time: 17:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="Java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>盖伦电子城-提交订单</title>
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
            <div class="user_link fl">
                <span>|</span>
                <a href="user_center_info.jsp">用户中心</a>
                <span>|</span>
                <a href="shop_cart.jsp">我的购物车</a>
                <span>|</span>
                <a href="user_center_order.jsp">我的订单</a>
            </div>
        </div>
    </div>
</div>

<div class="search_bar clearfix">
    <a href="index.jsp" class="logo fl"><img src="images/logo.png"></a>
    <div class="sub_page_name fl">|&nbsp;&nbsp;&nbsp;&nbsp;提交订单</div>
    <div class="search_con fr">
        <input type="text" class="input_text fl" name="" placeholder="搜索商品">
        <input type="button" class="input_btn fr" name="" value="搜索">
    </div>
</div>

<h3 class="common_title">确认收货地址</h3>

<div class="common_list_con clearfix">
    <dl>
        <dt>寄送到：</dt>
        <dd><input type="radio" name="" checked="">北京市 海淀区 东北旺西路8号中关村软件园 （李思 收） 182****7528</dd>
    </dl>
    <a href="user_center_address.jsp" class="edit_site">编辑收货地址</a>

</div>

<h3 class="common_title">支付方式</h3>
<div class="common_list_con clearfix">
    <div class="pay_style_con clearfix">
        <input type="radio" name="pay_style" checked id="arrive_pay">
        <label class="cash" for="arrive_pay">货到付款</label>
        <input type="radio" name="pay_style" id="weixin_pay">
        <label class="weixin" for="weixin_pay">微信支付</label>
        <input type="radio" name="pay_style" id="zhifubao_pay">
        <label class="zhifubao" for="zhifubao_pay"></label>
        <input type="radio" name="pay_style" id="bank_pay">
        <label class="bank" for="bank_pay">银行卡支付</label>
    </div>
</div>

<h3 class="common_title">商品列表</h3>

<div class="common_list_con clearfix">
    <ul class="goods_list_th clearfix">
        <li class="col01">商品名称</li>
        <li class="col02">商品单位</li>
        <li class="col03">商品价格</li>
        <li class="col04">数量</li>
        <li class="col05">小计</li>
    </ul>
    <ul class="goods_list_td clearfix">
        <li class="col01">1</li>
        <li class="col02"><img src="images/goods/goods012.jpg"></li>
        <li class="col03">奇异果</li>
        <li class="col04">500g</li>
        <li class="col05">25.80元</li>
        <li class="col06">1</li>
        <li class="col07">25.80元</li>
    </ul>
    <ul class="goods_list_td clearfix">
        <li class="col01">2</li>
        <li class="col02"><img src="images/goods/goods003.jpg"></li>
        <li class="col03">大兴大棚草莓</li>
        <li class="col04">500g</li>
        <li class="col05">16.80元</li>
        <li class="col06">1</li>
        <li class="col07">16.80元</li>
    </ul>
</div>

<h3 class="common_title">总金额结算</h3>

<div class="common_list_con clearfix">
    <div class="settle_con">
        <div class="total_goods_count">共<em>2</em>件商品，总金额<b>42.60元</b></div>
        <div class="transit">运费：<b>10元</b></div>
        <div class="total_pay">实付款：<b>52.60元</b></div>
    </div>
</div>

<div class="order_submit clearfix">
    <a href="javascript:" id="order_btn">提交订单</a>
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

<div class="popup_con">
    <div class="popup">
        <p>订单提交成功！</p>
    </div>

    <div class="mask"></div>
</div>
<script type="text/javascript" src="index_js/jquery.js"></script>
<script type="text/javascript">
    $('#order_btn').click(function() {
        localStorage.setItem('order_finish',2);

        $('.popup_con').fadeIn('fast', function() {

            setTimeout(function(){
                $('.popup_con').fadeOut('fast',function(){
                    window.location.href = 'index.html';
                });
            },3000)

        });
    });
</script>
</body>

</html>
