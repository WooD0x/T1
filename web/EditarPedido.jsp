<%@ page import="beans.FoodTruck.Pedido" %>
<%@ page import="java.util.List" %>

<%
    Pedido pedido = (Pedido) request.getAttribute("pedido");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Editar Pedido</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h2>Editar Pedido</h2>

        <%-- Verificar si hay errores --%>
        <% if(request.getAttribute("error") != null) { %>
            <div class="alert alert-danger">
                <%= request.getAttribute("error") %>
            </div>
        <% } %>

        <form action="EditarPedidoServlet" method="post">
            <div class="form-group">
                <label for="pedidoId">ID del Pedido:</label>
                <input type="text" class="form-control" id="pedidoId" name="pedidoId" value="<%= pedido.getPedidoId() %>" readonly>
            </div>

            <div class="form-group">
                <label for="clienteId">ID del Cliente:</label>
                <input type="text" class="form-control" id="clienteId" name="clienteId" value="<%= pedido.getClienteId() %>" readonly>
            </div>

            <div class="form-group">
                <label for="estado">Estado:</label>
                <select class="form-control" id="estado" name="estado">
                    <option value="Pendiente" <%= pedido.getEstado().equals("Pendiente") ? "selected" : "" %>>Pendiente</option>
                    <option value="En preparación" <%= pedido.getEstado().equals("En preparación") ? "selected" : "" %>>En preparación</option>
                    <option value="Completado" <%= pedido.getEstado().equals("Completado") ? "selected" : "" %>>Completado</option>
                    <option value="Cancelado" <%= pedido.getEstado().equals("Cancelado") ? "selected" : "" %>>Cancelado</option>
                </select>
            </div>

            <div class="form-group">
                <label for="total">Total:</label>
                <input type="number" step="0.01" class="form-control" id="total" name="total" value="<%= pedido.getTotal() %>">
            </div>

            <button type="submit" class="btn btn-success">Guardar Cambios</button>
        </form>

        <a href="ColaPedidos.jsp" class="btn btn-secondary mt-3">Cancelar</a>
    </div>
</body>
</html>
