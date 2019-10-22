<%-- 
    Document   : esperar
    Created on : 21/10/2019, 11:08:55 AM
    Author     : elomj
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <body>
        <script>
            if ("listo" === "${generado}") {
                $("#contenido").load("${vista}");
            <%request.getSession().removeAttribute("generado");%>
            } else {
                $("#esperar").load("/aleatorios/esperar.jsp");
            }
        </script>
    </body>
</html>
