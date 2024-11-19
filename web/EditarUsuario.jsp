<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.FoodTruck.Usuario"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <title>Editar Usuario</title>
</head>
<body>
    <div class="container mt-5">
        <h2>Editar Usuario</h2>
        <%
            // Obtener el ID de usuario a editar desde la URL
            String usuarioParam = request.getParameter("usuario");
            Usuario u = new Usuario();
            // Llamar al método verUsuario para obtener los datos del usuario
            Usuario usuario = u.verUsuario(usuarioParam);
        %>
        <form action="EditarUsuarioServlet" method="post">
            <!-- Pasar el ID del usuario de manera oculta para la actualización -->
            <input type="hidden" name="usuario_id" value="<%= usuario.getUsuario_id() %>" />
            
            <div class="mb-3">
                <label for="nombre" class="form-label">Nombre</label>
                <input type="text" class="form-control" id="nombre" name="nombre" value="<%= usuario.getNombre() %>" required />
            </div>

            <div class="mb-3">
                <label for="dni" class="form-label">DNI</label>
                <input type="text" class="form-control" id="dni" name="dni" value="<%= usuario.getDni() %>" required maxlength="20" />
            </div>

            <div class="mb-3">
                <label for="telefono" class="form-label">Teléfono</label>
                <input type="text" class="form-control" id="telefono" name="telefono" value="<%= usuario.getTelefono() %>" required maxlength="15" />
            </div>

            <div class="mb-3">
                <label for="direccion" class="form-label">Dirección</label>
                <input type="text" class="form-control" id="direccion" name="direccion" value="<%= usuario.getDireccion() %>" required />
            </div>

            <div class="mb-3">
                <label for="usuario" class="form-label">Nombre de Usuario</label>
                <input type="text" class="form-control" id="usuario" name="usuario" value="<%= usuario.getUsuario() %>" required />
            </div>

            <div class="mb-3">
                <label for="pass" class="form-label">Contraseña</label>
                <input type="password" class="form-control" id="pass" name="pass" value="<%= usuario.getPass() %>" required />
            </div>

            <div class="mb-3">
                <label for="rol" class="form-label">Rol</label>
                <select class="form-select" id="rol" name="rol" required>
                    <option value="Administrador" <%= usuario.getRol().equals("Administrador") ? "selected" : "" %>>Administrador</option>
                    <option value="Empleado" <%= usuario.getRol().equals("Empleado") ? "selected" : "" %>>Empleado</option>
                </select>
            </div>

            <button type="submit" class="btn btn-primary">Actualizar Usuario</button>
            <a href="ColaUsuarios.jsp" class="btn btn-secondary">Cancelar</a>
        </form>
    </div>
</body>
</html>
