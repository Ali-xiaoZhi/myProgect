<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
int pageIndex=0;
int updateId=0;
if(request.getParameter("updateId")!=null){
	updateId=Integer.parseInt(request.getParameter("updateId").toString());
}
if(request.getParameter("pageIndex")!=null){
	pageIndex=Integer.parseInt(request.getParameter("pageIndex").toString());
}
request.getSession().setAttribute("updateId", updateId);
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
            <h4 class="htext">修改分类</h4>
        </div>
        <div class="righthr">
            <hr class="hrtext" />
        </div>
        <div class="div">
	        <form action="GoodsClassServlet" method="post">
			  	<input type="text" style="display: none;" name="updateId" value="<%=updateId%>">
				<input type="text" style="display: none;" name="pageIndex" value="<%=pageIndex%>">
	            <table class="tabletext">
	                <tr>
	                    <td>分类名称:</td>
	                    <c:forEach items="${goodsclassList}" var="list">
		            		<c:if test="${list.sort_id==sessionScope.updateId}">
			                    <td>
			                        <input value="${list.sort_name}" name="class_name" type="text" style="height: 20px;width: 400px;" size="70px">
			                    </td>
				            </c:if>
		            	</c:forEach>
	                </tr>
	                <tr>
	                    <td></td>
	                    <td><input type="image" src="images/modify.png"/></td>
	                </tr>
	            </table>
            </form>
        </div>
    </div>
  </body>
</html>
