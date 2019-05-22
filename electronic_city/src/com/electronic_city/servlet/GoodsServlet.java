package com.electronic_city.servlet;

import com.electronic_city.pojo.Goods;
import com.electronic_city.service.GoodsService;
import com.electronic_city.service.GoodsServiceImpl;
import com.electronic_city.service.PicService;
import com.electronic_city.service.PicServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/Goods.do")
public class GoodsServlet extends HttpServlet {
    //get
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
    //post
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String opr = req.getParameter("opr");
        switch (opr){
            case "query_goods":
                query_goods(req,resp);
                break;
            case "query_sort":
                query_sort(req,resp);
                break;
        }
    }

    private void query_sort(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList goods_list ;
        String sort_id = req.getParameter("sort_id");
        GoodsService gds = new GoodsServiceImpl();
        goods_list = gds.query_bySort_all(sort_id);
        if (goods_list != null) {
            req.setAttribute("goods_list",goods_list);
            req.getRequestDispatcher("query_bySort.jsp").forward(req, resp);
        }else{
            req.setAttribute("message","不存在该商品分类");
            req.getRequestDispatcher("404.jsp");
        }
    }

    private void query_goods(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList pic_list ;
        Goods gd ;
        int goods_id = Integer.parseInt(req.getParameter("goods_id"));
        GoodsService gds = new GoodsServiceImpl();
        PicService ps = new PicServiceImpl();
        gd = gds.query_byId(goods_id);
        pic_list = ps.query_pic(goods_id);
        if (gd != null) {
            req.setAttribute("goods",gd);
            req.setAttribute("pic_list",pic_list);
            req.getRequestDispatcher("goods_detail.jsp").forward(req, resp);
        }else{
            req.setAttribute("message","您搜索的商品已被程序员吃了");
            req.getRequestDispatcher("404.jsp");
        }
    }
}
