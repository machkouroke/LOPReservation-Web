package com.lop.gestion.Servlet;

import com.lop.gestion.Beans.Evenements;
import com.lop.gestion.Exception.DataBaseException;
import com.lop.gestion.dao.EventManager;
import com.lop.gestion.dao.Factory;


import javax.servlet.http.HttpServletRequest;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.util.Objects;


public class Utility {
    public static void add(HttpServletRequest request, Factory factory, String type) {

        int numSalle = Integer.parseInt(request.getParameter("numSalle"));
        String numBloc = request.getParameter("numBloc");
        System.out.println("Bloc choisi" + numBloc);
        int idReservataire = Integer.parseInt(request.getParameter("idReservataire"));
        String eventName = request.getParameter("eventName");
        String eventDate = request.getParameter("eventDate");

        try {
            if (Objects.equals(type, "add")) {
                Evenements event = new Evenements(idReservataire, numSalle, numBloc, eventName, eventDate);
                new EventManager(factory).add(event);
            } else {

                int idEvent = Integer.parseInt(request.getParameter("idEvent"));
                Evenements event = new Evenements(idEvent, idReservataire, numSalle, numBloc, eventName, eventDate);
                new EventManager(factory).update(event);
            }
            request.setAttribute("success", "L'evenement a bien ete " +
                    (Objects.equals(type, "add") ? "enregistre" : "modifie"));
        } catch (DataBaseException | SQLIntegrityConstraintViolationException e) {
            System.out.println(e.getMessage());
            request.setAttribute("error", e.getMessage());
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("Une erreur:" + e.getMessage());
        }
    }
}
