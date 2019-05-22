<%--
  Created by IntelliJ IDEA.
  User: czm
  Date: 2019/3/1
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="Java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <script type="text/javascript" src="index_js/jquery.js"></script>
    <link rel="stylesheet" type="text/css" href="index_css/detail_css.css">
    <link rel="stylesheet" type="text/css" href="index_css/reset.css">
    <link rel="stylesheet" type="text/css" href="index_css/main.css">
    <link href="index_css/pic_show.css" rel="stylesheet" type="text/css" />
    <script src="index_js/pic_show.js"></script>
    <title>商品详情页</title>
    <style>
        #exzoom {
            width: 400px;
            /*height: 400px;*/
            margin: 0 100px;
        }
    </style>
</head>
<body>
<!--头部div-->
<div>
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
        <div class="search_con fl">
            <input type="text" class="input_text fl" name="" placeholder="搜索商品">
            <input type="button" class="input_btn fr" name="" value="搜索">
        </div>
        <div class="guest_cart fr">
            <a href="#" class="cart_name fl">我的购物车</a>
            <div class="goods_count fl" id="show_count">1</div>
        </div>
    </div>

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
</div>

<!--内容div-->
<div class="biggest">
    <!--上div-->
    <div class="top">
        <%--左图片div--%>
            <div class="exzoom top_left" id="exzoom">

                <div class="exzoom_img_box">
                    <ul class='exzoom_img_ul'>
                        <c:forEach items="${pic_list}" var="pic">
                            <li><img src="images/${pic.purl}" /></li>
                        </c:forEach>
                    </ul>
                </div>

                <div class="exzoom_nav"></div>

                <p class="exzoom_btn"> <a href="javascript:void(0);" class="exzoom_prev_btn"> &lt; </a> <a href="javascript:void(0);" class="exzoom_next_btn"> &gt; </a> </p>
            </div>
        <%--右商品选择div--%>
        <div class="top_right">
            <div class="tb-property">
                <div class="tb-wrap">
                    <%--标题/选择--%>
                    <div class="tb-detail-hd">


                        <h1 class="title">
                            ${goods.goods_name}
                        </h1>


                        <p class="subtitle">

                            ${goods.goods_subtitle}
                        </p>
                    </div>
                    <!--价格-->
                    <div class="tm-fcs-panel">
                        <table class="tb-metatit">
                            <tr class="tm-price-panel" id="J_StrPriceModBox">
                                <td style="padding-right: 20px">价格</td>
                                <td style="font-size:x-large;"><span class="red_num">¥${goods.price}</span></td>
                            </tr>

                        </table>
                    </div>
                    <!--地址信息-->
                    <div class="">
                        <table>
                            <tr class="tm-delivery-panel tb-metatit" id="J_RSPostageCont">
                                <td class="">运费</td>
                                <td class="bk">&nbsp;&nbsp;&nbsp;&nbsp;<em>免邮</em></td></tr>
                        </table>
                        <!--销售信息-->
                    </div>
                    <div class="tm-ind-panel">
                        <table >
                            <tr class="info_tr">
                                <td class="">月销量</td>
                                <td class="tm-ind-item tm-ind-sellCount " ><span class="red_num">${goods.sale}</span></td>
                                <td class="tm-ind-item">|</td>
                                <td class="">累计评价</td>
                                <td class="tm-ind-item tm-ind-reviewCount"><span class="red_num">1000</span></td>
                                <td class="tm-ind-item">|</td>
                                <td class="">送盖币</td>
                                <td class="tm-ind-item tm-count"><span class="red_num">${Math.round(goods.price/100)}</span></td>
                            </tr>
                        </table>

                    </div>
                    <!--购买数量-->
                    <div class="tb-meta tb-metatit">
                        <div class="tb-sku">
                            <table>
                                <tr class="tb-amount tm-clear" style="font-size: small;color:gray;">
                                    <td  class="" style="padding-right: 20px;">数量</td>
                                    <td id="J_Amount" >
                                            <span class="tb-amount-widget mui-amount-wrap">
                                                <input id="num" type="text" style=" height:30px;width:50px; text-align:center" value="1" name="buy_num">
                                                <input id="cut" type="button"  value=" - "/>
                                                <input id="add" type="button"  value=" + "/>
                                                <span class="mui-amount-unit">件</span>
                                            </span>
                                        <em id="J_EmStock" class="tb-hidden">库存<span class="red_num">${goods.inventory}</span>件</em>
                                        <span id='J_StockTips'></span>
                                    </td>
                                </tr>

                            </table>

                            <!--购买or加入购物车-->
                            <div class="tb-action tb-metatit">
                                <div class="to_buy click_buttom">
                                    <input type="button" id="tobuy" value="立即购买"/>
                                </div>
                                <div class="to_cart click_buttom">
                                    <input type="button" id="tocart" value="加入购物车">
                                </div>

                            </div>
                        </div>

                    </div>
                    <!--其他信息-->
                    <div>
                        <table class="service">
                            <tr class="tm-clear tb-metatit">
                                <td>服务承诺</td>
                                <td class="bk">正品保证</td>
                                <td class="bk">极速退款</td>
                                <td class="bk">七天无理由退换</td>
                            </tr>
                        </table>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!--中div(参数/评价)-->
    <div class="content">
        <!--参数or评价ajax-->
        <div>

        </div>
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
<!--数量加减js-->
<script type="text/javascript">
    $(function(){
        var price=0;
        $("#cut").click(function(){
            price=$("#num").val();
            if($("#num").val()==1){
                return
            }
            else{
                price--;
            }
            $("#num").val(price);
        })
        $("#add").click(function(){
            price=$("#num").val();
            price++;
            $("#num").val(price);
        })


    })
</script>
<!--按钮点击(购买/加购物)-->

<script type="text/javascript">
    $(function(){
        $("#tobuy").click(function () {
            var num1 = $("#num").val();
            location.href="tobuy.do?num="+num1;

        });
        $("#tocart").click(function () {
            var num = $("#num").val();
            location.href="tocart.do?num="+num;

        })
    })
</script>
<!--图片js-->
<script type="text/javascript">
    $("#exzoom").exzoom({
        autoPlay: false,
    });//方法调用，务必在加载完后执行
</script>
</html>
