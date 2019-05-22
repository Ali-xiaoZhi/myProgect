package com.electronic_city.servlet;

import com.electronic_city.service.GoodsServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/index.do")
public class indexServlet extends HttpServlet {
    //get
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
    //post
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String opr = req.getParameter("opr");
        switch (opr){
            case "query_list_four":
                query_list(req,resp);
                break;
            case "":
//                login(req,resp);
                break;
        }
    }

    private void query_list(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList phone_list;
        ArrayList pad_list;
        ArrayList photo_list;
        ArrayList smart_list;
        ArrayList happy_list;
        ArrayList computer_around_list;
        ArrayList phone_around_list;
        GoodsServiceImpl gds = new GoodsServiceImpl();
        phone_list=gds.query_bySort_four("1");
        pad_list=gds.query_bySort_four("2");
        photo_list=gds.query_bySort_four("3");
        smart_list=gds.query_bySort_four("4");
        happy_list=gds.query_bySort_four("5");
        computer_around_list=gds.query_bySort_four("6");
        phone_around_list=gds.query_bySort_four("7");
        req.setAttribute("phone_list",phone_list);
        req.setAttribute("pad_list",pad_list);
        req.setAttribute("photo_list",photo_list);
        req.setAttribute("smart_list",smart_list);
        req.setAttribute("happy_list",happy_list);
        req.setAttribute("computer_around_list",computer_around_list);
        req.setAttribute("phone_around_list",phone_around_list);
        req.getRequestDispatcher("index_goods.jsp").forward(req, resp);
    }


}
