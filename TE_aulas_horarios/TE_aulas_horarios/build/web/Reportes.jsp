<%@page import="com.emergentes.modelo.*"%>
<%@page import="com.emergentes.dao.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="WEB-INF/cabezera.jsp" />

        <h1>    
            REPORTES 
        </h1>
        <form action="HorarioControlador" method="post" onsubmit="validarPas();">
            <input type="hidden" name="id" value="${sessionScope.id}">
            <div class="datagrid">
                <table width="311">       
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Campo</th>
                        </tr>
                    </thead>
                    <tr class="alt">
                        <td>Reporte 1</td>
                        <td ><a href="HorarioControlador?action=view2">Listado por dias y horas</a></td>                   
                    </tr>

                    <tr>
                        <td>Reporte 2</td>

                        <td ><a href="HorarioControlador?action=view3">Listado por Aulas</a></td>  
                    </tr>
                    <tr>
                        <td>Reporte 3</td>
                        <td ><a href="HorarioControlador?action=view4">Listado por Docentes</a></td>  
                    </tr>
                </table>
            </div>
        </form>
        <p><a href="HorarioControlador" class="btn">Volver</a></p>

<jsp:include page="WEB-INF/pie.jsp" />