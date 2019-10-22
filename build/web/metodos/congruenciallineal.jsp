<%-- 
    Document   : congruenciallineal
    Created on : 21/10/2019, 03:13:59 PM
    Author     : elomj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <body>
        <fmt:setLocale value = "es_CO"/>
        <div class="container-fluid">
            <h4 class="my-4 animated fadeInDown">Números aleatorios del <span class="font-weight-bold">método congruencial lineal</span></h4>
            <div class="table-responsive">
                <table class="table table-striped table-sm table-borderless table-hover">
                    <tr class="blue-text">
                        <th class="font-weight-bold">N</th>
                        <th class="font-weight-bold">Xi</th>
                        <th class="font-weight-bold">AX+C</th>
                        <th class="font-weight-bold">(AX+C mod(M))</th>
                        <th class="font-weight-bold">Ri</th>
                    </tr>
                    <c:forEach items="${tabla}" var="dato">
                        <tr class="wow fadeInDown">
                            <td>${dato.id}</td>
                            <td><fmt:formatNumber maxFractionDigits="0" value="${dato.xi}"/></td>
                            <td><fmt:formatNumber maxFractionDigits="0" value="${dato.axc}"/></td>
                            <td><fmt:formatNumber maxFractionDigits="0" value="${dato.axcmod}"/></td>
                            <td><fmt:formatNumber minFractionDigits="10" value="${dato.ri}"/></td>
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
