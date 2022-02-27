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
                <th>Pas aan</th>
                <th>Verwijder</th>
            </tr>
            <tr>
                <td>KTM</td>
                <td>RC 390</td>
                <td>2016</td>
                <td>45</td>
                <td>3000</td>
                <td><a href="#" class="aanpas">Pas aan</a></td>
                <td><a href="#" class="x">X</a></td>
            </tr>
            <tr>
                <td>Honda</td>
                <td>CBR 1000RR</td>
                <td>2014</td>
                <td>150</td>
                <td>5400</td>
                <td><a href="#" class="aanpas">Pas aan</a></td>
                <td><a href="#" class="x">X</a></td>
            </tr>
            <tr>
                <td>Yamaha</td>
                <td>R1</td>
                <td>2020</td>
                <td>180</td>
                <td>17000</td>
                <td><a href="#" class="aanpas">Pas aan</a></td>
                <td><a href="#" class="x">X</a></td>
            </tr>
            <tr>
                <td>Ducati</td>
                <td>Panigale</td>
                <td>2014</td>
                <td>205</td>
                <td>23000</td>
                <td><a href="#" class="aanpas">Pas aan</a></td>
                <td><a href="#" class="x">X</a></td>
            </tr>
        </table>
    </article>
</main>
<footer>
    <p>Made by Ube Van Grimbergen</p>
</footer>
</body>
</html>