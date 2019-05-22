package com.electronic_city.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.electronic_city.pojo.Good_detail;
import com.electronic_city.service.Goods_detailService;
import com.electronic_city.service.Goods_detailServiceImpl;
import com.electronic_city.service.XmlPageService;
import com.electronic_city.service.XmlPageServiceImpl;

/**
 * Servlet implementation class GoodsDetailServlet
 */
@WebServlet("/GoodsDetailServlet")
public class GoodsDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GoodsDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		

		
		XmlPageService x=new XmlPageServiceImpl();
		Goods_detailService m=new Goods_detailServiceImpl();
		Good_detail gd=new Good_detail();
		
		String tableName="goods";	
			int good_defailPages=0;
			int pageIndex=0;
			int deleteId=0;
			int updateId=0;
			int good_defailPageCount=0;
			pageIndex=x.getPageIndex();
			good_defailPageCount=x.good_defailCount();
			
		//通用获取分页数据方法
			if(request.getParameter("pageIndex")!=null){
				pageIndex=Integer.valueOf(request.getParameter("pageIndex"));
				//pageIndex=Integer.valueOf(request.getParameter("pageIndex"));
			}
		//删除
			if(request.getParameter("deleteId")!=null){
				deleteId=Integer.valueOf(request.getParameter("deleteId"));
				
				m.deleteGood_detail(deleteId);
			}
/*		//修改
			if(request.getParameter("updateId")!=null){
				
				updateId=Integer.valueOf(request.getParameter("updateId"));
				
				String name=request.getParameter("c_name");
				String good_name=request.getParameter("good_name");
				Double sale_price=Double.valueOf(request.getParameter("sale_price"));
				int count_sale=Integer.valueOf(request.getParameter("count_sale"));
				List<Good_detail> good_defail=(List<Good_detail>)request.getSession().getAttribute("good_defailList");
				for (Good_detail g : good_defail) {
					if(g.getGoods_id()==updateId){
						String goods_name=			g.getGoods_name();
						String goods_subtitle=		g.getGoods_subtitle();
						int sort_id=		        g.getSort_id();
						double price=				g.getPrice();
						int inventory=				g.getInventory();
						String goods_detail=		g.getGoods_detail();
						int status=					g.getStatus();
						Good_detail good_detail=new Good_detail();
						
						m.updataGood_detail(good_detail);
					}
				}
				try {
					Thread.sleep(5000);
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
			}*/
		//获取总页数
			good_defailPages=m.pagesByTableCount(tableName, good_defailPageCount);
			if(pageIndex>good_defailPages){
				pageIndex=good_defailPages;
			}	
			List<Good_detail> good_defailList=m.getGood_detailList(pageIndex, good_defailPageCount);
			
			request.getSession().setAttribute("good_defailList", good_defailList);	
			request.getSession().setAttribute("pageIndex", pageIndex);	
			request.getSession().setAttribute("good_defailPages", good_defailPages);	
			response.sendRedirect("jsp/goodDetailManage.jsp");
		
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

	}
}
