<%@page import="com.emergentes.modelo.*"%>
<%@page import="com.emergentes.dao.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="WEB-INF/cabezera.jsp" />

        <h1>
            <c:if test="${objeto.id == 0}">Nuevo </c:if>
            <c:if test="${objeto.id > 0}">Editar </c:if>
                Aula   
            </h1>
            <form action="AulaControlador" method="post">
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
                        <td>Descripcion</td>
                        <td ><input  name="descripcion" type="text" value="${objeto.descripcion}" required></td>                   
                    </tr>

                    <tr class="alt">
                        <td>Ubicacion</td>
                        <td ><input  name="ubicacion" type="text" value="${objeto.ubicacion}" required></td>                   
                    </tr>

                    <tr >
                        <td></td>
                        <td><input type="submit" value="enviar" class="btn"></td>
                    </tr>

                </table>
            </div>
        </form>
        <p><a href="AulaControlador" class="btn">Volver</a></p>
        
<jsp:include page="WEB-INF/pie.jsp" />
