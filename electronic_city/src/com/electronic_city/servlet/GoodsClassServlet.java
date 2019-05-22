package com.electronic_city.servlet;

import com.electronic_city.pojo.Sort;
import com.electronic_city.service.GoodsSortService;
import com.electronic_city.service.GoodsSortServiceImpl;
import com.electronic_city.service.XmlPageService;
import com.electronic_city.service.XmlPageServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Servlet implementation class GoodsClassServlet
 */
@WebServlet("/GoodsClassServlet")
public class GoodsClassServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int goodclassPages=0;
		int pageIndex=1;
		int deleteId=0;
		int updataId=0;
		int goodclassPageCount=0;
		String tableName="sort";
		XmlPageService xps=new XmlPageServiceImpl();
		GoodsSortService m=new GoodsSortServiceImpl();
		pageIndex=xps.getPageIndex();
		goodclassPageCount=xps.getgoodclassPageCount();
	//通用获取页面分页数据方法
		if(request.getParameter("pageIndex")!=null){
			pageIndex=Integer.parseInt(request.getParameter("pageIndex"));
		}
	//删除
		if(request.getParameter("deleteId")!=null&&request.getParameter("pageIndex")!=null){
			deleteId=Integer.parseInt(request.getParameter("deleteId"));
			if(m.deleteByDeleteIdByTableName(deleteId, tableName)){
				pageIndex=Integer.parseInt(request.getParameter("pageIndex"));
			}
		}
	//修改
		
		if(request.getParameter("pageIndex")!=null&&request.getParameter("updateId")!=null&&request.getParameter("class_name")!=null&&request.getParameter("pageIndex")!=null){
			updataId=Integer.parseInt(request.getParameter("updateId"));
			pageIndex=Integer.parseInt(request.getParameter("pageIndex"));
			String sort_name=request.getParameter("class_name");
			
			if(m.updateGoodsclass(sort_name, updataId)){
				pageIndex=Integer.parseInt(request.getParameter("pageIndex"));
			}
		}
	//获取总页数
		goodclassPages=m.pagesByTableCount(tableName, goodclassPageCount);
		if(pageIndex>goodclassPages){
			pageIndex=goodclassPages;
		}
	//添加方法（添加完成导向最后一个页面）
		if(request.getParameter("add_class_name")!=null){	
			String class_name=request.getParameter("add_class_name");
			if(m.addGoodsclass(class_name)){
				pageIndex=m.pagesByTableCount(tableName, goodclassPageCount);
			}
		}
	//
		
		List<Sort> goodsclassList=m.getGoodsclassByLimitList(pageIndex, goodclassPageCount);
		request.getSession().setAttribute("goodclassPages", goodclassPages);
		request.getSession().setAttribute("pageIndex", pageIndex);
		request.getSession().setAttribute("goodsclassList", goodsclassList);
		response.sendRedirect("jsp/classManage.jsp");
	}
}