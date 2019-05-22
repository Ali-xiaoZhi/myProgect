<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
int pageIndex=0;
int goodclassPages=0;
if(request.getSession().getAttribute("pageIndex")!=null){
	pageIndex=Integer.parseInt(request.getSession().getAttribute("pageIndex").toString());
}
if(request.getSession().getAttribute("goodclassPages")!=null){
	goodclassPages=Integer.parseInt(request.getSession().getAttribute("goodclassPages").toString());
}
%>
<!DOCTYPE HTML>
<html>
  <head>
    
    <title>My JSP 'classManage.jsp' starting page</title>
    <style type="text/css">
	    *{margin: 0;padding: 0;}
	    .body{width: 780px;height: 280px;}
	    	.maintext{width: 740px; margin: 10px 0 0 20px;border-bottom: 2px solid sandybrown;border-top: 2px solid sandybrown;text-align: center; }
	        .tr{background-color: blanchedalmond;}
	        td{border-top: 1px solid sandybrown ;height: 25px; padding-top: 5px;font: 13px "宋体";}
			.trs{ text-align: center; }
	        .td1{width: 130px;}
	        .td2{ width: 480px; border-left: 1px solid sandybrown ;border-right: 1px solid sandybrown ;vertical-align: middle;}
	        .td3{width:150px; text-align: center;vertical-align: middle;}
	    .pic3{  background:url("images/index_icon2.png") no-repeat; margin: 10px 0 0 15px; }
        .htext{ margin: 10px 0 0 25px;}
        .righthr{ width: 100%;  height: 5px;  }
        .hrtext{ margin-top: 10px; border: 1px solid darkorange; }
    </style>
    <script type="text/javascript">
    	function upPage() {
			var pageIndex=<%=pageIndex%>;
			pageIndex--;
			if(pageIndex==0){
				pageIndex=1;
			}
			window.location.href="../GoodsClassServlet?pageIndex="+pageIndex;
		}
    	function downPage() {
			var pageIndex=<%=pageIndex%>;
			var goodclassPages=<%=goodclassPages%>;
			pageIndex++;
			if(pageIndex>goodclassPages){
				pageIndex=goodclassPages;
			}
			window.location.href="../GoodsClassServlet?pageIndex="+pageIndex;
		}
		function chang() {
			var pageIndex=document.getElementById("sel").value;
			window.location.href="../GoodsClassServlet?pageIndex="+pageIndex;
		}
    </script>
  </head>
  <body class="body">
        <div class="pic3">
            <h4 class="htext">分类管理</h4>
        </div>
        <div class="righthr">
            <hr class="hrtext" />
        </div>
    <table class="maintext">
	    <tr class="tr">
	    	<td class="td1" style="border-top:0;">编号</td>
	    	<td class="td2" style="border-top:0;">分类名称</td>
	    	<td class="td3" style="border-top:0;">操作</td>
	    </tr>
	    <c:forEach items="${goodsclassList}" var="list" varStatus="status">
	    	<tr class="trs" <c:if test="${status.count%2==0}"> style="background-color:#ccc"</c:if>>
		    	<td class="td1">${list.sort_id}</td>
		    	<td class="td2" style="text-align: left;">&nbsp;${list.sort_name}</td>
		    	<td class="tds">
		    		<a href="classModify.jsp?updateId=${list.sort_id}&pageIndex=<%=pageIndex %>">修改</a>&nbsp;
		    		<a href="../GoodsClassServlet?deleteId=${list.sort_id}&pageIndex=<%=pageIndex %>" onclick="">删除</a>
		    	</td>
		    </tr>
	    </c:forEach>
	</table>
	<div style="float: right;margin-right: 20px;">
		<label>第<%=pageIndex %>页</label>
		<label><a href="../GoodsClassServlet?pageIndex=1">首页</a></label>
		<label><a href="javascript:;"onclick="upPage()">上一页</a></label>
		<%-- <label>
			<% for(int i=1;i<=goodclassPages;i++){%>
				<a href="GoodclassServlet?pageIndex=<%=i %>"><%=i %></a>
			<% }%>
		</label> --%>
		<%-- <label>
			<select id="sel" onchange="chang()">
				<% for(int i=1;i<=goodclassPages;i++){%>
					<%if(i==pageIndex){ %>
						<option value="<%=i %>" selected="selected"><%=i %></option>
					<%}else{ %>
						<option value="<%=i %>"><%=i %></option>
					<% }%>
				<% }%>
			</select>
		</label> --%>
		<label><a href="javascript:;"onclick="downPage()">下一页</a></label>
		<label><a href="../GoodsClassServlet?pageIndex=<%=goodclassPages %>">尾页</a></label>
		<label>
			<% for(int i=1;i<=goodclassPages;i++){%>
				<a href="../GoodsClassServlet?pageIndex=<%=i %>">[<%=i %>]</a>
			<% }%>
		</label> 
		<label>共<%=goodclassPages%>页</label>
	</div>
  </body>
</html>
