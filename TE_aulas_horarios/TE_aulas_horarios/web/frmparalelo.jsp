<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="WEB-INF/cabezera.jsp" />

        <h1>
           
            <c:if test="${paralelo.id == 0}">Nuevo </c:if>
            <c:if test="${paralelo.id > 0}">Editar </c:if>
             paralelo  
            </h1>
            <form action="ParaleloControlador" method="post">
                <input type="hidden" name="id" value="${paralelo.id}">
            <div class="datagrid">
                <table width="311">       
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Datos</th>
                        </tr>
                    </thead>
                     <tr>
                        <td>Paralelo</td>
                        <td ><input name="nombre_paralelo" type="text" value="${paralelo.nombre_paralelo}" required></td>                   
                    </tr>
                   
                    <tr class="alt">
                        <td></td>
                        <td><input type="submit" value="enviar" class="btn"></td>
                    </tr>

                </table>
            </div>
        </form>
        <p><a href="ParaleloControlador" class="btn">Volver</a></p>

<jsp:include page="WEB-INF/pie.jsp" />
