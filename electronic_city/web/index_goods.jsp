<%--
  Created by IntelliJ IDEA.
  User: czm
  Date: 2019/2/27
  Time: 16:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="Java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<html>
<head>
    <title>盖伦电子城-首页</title>
    <link rel="stylesheet" type="text/css" href="index_css/reset.css">
    <link rel="stylesheet" type="text/css" href="index_css/main.css">
    <script type="text/javascript" src="index_js/jquery.js"></script>
    <script type="text/javascript" src="index_js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="index_js/slide.js"></script>
    <script type="text/javascript" src="index_js/login.js"></script>
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
<!--左导航-->
<div class="center_con clearfix">
    <ul class="subnav fl">
        <li><a href="#model01" class="fruit">手机</a></li>
        <li><a href="#model02" class="fruit">平板</a></li>
        <li><a href="#model03" class="seafood">摄影摄像</a></li>
        <li><a href="#model04" class="meet">智能硬件</a></li>
        <li><a href="#model05" class="egg">娱乐影音</a></li>
        <li><a href="#model06" class="vegetables">电脑周边</a></li>
        <li><a href="#model07" class="ice">手机配件</a></li>
    </ul>
    <div class="slide fl">
        <ul class="slide_pics">
            <li><img src="images/slide1.jpg" alt="幻灯片"></li>
            <li><img src="images/slide2.jpg" alt="幻灯片"></li>
            <li><img src="images/slide3.jpg" alt="幻灯片"></li>
            <li><img src="images/slide4.jpg" alt="幻灯片"></li>
        </ul>
        <div class="prev"></div>
        <div class="next"></div>
        <ul class="points"></ul>
    </div>
    <div class="adv fl">
        <a href="#"><img src="images/adv01.jpg"></a>
        <a href="#"><img src="images/adv02.jpg"></a>
    </div>
</div>
<!--右商品列表-->
<div class="list_model">
    <div class="list_title clearfix">
        <h3 class="fl" id="model01">手机</h3>
        <div class="subtitle fl">
            <span>ipad</span>
            <a href="#"></a>
            <a href="#">华为</a>
            <a href="#">小米</a>
            <a href="#">苹果</a>
        </div>
        <a href="${pageContext.request.contextPath}/Goods.do?opr=query_sort&sort_id=1" class="goods_more fr" id="fruit_more">查看更多 ></a>
    </div>

    <div class="goods_con clearfix">
        <div class="goods_banner fl"><img src="images/phone.jpg" alt="热销手机"></div>
        <ul class="goods_list fl">
            <c:forEach items="${phone_list}" var="phone" >
                <li>
                    <h4><a href="#">${phone.goods_name}</a></h4>
                    <a href="${pageContext.request.contextPath}/Goods.do?opr=query_goods&goods_id=${phone.goods_id}">
                        <img src="images/${phone.pic}">
                    </a>
                    <div class="prize">¥ ${phone.price}</div>
                </li>
            </c:forEach>

        </ul>
    </div>
</div>

<div class="list_model">
    <div class="list_title clearfix">
        <h3 class="fl" id="model02">平板</h3>
        <div class="subtitle fl">
            <span>|</span>
            <a href="#">ipad</a>
            <a href="#">小米</a>
            <a href="#">微软</a>
        </div>
        <a href="${pageContext.request.contextPath}/Goods.do?opr=query_sort&sort_id=2" class="goods_more fr">查看更多 ></a>
    </div>

    <div class="goods_con clearfix">
        <div class="goods_banner fl"><img src="images/banner02.jpg"></div>
        <ul class="goods_list fl">
            <c:forEach items="${pad_list}" var="pad" >
                <li>
                    <h4><a href="#">${pad.goods_name}</a></h4>
                    <a href="${pageContext.request.contextPath}/Goods.do?opr=query_goods&goods_id=${pad.goods_id}">
                        <img src="images/${pad.pic}">
                    </a>
                    <div class="prize">¥ ${pad.price}</div>
                </li>
            </c:forEach>

        </ul>
    </div>
</div>

<div class="list_model">
    <div class="list_title clearfix">
        <h3 class="fl" id="model03">摄影摄像</h3>
        <div class="subtitle fl">
            <span>|</span>
            <a href="#">单反</a>
            <a href="#">微单</a>
            <a href="#">镜头</a>
        </div>
        <a href="${pageContext.request.contextPath}/Goods.do?opr=query_sort&sort_id=3" class="goods_more fr">查看更多 ></a>
    </div>

    <div class="goods_con clearfix">
        <div class="goods_banner fl"><img src="images/banner02.jpg"></div>
        <ul class="goods_list fl">
            <c:forEach items="${photo_list}" var="photo" >
                <li>
                    <h4><a href="#">${photo.goods_name}</a></h4>
                    <a href="${pageContext.request.contextPath}/Goods.do?opr=query_goods&goods_id=${photo.goods_id}">
                        <img src="images/${photo.pic}">
                    </a>
                    <div class="prize">¥ ${photo.price}</div>
                </li>
            </c:forEach>

        </ul>
    </div>
