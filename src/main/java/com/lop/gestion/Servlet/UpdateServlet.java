package com.lop.gestion.Servlet;

import com.lop.gestion.Beans.Evenements;
import com.lop.gestion.Exception.DataBaseException;
import com.lop.gestion.dao.EventManager;
import com.lop.gestion.dao.Factory;
import com.lop.gestion.dao.PrintEvent;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;

@WebServlet(name = "UpdateServlet", value = "/UpdateServlet")
public class UpdateServlet extends HttpServlet {
    private Factory factory;
    @Override
    public void init() {
        this.factory = Factory.getInstance();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


        try {
            request.setAttribute("data", new EventManager(factory).getAllReservations());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        this.getServletContext().getRequestDispatcher("/WEB-INF/subMenuForm/update.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("Map:" + request.getParameterMap().toString());
        Utility.add(request, this.factory, "update");
        this.doGet(request, response);
        this.getServletContext().getRequestDispatcher("/WEB-INF/subMenuForm/update.jsp")
                .forward(request, response);
    }
}
