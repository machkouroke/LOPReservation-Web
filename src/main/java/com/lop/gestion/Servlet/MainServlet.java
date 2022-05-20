package com.lop.gestion.Servlet;

import com.lop.gestion.Exception.DataBaseException;
import com.lop.gestion.Exception.PasswordIncorrectException;
import com.lop.gestion.Exception.UnknownUserNameException;
import com.lop.gestion.dao.Factory;
import com.lop.gestion.dao.UserConnection;

import java.io.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class MainServlet extends HttpServlet {
    private Factory factory;
    final List<List<List<String>>> gridContent = new ArrayList<>(List.of(
            List.of(
                    List.of("add", "Ajouter une reservation", "icons/add.svg"),
                    List.of("delete", "Supprimer une réservation", "icons/delete.svg"),
                    List.of("update",
                            "Mettre à jour une réservation", "icons/add.svg")
            ),
            List.of(
                    List.of("listeSalleReservataire",
                            "Afficher la liste des salles d'un réservataire données",
                            "icons/reservataire.svg"),
                    List.of("evtInBloc",
                            "Voir les évènements actifs dans un bloc", "icons/event.svg"),
                    List.of("actifReservateur",
                            "Voir les réservateurs avec une réservations en Cours", "icons/cours.svg")
            ),
            List.of(
                    List.of("dayReservation",
                            "Réservation d'une journée données", "icons/day.svg"),
                    List.of("pastEvent",
                            "Évènements deja passées", "icons/day.svg")
            )


    ));

    @Override
    public void init() {
        this.factory = Factory.getInstance();
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        if (Objects.equals(request.getParameter("logout"), "true")) {
            request.getSession().invalidate();
            request.setAttribute("logout", "");
        }
        request.setCharacterEncoding("UTF-8");
        request.setAttribute("gridContent", this.gridContent);
        this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp")
                .forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        HttpSession session = request.getSession();
        UserConnection connection = new UserConnection(this.factory);
        try {
            if (connection.connexionValidate(request.getParameter("userName"), request.getParameter(
                    "password"))) {
                session.setAttribute("user", request.getParameter("userName"));
            }
        } catch (DataBaseException | PasswordIncorrectException | UnknownUserNameException e) {
            request.setAttribute("error", e.getMessage());
        }

        request.setAttribute("gridContent", this.gridContent);
        request.setAttribute("grid", "hello");
        request.setCharacterEncoding("UTF-8");
        this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp")
                .forward(request, response);
    }

}