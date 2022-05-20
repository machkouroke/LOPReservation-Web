package com.lop.gestion.Servlet;

import com.lop.gestion.Exception.DataBaseException;
import com.lop.gestion.dao.EventManager;
import com.lop.gestion.dao.Factory;
import com.lop.gestion.dao.PrintEvent;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "DeleteServlet", value = "/DeleteServlet")
public class DeleteServlet extends HttpServlet {
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
        this.getServletContext().getRequestDispatcher("/WEB-INF/subMenuForm/delete.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int idEvent = Integer.parseInt(request.getParameter("numEvent"));
        try {
            new EventManager(this.factory).delete(idEvent);
            this.doGet(request, response);
        } catch (SQLException | DataBaseException e) {
            e.printStackTrace();
        }
        this.getServletContext().getRequestDispatcher("/WEB-INF/subMenuForm/delete.jsp")
                .forward(request, response);
    }
}