</div>

<div class="list_model">
    <div class="list_title clearfix">
        <h3 class="fl" id="model04">智能硬件</h3>
        <div class="subtitle fl">
            <span>|</span>
            <a href="#">家居</a>
            <a href="#">数码</a>
            <a href="#">路由器</a>
        </div>
        <a href="${pageContext.request.contextPath}/Goods.do?opr=query_sort&sort_id=4" class="goods_more fr">查看更多 ></a>
    </div>

    <div class="goods_con clearfix">
        <div class="goods_banner fl"><img src="images/banner03.jpg"></div>
        <ul class="goods_list fl">
            <c:forEach items="${smart_list}" var="smart" >
                <li>
                    <h4><a href="#">${smart.goods_name}</a></h4>
                    <a href="${pageContext.request.contextPath}/Goods.do?opr=query_goods&goods_id=${smart.goods_id}">
                        <img src="images/${smart.pic}">
                    </a>
                    <div class="prize">¥ ${smart.price}</div>
                </li>
            </c:forEach>

        </ul>
    </div>
</div>

<div class="list_model">
    <div class="list_title clearfix">
        <h3 class="fl" id="model05">娱乐影音</h3>
        <div class="subtitle fl">
            <span>|</span>
            <a href="#">电视</a>
            <a href="#">AI音箱</a>
            <a href="#">投影仪</a>
            <a href="#">显示器</a>
        </div>
        <a href="${pageContext.request.contextPath}/Goods.do?opr=query_sort&sort_id=5" class="goods_more fr">查看更多 ></a>
    </div>

    <div class="goods_con clearfix">
        <div class="goods_banner fl"><img src="images/audio_player.jpg"></div>
        <ul class="goods_list fl">
            <c:forEach items="${happy_list}" var="happy" >
                <li>
                    <h4><a href="#">${happy.goods_name}</a></h4>
                    <a href="${pageContext.request.contextPath}/Goods.do?opr=query_goods&goods_id=${happy.goods_id}">
                        <img src="images/${happy.pic}">
                    </a>
                    <div class="prize">¥ ${happy.price}</div>
                </li>
            </c:forEach>

        </ul>
    </div>
</div>

<div class="list_model">
    <div class="list_title clearfix">
        <h3 class="fl" id="model06">电脑周边</h3>
        <div class="subtitle fl">
            <span>|</span>
            <a href="#">机械键盘</a>
            <a href="#">鼠标</a>
            <a href="#">电脑包</a>
        </div>
        <a href="${pageContext.request.contextPath}/Goods.do?opr=query_sort&sort_id=6" class="goods_more fr">查看更多 ></a>
    </div>

    <div class="goods_con clearfix">
        <div class="goods_banner fl"><img src="images/banner05.jpg"></div>
        <ul class="goods_list fl">
            <c:forEach items="${computer_around_list}" var="computer_around" >
                <li>
                    <h4><a href="#">${computer_around.goods_name}</a></h4>
                    <a href="${pageContext.request.contextPath}/Goods.do?opr=query_goods&goods_id=${computer_around.goods_id}">
                        <img src="images/${computer_around.pic}">
                    </a>
                    <div class="prize">¥ ${computer_around.price}</div>
                </li>
            </c:forEach>

        </ul>
    </div>
</div>

<div class="list_model">
    <div class="list_title clearfix">
        <h3 class="fl" id="model07">手机配件</h3>
        <div class="subtitle fl">
            <span>|</span>
            <a href="#">钢化膜</a>
            <a href="#">耳机</a>
            <a href="#">数据线</a>
        </div>
        <a href="${pageContext.request.contextPath}/Goods.do?opr=query_sort&sort_id=7" class="goods_more fr">查看更多 ></a>
    </div>

    <div class="goods_con clearfix">
        <div class="goods_banner fl"><img src="images/banner06.jpg"></div>
        <ul class="goods_list fl">
            <c:forEach items="${phone_around_list}" var="phone_around" >
                <li>
                    <h4><a href="#">${phone_around.goods_name}</a></h4>
                    <a href="${pageContext.request.contextPath}/Goods.do?opr=query_goods&goods_id=${phone_around.goods_id}">
                        <img src="images/${phone_around.pic}">
                    </a>
                    <div class="prize">¥ ${phone_around.price}</div>
                </li>
            </c:forEach>

        </ul>
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

<!--轮播图-->
<script type="text/javascript">
    BCSlideshow('focuspic');
    var oFruit = document.getElementById('fruit_more');
    var oShownum = document.getElementById('show_count');

    var hasorder = localStorage.getItem('order_finish');

    if(hasorder)
    {
        oShownum.innerHTML = '2';
    }

    oFruit.onclick = function(){
        window.location.href = 'list.html';
    }
</script>
<!--购物车,无效-->
<script type="text/javascript">
    var cart = document.getElementsByClassName('cart_name');
    cart.onclick=function(){
            $("#cart_con").toggleClass('cart_content');
        }


</script>
</body>
</html>

