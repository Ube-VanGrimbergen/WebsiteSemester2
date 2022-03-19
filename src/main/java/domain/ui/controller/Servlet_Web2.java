package domain.ui.controller;

import domain.db.MotoDB;
import domain.model.MotoModel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("Servlet_Web2")
public class Servlet_Web2 extends HttpServlet {

    MotoDB motodb = new MotoDB();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String merk = request.getParameter("merk");
        String model = request.getParameter("model");
        String bouwjaar = request.getParameter("bouwjaar");
        String pk = request.getParameter("pk");
        String prijs = request.getParameter("prijs");

        MotoModel moto = new MotoModel(merk, model, Integer.parseInt(bouwjaar), Integer.parseInt(pk), Integer.parseInt(prijs));

        motodb.addMoto(moto);

        request.setAttribute("moto", motodb.getMotos());
        request.setAttribute("duurste", motodb.getDuurste());
        RequestDispatcher view = request.getRequestDispatcher("Overzicht.jsp");
        view.forward(request, response);
    }

}
