<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <title>Lista de Pedidos</title>
</head>
<body>
    <div class="container mt-5">
        <h2>Lista de Pedidos</h2>

        <%-- Mostrar mensaje de error si lo hay --%>
        <c:if test="${not empty error}">
            <div class="alert alert-danger">${error}</div>
        </c:if>

        <%-- Suponiendo que tienes un objeto LinkedList<Pedido> llamada listaPedidos --%>
        <table class="table table-bordered mt-3">
            <thead>
                <tr>
                    <th>ID Pedido</th>
                    <th>Cliente ID</th>
                    <th>Fecha</th>
                    <th>Total</th>
                    <th>Estado</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="pedido" items="${listaPedidos}">
                    <tr>
                        <td>${pedido.pedidoId}</td>
                        <td>${pedido.clienteId}</td>
                        <td>${pedido.fecha}</td>
                        <td>$${pedido.total}</td>
                        <td>${pedido.estado}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <a href="ColaPedidos.jsp" class="btn btn-secondary mt-3">Volver al inicio</a>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
