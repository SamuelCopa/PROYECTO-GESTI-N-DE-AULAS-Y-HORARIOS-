<%@page import="com.emergentes.modelo.*"%>
<%@page import="com.emergentes.dao.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="WEB-INF/cabezera.jsp" />

        <h1>
            <c:if test="${objeto.id == 0}">Nuevo </c:if>
            <c:if test="${objeto.id > 0}">Editar </c:if>
                Hora    
            </h1>
            <form action="HorasControlador" method="post">
                <input type="hidden" name="id" value="${objeto.id}">
            <div class="datagrid">
            <table width="311">       
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Campo</th>
                        </tr>
                    </thead>
                    <tr >
                    <td>Rango</td>
                    <td ><input  name="rango" type="text" value="${objeto.rango}" required></td>                   
                </tr>

                <tr class="alt">
                    <td></td>
                    <td><input type="submit" value="enviar" class="btn"></td>
                </tr>

            </table>
                </div>
        </form>
        <p><a href="HorasControlador" class="btn">Volver</a></p>
        
<jsp:include page="WEB-INF/pie.jsp" />
