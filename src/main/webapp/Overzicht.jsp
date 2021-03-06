<%@ page import="java.util.ArrayList" %>
<%@ page import="domain.model.MotoModel" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="nl">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Overzicht</title>
    <link rel="stylesheet" href="normalize.css">
    <link rel="stylesheet" href="mijncss.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inconsolata&display=swap" rel="stylesheet">
</head>
<body>
<header>
    <nav>
        <h1>UberMotors Garage</h1>
        <ul>
            <li><a href="index.jsp">HOME</a></li>
            <li><a href="VoegToe.jsp">TOEVOEGEN</a></li>
            <li><a href="Overzicht.jsp"
                   style="background-color: rgba(184,191,168,0.61); border-radius: 10px; padding: 4px">OVERZICHT</a>
            </li>
        </ul>
    </nav>
</header>
<main>
    <article class="overzichttekst">
        <h2>Ons aanbod:</h2>
        <table>
            <tr>
                <th>Merk</th>
                <th>Model</th>
                <th>Bouwjaar</th>
                <th>Pk's</th>
                <th>Prijs</th>
            </tr>
            <% ArrayList<MotoModel> list = (ArrayList<MotoModel>) request.getAttribute("moto");
            for (MotoModel moto : list){

            %>
            <tr>
                <td><%= moto.getMerk()%></td>
                <td><%= moto.getModel()%></td>
                <td><%= moto.getBouwjaar()%></td>
                <td><%= moto.getPk()%></td>
                <td><%= moto.getPrijs()%></td>
            </tr>
            <% }%>
        </table>
        <p>Onze duurste moto is: <%= request.getAttribute("duurste")%></p>
    </article>
</main>
<footer>
    <p>Made by Ube Van Grimbergen</p>
</footer>
</body>
</html>