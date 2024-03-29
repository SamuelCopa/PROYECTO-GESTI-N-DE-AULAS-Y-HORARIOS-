<%@page import="com.emergentes.modelo.*"%>
<%@page import="com.emergentes.dao.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="WEB-INF/cabezera.jsp" />

        <h1>LISTADO DE USUARIO</h1>
        <p><a href="UsuarioControlador?action=add" class="btn"><img src="Imagenes/nuevo.png" title="Nuevo registro"/>Nuevo</a></p>
        <div class="datagrid">  
            <table border="1">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Usuario</th>
                        <th>Password</th>
                        <th>Cat. Usuario</th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <c:forEach var="item" items="${lista_obj}">        
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.usuario}</td>
                        <td>${item.password}</td>

                        <td>
                            <c:forEach var="item2" items="${catus}">
                                <c:if test="${item.id_cat_usuario == item2.id}">
                                   ${item2.descripcion}  
                                </c:if>
                            </c:forEach>
                        </td>

                        <th><a href="UsuarioControlador?action=edit&id=${item.id}"><img src="Imagenes/editar.png" title="Modificar"/></a></th>
                        <td><a href="UsuarioControlador?action=delete&id=${item.id}" onclick="return(confirm('Esta seguro de eliminar??'))"><img src="Imagenes/delete.png" title="Eliminar"/></a></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        
<jsp:include page="WEB-INF/pie.jsp" />