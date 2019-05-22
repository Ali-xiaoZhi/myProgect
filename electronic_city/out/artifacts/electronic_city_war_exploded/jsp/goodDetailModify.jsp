<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	int updateId=0;
	if(request.getParameter("updateId")!=null){
		updateId=Integer.parseInt(request.getParameter("updateId").toString());
	}
	int pageIndex=0;
	if(request.getParameter("pageIndex")!=null){
		pageIndex=Integer.parseInt(request.getParameter("pageIndex").toString());
	}
	request.getSession().setAttribute("updateId", updateId);
%>
<!DOCTYPE html>
<html>
<head>
    <title>修改订单</title>
     <base href="<%=basePath%>">
    <meta charset="utf-8">
    <style type="text/css">
        *{margin: 0; padding: 0; }
        .main{ width: 780px; height: 280px; float: left;margin-top: 10px; }
        .main_right{ width: 770px; height: 270px; float: left;}
        .main_right dl{ height: 24px; border-bottom: 2px solid #fc883b; }
        .main_right dl dt{ background-image: url("../images/bg.png"); background-position: -236px -107px; width: 13px; height: 14px;  float: left; margin-right: 6px; }
        .main_right dl dd{ line-height: 14px; font-weight: bold; font-size: 15px; }
        .main_right form table{ margin-left: 115px; }
        .main_right form table tr{ height: 34px;width: 760px; }
        #tr{ height: 16px; }
        .td1{ font-size: 13px;  text-align: right; }
        .input{ width: 400px; height: 20px; }
        .submit{ background-color: #5e77aa; color: white; width: 44px; height: 24px; border: 1px solid black; }
        .pic{ background:url("../images/index_icon2.png") no-repeat;height: 5px;width: 5px;}
    </style>
</head>
<body>
<section class="main">
    <section class="main_right">
        <dl>
            <dt class="pic"></dt>
            <dd>&nbsp;&nbsp;&nbsp;修改商品详细信息</dd>
        </dl>
        <form action="GoodsDetailServlet" method="post" enctype="multipart/form-data">
	        <input type="text" style="display:none" name="updateId"  id="updateId" value="<%=updateId%>"/>
	        <input type="text" style="display:none"  name="pageIndex"  id="pageIndex"  value="<%=pageIndex%>"/>
            <table>
                <tr id="tr"></tr>
                <c:forEach items="${good_defailList}" var="g">
	            	<c:if test="${g.goods_id==sessionScope.updateId}">
		                <tr>
		                    <td class="td1">商品名称：</td>
		                    <td><label><input value="${g.goods_name }" class="input" type="text"  name="c_name" ></label></td>
		                </tr>
		                <tr>
		                    <td class="td1">所属分类：</td>
		                    <td><label><input value="${g.sort_id}" class="input" name="good_name" type="text" ></label></td>
		                </tr>
		                <tr>
		                    <td class="td1">价格：</td>
		                    <td><label><input value="${g.price }" class="input" name="sale_price" type="text"  ></label></td>
		                </tr>
		                <tr>
		                    <td class="td1">剩余数量：</td>
		                    <td><label><input value="${g.inventory }" class="input" name="count_sale" type="number" ></label></td>
		                </tr>
		            </c:if>
	            </c:forEach>
                <tr>
                    <td class="td1">描述：</td>
                    <td><label><input value="${g.goods_detail}" class="input" name="count_sale" type="text" ></label></td>
                </tr>
                <tr>
		              <td class="td1">标题：</td>
		              <td><label><input value="${g.goods_subtitle }" class="input" name="count_sale" type="text" ></label></td>
		        </tr>
                <tr>
                    <td></td>
                    <td><label><input class="submit" type="submit" value="修改" id="modify"></label></td>
                </tr>
                <tr>
                <td colspan="2">
                 <div id="pro" style="display: none">
                    
                    <p><progress max="100" value="0" id="prog"></progress></p>
                </div>
                </td>
                </tr>
            </table>
        </form>
    </section>
</section>
</body>
<script type="text/javascript">
    document.getElementById("modify").onclick=function(){
        document.getElementById("pro").style.display="block";
        setInterval(setProgs, 200);
    };
    function setProgs(){
        var t=document.getElementById("prog").value;
        document.getElementById("prog").value=t+4;
    }
</script>
</html>