<%--
  Created by IntelliJ IDEA.
  User: administrador
  Date: 10-08-23
  Time: 12:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>HTML Base</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>

<body class="container mt-5 mb-5" style="background-color: #e3f2fd; font-family: 'Arial Black';">

<header>

</header>

<nav class="navbar navbar-expand-lg bg-body-tertiary mb-3">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">Inicio</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/contactView">Contacto</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/createTrainingView">Capacitacion</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " href="/listTrainingView">Listar Capacitaciones</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " href="/paysView">Pagos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " href="/visitsView">Visitas</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " href="/editUsersView">Editar Usuarios</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<section>
    <h3 class="mb-3">Deseas contactarnos? Escríbenos y te leeremos.</h3>
    <form action="saveMessage" method="POST">
        <div class="mb-3 row">
            <label for="email" class="form-label">Correo electrónico</label>
            <input type="email" class="form-control" name="email" id="email" aria-describedby="Ingrese su correo electrónico">
        </div>
        <div class="mb-3 row">
            <label for="msg" class="form-label">Escriba su mensaje</label>
            <textarea class="form-control" name="message" id="msg" rows="3"></textarea>
        </div>

        <button type="submit" class="btn btn-primary">Enviar</button>
    </form>
</section>


<!-- bootstrap-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

</body>

</html>