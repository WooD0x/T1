<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.FoodTruck.DetallesPedido"%>
<%@page import="beans.FoodTruck.Producto"%>
<%@page import="java.util.LinkedList"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <title>Detalles del Pedido</title>
</head>
<body>
    <div class="container mt-5">
        <div class="card">
            <div class="card-header bg-primary text-white">
                <h3 class="mb-0">Detalles del Pedido</h3>
            </div>
            <div class="card-body">
                <%
                    // Obtener la lista de detalles del pedido pasados desde el servlet
                    LinkedList<DetallesPedido> detallesPedido = (LinkedList<DetallesPedido>) request.getAttribute("detallesPedido");
                    if (detallesPedido != null && !detallesPedido.isEmpty()) {
                %>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>ID Producto</th>
                            <th>Nombre Producto</th>
                            <th>Cantidad</th>
                            <th>Subtotal</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            for (DetallesPedido detalle : detallesPedido) {
                                Producto producto = (Producto) request.getAttribute("producto" + detalle.getProductoId()); // Obtenemos el producto por su ID
                        %>
                        <tr>
                            <td><%= detalle.getProductoId() %></td>
                            <td><%= producto.getNombre() %></td>
                            <td><%= detalle.getCantidad() %></td>
                            <td>S/. <%= detalle.getSubtotal() %></td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
                <%
                    } else {
                %>
                <div class="alert alert-danger" role="alert">
                    No se encontraron detalles para este pedido.
                </div>
                <%
                    }
                %>
            </div>
            <div class="card-footer text-end">
                <a href="ColaDetallesPedidos.jsp" class="btn btn-secondary">Volver</a>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
