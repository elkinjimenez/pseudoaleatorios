<%-- 
    Document   : productomedio
    Created on : 21/10/2019, 11:53:53 AM
    Author     : elomj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <body>
        <div class="container-fluid">
            <h4 class="my-4 animated fadeInDown">Números aleatorios del <span class="font-weight-bold">método del producto medio</span></h4>
            <div class="table-responsive">
                <table class="table table-striped table-sm table-borderless table-hover">
                    <tr class="blue-text">
                        <th class="font-weight-bold">N</th>
                        <th class="font-weight-bold">X0</th>
                        <th class="font-weight-bold">Xi</th>
                        <th class="font-weight-bold">X0*Xi</th>
                        <th class="font-weight-bold">Largo</th>
                        <th class="font-weight-bold">Centro</th>
                        <th class="font-weight-bold">Ri</th>
                    </tr>
                    <c:forEach items="${tabla}" var="dato">
                        <tr class="wow fadeInDown">
                            <td>${dato.id}</td>
                            <td>${dato.x0}</td>
                            <td>${dato.xi}</td>
                            <td>${dato.x0xi}</td>
                            <td>${dato.largo}</td>
                            <td>${dato.centro}</td>
                            <td>${dato.ri}</td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
        <script>
            new WOW().init();
        </script>
    </body>
</html>
