<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML >
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'classAdd.jsp' starting page</title>
    <style type="text/css">
     *{margin: 0;padding: 0;}
    	 #mainright{ width: 78%; height: 300px;float: left; }
	        .pic3{ background:url("images/index_icon2.png") no-repeat; margin: 10px 0 0 15px; }
	        .htext{ margin: 10px 0 0 25px; }
	        .righthr{ width: 100%; height: 5px; }
	        .hrtext{ margin-top: 10px;width:760px ; border: 1px solid darkorange; }
	        .tabletext{ margin:30px 0 0  100px;font-size: 14px; line-height: 40px; }
    </style>
  </head>
  <body class="body">
    <div id="mainright">
        <div class="pic3">
            <h4 class="htext">新增分类</h4>
        </div>
        <div class="righthr">
            <hr class="hrtext" />
        </div>
        <div class="div">
	        <form action="GoodsClassServlet" method="post">
	            <table class="tabletext">
	                <tr>
	                    <td>分类名称:</td>
	                    <td><input name="add_class_name" type="text" style="height: 20px;width: 400px;" size="70px"></td>
	                </tr>
	                <tr>
	                    <td></td>
	                    <td><input type="image" src="images/add.PNG"></td>
	                </tr>
	            </table>
	        </form>
        </div>
    </div>
  </body>
</html>
