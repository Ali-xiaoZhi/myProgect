package com.electronic_city.servlet;

import com.electronic_city.pojo.Member;
import com.electronic_city.service.MemberService;
import com.electronic_city.service.MemberServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 会员操作流程
 */
@WebServlet("/member.do")
public class MemberServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException,IOException {
        String opr = req.getParameter("opr");
        switch (opr){
            case "register":
                register(req,resp);
            case "login":
                login(req,resp);
        }
    }

    private void login(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String user_name = req.getParameter("username");
        String pwd = req.getParameter("pwd");
        MemberService mbs = new MemberServiceImpl();
        Member member = mbs.loign(user_name,pwd);
//        HttpSession session =req.getSession();
        if (member != null) {
            req.getSession().setAttribute("member",member);
//            req.setAttribute("member",member);
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        }else{
            req.setAttribute("message","登录失败");
            req.getRequestDispatcher("login").forward(req, resp);
        }

    }

    private void register(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String user_name = req.getParameter("user_name");
        String pwd = req.getParameter("pwd");
        String phone = req.getParameter("phone");
        String email = req.getParameter("email");
        Member mb = new Member();
        mb.setMember_nick(user_name);
        mb.setMember_name(user_name);
        mb.setPassword(pwd);
        mb.setPhone(phone);
        mb.setEmail(email);
        MemberService mbs = new MemberServiceImpl();
        int result = mbs.registe(mb);
        if (result == 1) {
//            req.getSession().setAttribute("member",mb);
            resp.sendRedirect("login.jsp");
        }else{
            req.setAttribute("message","系统异常");
            req.getRequestDispatcher("register.jsp").forward(req, resp);
        }
    }


}
