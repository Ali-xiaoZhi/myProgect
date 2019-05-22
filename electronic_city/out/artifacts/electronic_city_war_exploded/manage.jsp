<%@ page contentType="text/html;charset=UTF-8" language="Java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>盖伦电子后台</title>
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
        }

        #container {
            width: 1024px;
            margin: 0 auto;
        }

        #header {
            width: 100%;
            height: 73px;
            background: url("images/logo.png") no-repeat;
        }

        .navmenu {
            width: 100%;
            height: 30px;
        }

        .navmenu ul {
            margin-left: 250px;
        }

        .navmenu ul li {
            list-style: none;
            float: left;
            text-align: center;
            padding-top: 7px;
            font: 17px bold;
            background: url("images/background3.PNG") no-repeat;
            width: 95px;
            height: 32px;
        }

        .headerA {
            font: 17px bold;
            color: black;
        }

        .pic1 {
            background: url("images/background4.PNG") no-repeat;
            width: 95px;
            height: 32px;
        }

        .pic2 {
            background: url("images/background3.PNG") no-repeat;
            width: 95px;
            height: 32px;
        }

        .navtittle {
            width: 100%;
            height: 30px;
            background-color: darkorange;
        }

        .navhello {
            font: 13px "宋体";
            padding-top: 10px;
            text-align: right;
            color: white;
        }

        #main {
            width: 100%;
            height: 350px;
        }

        #maintop {
            width: 100%;
            height: 30px;
        }

        .maintoptext {
            font-size: 13px;
            line-height: 30px;
            margin-left: 30px;
        }

        a {
            text-decoration: none;
        }

        #mainright {
            margin-left: 100px;
            width: 78%;
            height: 350px;
            float: left;
        }

        .pic3 {
            background: url("images/index_icon2.png") no-repeat;
            margin: 10px 0 0 15px;
        }

        .htext {
            margin: 10px 0 0 25px;
        }

        .righthr {
            width: 100%;
            height: 5px;
        }

        .hrtext {
            margin-top: 10px;
            border: 1px solid darkorange;
        }

        .maintext {
            text-align: center;
            font-size: 13px;
            margin-top: 80px;
        }

        #footer {
            clear: both;
            width: 100%;
            height: 50px;
        }

        .footerptext {
            text-align: center;
            font-size: 14px;
            color: lightslategrey;
            padding-top: 5px;
        }
    </style>
    <script type="text/javascript" src="js/jquery-1.11.0.js"></script>
</head>

	<script type="text/javascript">
		function moveMouse(element) {
			element.style.backgroundImage = 'url(images/background4.PNG)';
		}
		function outMouse(element) {
			element.style.backgroundImage = 'url(images/background3.PNG)';
		}
		function getTime() {
			var date = new Date();
			var yy = date.getFullYear();
			var MM = date.getMonth() + 1;
			var dd = date.getDate();
			var hh = date.getHours();
			var mm = date.getMinutes();
			var ss = date.getSeconds();
			document.getElementById("navhello").innerHTML = "欢迎管理员回来,现在是" + yy
					+ "年" + MM + "月" + dd + "日  " + hh + ":" + mm + ":" + ss
					+ "" + ",欢迎回到管理后台~";
		}
		setInterval("getTime()", 200);
	</script>
</head>
<body id="container">
	<header>
	    <div id="header"></div>
	    <div>
	        <nav class="navmenu">
	             <ul>
	              <li onmouseover="moveMouse(this)"
						onmouseout="outMouse(this)"><a href="jsp/index.jsp"
						target="backstageIframe" class="headerA"> 首&nbsp;&nbsp;页</a></li>
	              <li onmouseover="moveMouse(this)"
						onmouseout="outMouse(this)"><a href="RegisterServlet"
						target="backstageIframe" class="headerA"> 用&nbsp;&nbsp;户</a></li>
	              <li onmouseover="moveMouse(this)"
						onmouseout="outMouse(this)"><a href="GoodsClassServlet"
						target="backstageIframe" class="headerA">商品分类</a> </li>
	              <li onmouseover="moveMouse(this)"
						onmouseout="outMouse(this)"><a href="OrderServlet"
						target="backstageIframe" class="headerA"> 订&nbsp;&nbsp;单</a></li>
	              <li onmouseover="moveMouse(this)"
						onmouseout="outMouse(this)"><a href="GooddefailServlet"
						target="backstageIframe" class="headerA"> 商品详细</a></li>
	            
	            </ul> 
	        </nav>
	    </div>
	        <div class="navtittle">
			<p id="navhello" class="navhello"></p>
		</div>
	</header>
	<div id="main">
	    <div id="maintop">
	        <p class="maintoptext"> 您现在的位置: <a href="index.jsp">盖伦电子城</a> 管理后台</p>
	    </div>
	
	    <div id="mainright">
	        <div class="pic3">
	            <h4 class="htext">管理首页</h4>
	        </div>
	        <div class="righthr">
	            <hr class="hrtext" />
	        </div>
		<form action="LoginServlet" method="post">
	        <div class="maintext">
	            <p style="font-size: 26px">欢迎登陆盖伦后台系统</p>
		            <table style="width: 800px;margin-top: 30px">
		                <tr style="text-align: center;height: 25px">
		                    <td>用户名:<input name="user" type="text"></td>
		                

						<tr style="height: 25px">
		                    <td>密&nbsp;&nbsp;码:<input name="password"
								type="password"></td>
		                </tr>
		                <tr style="height: 25px">
		                    <td><input type="image"
								src="images/login.PNG"></td>
		                </tr>
		            </table>
	        </div>
		</form>   
	    </div>
	</div>
	<div id="footer">
	    <hr />
	<p class="footerptext">Copyright &copy; 2019 厦门新生代 All Right Reserved. 厦ICP证1000001号</p>
</div>

</body>

</html>