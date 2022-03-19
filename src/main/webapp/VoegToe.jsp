<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="nl">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Voegtoe</title>
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
            <li><a href="VoegToe.jsp"
                   style="background-color: rgba(184,191,168,0.61); border-radius: 10px; padding: 4px">TOEVOEGEN</a>
            </li>
            <li><a href="Overzicht.jsp">OVERZICHT</a></li>
        </ul>
    </nav>
</header>
<main>
    <article class="toevoegtekst">
        <h2>Voeg motor toe:</h2>
        <form method="post" action="Servlet_Web2">
            <label for="merk"><input id="merk" name="merk" type="text" class="vak" placeholder="Merk..."
                                     required></label>
            <label for="model"><input id="model" name="model" type="text" class="vak" placeholder="Model..."
                                      required></label>
            <label for="bouwjaar"><input id="bouwjaar" name="bouwjaar" type="number" class="vak"
                                         placeholder="Bouwjaar..." required></label>
            <label for="pk"><input id="pk" name="pk" type="number" class="vak" placeholder="Aantal pk's..."
                                   required></label>
            <label for="prijs"><input id="prijs" name="prijs" type="number" class="vak" placeholder="Prijs..." required></label>
            <input type="submit" value="Toevoegen"/>
        </form>
    </article>
</main>
<footer>
    <p>Made by Ube Van Grimbergen</p>
</footer>
</body>
</html>