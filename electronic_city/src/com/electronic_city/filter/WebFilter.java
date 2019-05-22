package com.electronic_city.filter;

import javax.servlet.*;
import java.io.IOException;

@javax.servlet.annotation.WebFilter(filterName = "WebFilter")
public class WebFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        chain.doFilter(req, resp);
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
