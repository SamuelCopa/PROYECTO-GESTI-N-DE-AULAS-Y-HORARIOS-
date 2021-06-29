<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="WEB-INF/cabezera.jsp" />

<h1>LISTADO DE PARALELOS</h1>
<p><a href="ParaleloControlador?action=add" class="btn"><img src="Imagenes/nuevo.png" title="Nuevo registro"/>Nuevo</a></p>
<div class="datagrid">
    <table border="2">
        <thead>
            <tr>
                <th>Id</th>
                <th>Paralelo</th>               
                <th colspan="2">Opcion</th>
            </tr>
        </thead>
        <c:forEach var="item" items="${paralelos}">
            <tr>
                <td>${item.id}</td>
                <td>${item.nombre_paralelo}</td>
                <th><a href="ParaleloControlador?action=edit&id=${item.id}"><img src="Imagenes/editar.png" title="Modificar"/></a></th>
                <td><a href="ParaleloControlador?action=delete&id=${item.id}" onclick="return(confirm('Esta seguro de eliminar??'))">
                        <img src="Imagenes/delete.png" title="Eliminar"/></a></td>
            </tr>
        </c:forEach>

    </table>
</div>
<jsp:include page="WEB-INF/pie.jsp" />