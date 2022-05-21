package com.lop.gestion.Servlet;

import com.lop.gestion.dao.Factory;


import javax.servlet.http.*;
import javax.servlet.annotation.*;


@WebServlet(name = "BaseServlet", value = "/BaseServlet")
public abstract class BaseServlet extends HttpServlet {
    protected Factory factory;
    @Override
    public void init() {
        this.factory = new Factory("jdbc:mysql://localhost:3306/manager", "root",
                "claudine");
    }

}
