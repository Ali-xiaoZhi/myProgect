<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
int pageIndex=0;
int good_defailPages=0;
if(request.getSession().getAttribute("pageIndex")!=null){
	pageIndex=Integer.parseInt(request.getSession().getAttribute("pageIndex").toString());
}
if(request.getSession().getAttribute("good_defailPages")!=null){
	good_defailPages=Integer.parseInt(request.getSession().getAttribute("good_defailPages").toString());
}
%>
<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'goodDetailManage.jsp' starting page</title>
    <style type="text/css">
    *{margin: 0;padding: 0;font: 13px "宋体";}
    .div{width: 740px;}
    .body{width: 780px;height: 280px;}
    	.table{border-top: 2px solid sandybrown; border-bottom: 2px solid sandybrown ;margin: 10px 0 0 20px;text-align: center;}
    	.tr{background-color:blanchedalmond;height: 25px; }
    	.trs{height: 95px;}
    	td{width: 105px ;border-top: 1px solid sandybrown;border-left: 1px solid sandybrown; }
	    	.pic3{background:url("images/index_icon2.png") no-repeat; margin: 10px 0 0 15px; }
	        .htext{ margin: 10px 0 0 25px;}
	        .righthr{ width: 100%; height: 5px; }
	        .hrtext{ margin-top: 10px; border: 1px solid darkorange; }
    </style>
        <script type="text/javascript">
    	function upPage() {
			var pageIndex=<%=pageIndex%>;
			pageIndex--;
			if(pageIndex==0){
				pageIndex=1;
			}
			window.location.href="GoodsDetailServlet?pageIndex="+pageIndex;
		}
    	function downPage() {
			var pageIndex=<%=pageIndex%>;
			var good_defailPages=<%=good_defailPages%>;
			pageIndex++;
			if(pageIndex>good_defailPages){
				pageIndex=good_defailPages;
			}
			window.location.href="GoodsDetailServlet?pageIndex="+pageIndex;
		}
		function chang() {
			var pageIndex=document.getElementById("sel").value;
			window.location.href="GoodsDetailServlet?pageIndex="+pageIndex;
		}
    </script>
  </head>
  <body class="body">
  		<div class="pic3">
            <h4 class="htext">管理首页</h4>
        </div>
        <div class="righthr">
            <hr class="hrtext" />
        </div>
    	<div class="div">
    <table class="table">
	    	<tr class="tr">
	    		<td class="td1" style="border-top:0;">商品编号</td>
	    		<td class="td2" style="border-top:0;">商品名称</td>
	    		<td class="td3" style="border-top:0;">所属分别</td>
	    		<td class="td4" style="border-top:0;">价格</td>
	    		<td class="td5" style="border-top:0;">剩余数量</td>
	    		<td class="td6" style="border-top:0;">标题</td>
	    		<td class="td7" style="border-top:0;">描述</td>
	    		<td class="td8" style="border-top:0;">操作</td>
	    	</tr >
	    	<c:forEach items="${good_defailList}" var="g">
	    		<tr class="trs">
		    		<td>${g.goods_id}</td>
		    		<td>${g.goods_name}</td>
		    		<td>${g.sort_id}</td>
		    		<td>${g.price}</td>
		    		<td>${g.inventory}</td>
		    		<td>${g.goods_subtitle}</td>
		    		<td>${g.goods_detail}</td>
		    		<td>
			    		<a href="jsp/goodDetailModify.jsp?updateId=${g.goods_id}&pageIndex=<%=pageIndex%>">修改</a>&nbsp;
			    		<a href="GoodsDetailServlet?deleteId=${g.goods_id }&pageIndex=<%=pageIndex%>">删除</a>
		    		</td>
		    	</tr>
	    	</c:forEach>
    </table>
    	<div style="float: right;margin-right: 20px;">
		<label>第<%=pageIndex %>页</label>
		<label><a href="GoodsDetailServlet?pageIndex=1">首页</a></label>
		<label><a href="javascript:;"onclick="upPage()">上一页</a></label>
		<%-- <label>
		<% for(int i=1;i<=good_defailPages;i++){%>
			<a href="GooddefailServlet?pageIndex=<%=i %>"><%=i %></a>
		<% }%>
		</label>
		<label>
			<select id="sel" onchange="chang()">
				<% for(int i=1;i<=good_defailPages;i++){%>
					<%if(i==pageIndex){ %>
						<option value="<%=i %>" selected="selected"><%=i %></option>
					<%}else{ %>
						<option value="<%=i %>"><%=i %></option>
					<% }%>
				<% }%>
			</select>
		</label> --%>
		<label><a href="javascript:;"onclick="downPage()">下一页</a></label>
		<label><a href="GoodsDetailServlet?pageIndex=<%=good_defailPages %>">尾页</a></label>
		<label>
		<% for(int i=1;i<=good_defailPages;i++){%>
			<a href="GoodsDetailServlet?pageIndex=<%=i %>">[<%=i %>]</a>
		<% }%>
		</label>
		<label>共<%=good_defailPages %>页</label>
	</div>
    	</div>
  </body>
</html>
