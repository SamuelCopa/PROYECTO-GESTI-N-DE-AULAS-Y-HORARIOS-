<%@page import="com.emergentes.modelo.*"%>
<%@page import="com.emergentes.dao.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<jsp:include page="WEB-INF/cabezera.jsp" />

        <h1>LISTADO DE HORARIO</h1>
        <c:if test="${sessionScope.id_cat_usuario== 1}"><p><a href="HorarioControlador?action=add" class="btn"><img src="Imagenes/nuevo.png" title="Nuevo registro"/>Nuevo</a></p></c:if>
        <div class="datagrid">
            <table border="1">
                <thead>
                    <tr>
                        <th>id</th>
                        <th>Nivel</th>
                        <th>Materia</th>
                        <th>Sigla</th>
                        <th>Paralelo</th>
                        <th>Docente</th>
                        <th>Aula</th>
                        <th>Dia</th>
                        <th>Horario</th>
                        <th>Turno</th>
                        <th>Gestion</th>




                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <c:forEach var="item" items="${list_obj}">        
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.nivel}</td>
                        <td>${item.nom_materia}</td>
                        <td>${item.sigla}</td>
                        <td>${item.paralelo}</td>
                        <td>${item.docente}</td>

                        <td>
                            <c:forEach var="item2" items="${lista_aulas}">
                                <c:if test="${item.id_aula == item2.id}">
                                    ${item2.descripcion}  
                                </c:if>
                            </c:forEach>
                        </td>
                        
                        <td>${item.dia}</td>

                        <td>
                            <c:forEach var="item2" items="${lista_horas}">
                                <c:if test="${item.id_horas == item2.id}">
                                    ${item2.rango}  
                                </c:if>
                            </c:forEach>
                        </td>
                        
                        <td>${item.turno}</td>
                        <td>${item.gestion}</td>


                        <td><c:if test="${sessionScope.id_cat_usuario== 1}"><a href="HorarioControlador?action=edit&id=${item.id}"><img src="Imagenes/editar.png" title="Modificar"/></a></c:if></td>
                        <td><c:if test="${sessionScope.id_cat_usuario== 1}"><a href="HorarioControlador?action=delete&id=${item.id}" onclick="return(confirm('Esta seguro de eliminar??'))"><img src="Imagenes/delete.png" title="Eliminar"/></a></c:if></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
<jsp:include page="WEB-INF/pie.jsp" />
