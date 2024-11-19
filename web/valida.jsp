<%-- 
    Document   : valida
    Created on : 18 oct. 2024, 12:07:01 a. m.
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.FoodTruck.Usuario"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String usuario = request.getParameter("usuario");
            String password = request.getParameter("password");
            HttpSession sesion = request.getSession();
            Usuario u = new Usuario();
            boolean log = u.valida(usuario, password);

            if (log) {
                out.println("<h1>Usuario valido</h1>");
                Integer logueado = (Integer) sesion.getAttribute("logueado");
                if (logueado == null) {
                    sesion.setAttribute("logueado", 1);
                    sesion.setAttribute("user", usuario);
                    response.sendRedirect("ColaUsuarios.jsp");
                }
            } else {
                out.println("<script type='text/javascript'>");
                out.println("alert('Usuario no válido. Por favor, verifique sus credenciales.');");
                out.println("window.location.href = 'login.jsp';"); // Redirigir al login después del alert
                out.println("</script>");
            }
        %>
    </body>
</html>
