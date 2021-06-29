<%@page import="com.emergentes.modelo.*"%>
<%@page import="com.emergentes.dao.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="WEB-INF/cabezera.jsp" />

        <h1>LISTADO DE HORAS</h1>
        <p><a href="HorasControlador?action=add" class="btn"><img src="Imagenes/nuevo.png" title="Nuevo registro"/>Nuevo</a></p>
        <div class="datagrid">
        <table border="1">
            <thead>
            <tr>
                <th>Id</th>
                <th>Rango</th>
                <th></th>
                <th></th>
            </tr>
            </thead>
            <c:forEach var="item" items="${list_obj}">        
                <tr>
                    <td>${item.id}</td>
                    <td>${item.rango}</td>
                    <th><a href="HorasControlador?action=edit&id=${item.id}"><img src="Imagenes/editar.png" title="Modificar"/></a></th>
                    <td><a href="HorasControlador?action=delete&id=${item.id}" onclick="return(confirm('Esta seguro de eliminar??'))"><img src="Imagenes/delete.png" title="Eliminar"/></a></td>
                </tr>
            </c:forEach>
        </table>
            </div>
        
<jsp:include page="WEB-INF/pie.jsp" />
