package com.lop.gestion.Servlet;

import com.lop.gestion.dao.EventManager;
import com.lop.gestion.dao.Factory;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.awt.List;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "PastEventServlet", value = "/PastEventServlet")
public class PastEventServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        EventManager manager = new EventManager(factory);

        try {
            request.setAttribute("data", manager.pastEvent());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        this.getServletContext().getRequestDispatcher("/WEB-INF/subMenuForm/PastEvent.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        this.getServletContext()
                .getRequestDispatcher("/WEB-INF/subMenuForm/PastEvent.jsp")
                .forward(request, response);

    }
}
