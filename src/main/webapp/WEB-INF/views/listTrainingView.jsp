<%--
  Created by IntelliJ IDEA.
  User: administrador
  Date: 10-08-23
  Time: 21:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <a class="nav-link" href="/createTrainingView">Capacitacion</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="/listTrainingView">Listar Capacitaciones</a>
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
    <h2 class="my-3">Lista de capacitaciones disponibles.</h2>

    <table class="table">
        <thead>
        <tr>
            <th scope="col">Título</th>
            <th scope="col">Duracion</th>
            <th scope="col">Ubicacion</th>
            <th scope="col">actualizar</th>
            <th scope="col">eliminar</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${listTraining}" var="training">
            <tr>
                <td>${training.title}</td>
                <td>${training.duration}</td>
                <td>${training.localization}</td>

                <td>
                    <button type="button" class="btn btn-warning " data-bs-toggle="modal"
                            id="btnActualizarCapacitacion"
                            data-bs-target="#editarCapacitacion">
                        <b>Actualizar</b>
                    </button>
                </td>

                <td>
                    <input type="button" class="btn btn-danger " value="Eliminar"/>
                </td>
            </tr>

        </c:forEach>
        </tbody>
    </table>

</section>


<!-- bootstrap-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

</body>

</html>
