<%@page import="com.emergentes.modelo.*"%>
<%@page import="com.emergentes.dao.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="WEB-INF/cabezera.jsp" />

        <h1>    
            Cambiar Password  
        </h1>
        <form name="CambiarPas" action="CambiarPasControlador" method="post" onsubmit="validarPas();">
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
                        <td>Nuevo Password</td>
                        <td ><input id="pas1" name="pas1" type="password" required></td>                   
                    </tr>

                    <tr>
                        <td>Repita Passwors</td>

                        <td ><input id="pas2" name="pas2" type="password" required></td>  

                    </tr>
                    <tr class="alt">
                        <td></td>
                        <td><input type="submit" value="enviar" class="btn" ></td>
                    </tr>

                </table>
            </div>
        </form>
        <p><a href="HorarioControlador" class="btn">Volver</a></p>
        
<jsp:include page="WEB-INF/pie.jsp" />
