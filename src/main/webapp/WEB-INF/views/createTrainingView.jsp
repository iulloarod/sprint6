<%--
  Created by IntelliJ IDEA.
  User: administrador
  Date: 04-08-23
  Time: 20:17
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
                    <a class="nav-link" aria-current="page" href="/contactView">Contacto</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="/createTrainingView">Capacitacion</a>
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

<section class="row">
    <h2>Crear Capacitación.</h2>

    <form class="" action="saveTraining" method="POST">
        <div class="mb-3 row">
            <label for="nombrecapacitacion" class="form-label">Título de la capacitación</label>
            <input type="text" class="form-control" name="title" id="nombrecapacitacion" aria-describedby="Elija nombre para la capacitación">
        </div>
        <div class="mb-3 row">
            <label for="duracioncapacitacion" class="form-label">Duración de la Capacitación</label>
            <input type="text" class="form-control" name="duration" id="duracioncapacitacion" aria-describedby="Cantidad de minutos de la duración de la capacitación">
        </div>
        <div class="mb-3 row">
            <label for="lugarcapacitacion" class="form-label">Localización de la Capacitación</label>
            <input type="text" class="form-control" name="localization" id="lugarcapacitacion" aria-describedby="Ubicación Física de la capacitación">
        </div>
        <button type="submit" class="btn btn-primary">Crear</button>
    </form>
</section>


<!-- bootstrap-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

</body>

</html>