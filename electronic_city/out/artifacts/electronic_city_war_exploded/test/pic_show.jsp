<%--
  Created by IntelliJ IDEA.
  User: czm
  Date: 2019/3/5
  Time: 19:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="Java" %>
<html>
<head>
    <meta charset="UTF-8">
    <!--<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>jquery商城商品放大镜插件</title>
    <link href="../index_css/pic_show.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../index_js/jquery.js"></script>
    <script src="../index_js/pic_show.js"></script>
    <style>
        #exzoom {
            width: 400px;
            /*height: 400px;*/
            margin: 0px auto;
        }
    </style>
</head>
<body>
<div class="exzoom top_left" id="exzoom">

    <div class="exzoom_img_box">
        <ul class='exzoom_img_ul'>
            <li><img src="../images/a1.png" /></li>
            <li><img src="../images/a2.png" /></li>
            <li><img src="../images/a3.png" /></li>
            <li><img src="../images/a4.png" /></li>
        </ul>
    </div>

    <div class="exzoom_nav"></div>

    <p class="exzoom_btn"> <a href="javascript:void(0);" class="exzoom_prev_btn"> &lt; </a> <a href="javascript:void(0);" class="exzoom_next_btn"> &gt; </a> </p>
</div>

<script type="text/javascript">
    $("#exzoom").exzoom({
        autoPlay: false,
    });//方法调用，务必在加载完后执行
</script>
</body>
</html>
