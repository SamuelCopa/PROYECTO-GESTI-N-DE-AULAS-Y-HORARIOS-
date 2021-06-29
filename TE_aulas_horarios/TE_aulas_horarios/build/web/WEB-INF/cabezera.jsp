<%@page import="com.emergentes.modelo.*"%>
<%@page import="com.emergentes.dao.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>SIGEAH</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel="stylesheet" href="css/style.css" type="text/css" media="screen"/>
        <style>
            main {
                margin-top: 80px;
            }
        </style>

        <script>
            function validarPas() {
                var valor1 = document.getElementById("pas1").value;
                var valor2 = document.getElementById("pas2").value;

                if (valor1 == valor2) {
                    //Si son iguales
                    alert("Las contraseñas son iguales \n Se Actualizo la contraseñas");
                } else if (valor1 != valor2) {
                    //Si no son iguales
                    alert("Las contraseñas no son iguales \n No se Actualizo la contraseñas");
                }
            }

        </script>
    </head>

    <body>
        <header>

            <!-- Fixed navbar -->
            <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
                <a class="navbar-brand" href="#"><img src="Imagenes/LogoIS2.png"  alt="" width="70" height="70" >SIGEHA</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="HorarioControlador">INICIO<span class="sr-only">(current)</span></a>
                        </li>
                        <c:if test="${sessionScope.id_cat_usuario== 1}">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    USUARIO
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                    <a class="dropdown-item" href="UsuarioControlador">CRUD Usuario</a>
                                    <a class="dropdown-item" href="CatUsuarioControlador">CRUD Cat. Usuario</a>

                                </div>
                            </li>


                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    MATERIA
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                    <a class="dropdown-item" href="MateriaControlador">CRUD Materia</a>
                                    <a class="dropdown-item" href="ParaleloControlador">CRUD Paralelo</a>
                                    <a class="dropdown-item" href="MatParaleloControlador">CRUD Mat - Par</a>

                                </div>
                            </li> 

                            <li class="nav-item">
                                <a class="nav-link" href="DocenteControlador">DOCENTE</a>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="HorarioControlador" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    HORARIO
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                    <a class="dropdown-item" href="HorarioControlador">CRUD Horarios</a>
                                    <a class="dropdown-item" href="HorasControlador">CRUD Horas</a>
                                    <a class="dropdown-item" href="AulaControlador">CRUD Aulas</a>
                                    

                                </div>
                            </li>      


                        </c:if>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                REPORTES
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <a class="dropdown-item" href="HorarioControlador">Listado por Niveles</a>
                                <a class="dropdown-item" href="HorarioControlador?action=view2">Listado por Dias y Horas</a>
                                <a class="dropdown-item" href="HorarioControlador?action=view3">Listado por Aulas</a>
                                <a class="dropdown-item" href="HorarioControlador?action=view4">Listado por Docentes</a>

                            </div>
                        </li>   



                        <li class="nav-item">
                            <a class="nav-link" href="CambiarPas.jsp">CAMBIAR PASSWORD</a>
                        </li>



                        <li class="nav-item">
                            <a class="nav-link" href="LoginControlador?view=logout">SALIR</a>
                        </li>

                    </ul>
                </div>
            </nav>


        </header>
        <br><br><br><br><br>