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

@WebServlet(name = "ListeSalleReservataireServlet", value = "/ListeSalleReservataireServlet")
public class    ListeSalleReservataireServlet extends HttpServlet {
    private Factory factory;

    @Override
    public void init() {
        this.factory = Factory.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/WEB-INF/subMenuForm" +
                        "/listeSalleReservataire" +
                        ".jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int idReservataire = Integer.parseInt(request.getParameter("numReservataire"));
        EventManager manager = new EventManager(factory);


        try {
            request.setAttribute("data", manager.listeSalleReservataire(idReservataire));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        this.getServletContext()
                .getRequestDispatcher("/WEB-INF/subMenuForm/listeSalleReservataire.jsp")
                .forward(request, response);
    }
}
