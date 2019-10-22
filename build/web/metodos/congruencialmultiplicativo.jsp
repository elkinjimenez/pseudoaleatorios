<%-- 
    Document   : congruencialmultiplicativo
    Created on : 21/10/2019, 04:07:04 PM
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
            <h4 class="my-4 animated fadeInDown">Números aleatorios del <span class="font-weight-bold">método congruencial multiplicativo</span></h4>
            <div class="table-responsive">
                <table class="table table-striped table-sm table-borderless table-hover">
                    <tr class="blue-text">
                        <th class="font-weight-bold">N</th>
                        <th class="font-weight-bold">Xi</th>
                        <th class="font-weight-bold">A*Xi</th>
                        <th class="font-weight-bold">[A*X(n)]mod M</th>
                        <th class="font-weight-bold">Ri</th>
                        <th class="font-weight-bold">Ri</th>
                    </tr>
                    <c:forEach items="${tabla}" var="dato">
                        <tr class="wow fadeInDown">
                            <td>${dato.id}</td>
                            <td><fmt:formatNumber maxFractionDigits="0" value="${dato.xi}"/></td>
                            <td><fmt:formatNumber maxFractionDigits="0" value="${dato.axi}"/></td>
                            <td><fmt:formatNumber maxFractionDigits="0" value="${dato.axmod}"/></td>
                            <td><fmt:formatNumber maxFractionDigits="10" value="${dato.ri1}"/></td>
                            <td><fmt:formatNumber maxFractionDigits="10" value="${dato.ri2}"/></td>
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
