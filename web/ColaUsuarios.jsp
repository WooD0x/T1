<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.LinkedList"%>
<%@page import="beans.FoodTruck.Usuario"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
  <link rel="stylesheet" href="css/style5.css" />
  <link rel="stylesheet" href="css/style4.css">
  <link rel="stylesheet" href="css/perfil.css">
  <link rel="stylesheet" href="css/usuariosAdmin.css">
  <title>Cola Usuarios</title>
</head>

<body>
  <div class="d-flex" id="wrapper">
    <!-- Sidebar -->
    <div class="bg-white2" id="sidebar-wrapper">
      <div class="sidebar-heading text-center py-4 primary-text fs-4 fw-bold text-uppercase border-bottom">
        <i class="bi bi-bank2"></i> FOOD TRUCK
      </div>
      <div class="list-group list-group-flush my-3">
        <a href="ColaPedidos.jsp" class="list-group-item list-group-item-action bg-transparent second-text fw-bold">
          <i class="bi bi-people-fill"></i> Pedidos</a>
        <a href="ColaUsuarios.jsp" class="list-group-item list-group-item-action bg-transparent second-text fw-bold">
          <i class="bi bi-people-fill"></i> Usuarios</a>
        <a href="ColaClientes.jsp" class="list-group-item list-group-item-action bg-transparent second-text fw-bold">
          <i class="bi bi-people-fill"></i> Clientes</a>
        <a href="ColaProductos.jsp" class="list-group-item list-group-item-action bg-transparent second-text active">
          <i class="bi bi-people-fill"></i>Productos</a>
        <a href="ColaDetallesPedidos.jsp" class="list-group-item list-group-item-action bg-transparent second-text fw-bold">
          <i class="bi bi-people-fill"></i>Detalles de los Pedidos</a>
        <a href="ColaCategorias.jsp" class="list-group-item list-group-item-action bg-transparent second-text fw-bold">
          <i class="bi bi-people-fill"></i>Categorias</a>
        <a href="login.jsp" class="list-group-item list-group-item-action bg-transparent fw-bold">
          <i class="fas fa-power-off me-2"></i>Salir</a>
      </div>
    </div>

    <!-- Page Content -->
    <div id="page-content-wrapper">
      <nav class="navbar navbar-expand-lg navbar-light bg-transparent py-4 px-4">
        <div class="d-flex align-items-center">
          <i class="fas fa-align-left primary-text fs-4 me-3" id="menu-toggle"></i>
          <h2 class="fs-2 m-0">USUARIOS</h2>
        </div>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
          data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
          aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle second-text fw-bold" href="#" id="navbarDropdown" role="button"
                data-bs-toggle="dropdown" aria-expanded="false">
                <i class="fas fa-user me-2"></i>Administrador
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="#" type="submit" data-bs-toggle="modal"
                    data-bs-target="#staticBackdrop4">Perfil</a></li>
                <li><a class="dropdown-item" href="#">Ajustes</a></li>
                <li><a class="dropdown-item" href="login.jsp">Salir</a></li>
              </ul>
            </li>
          </ul>
        </div>
      </nav>

      <hr>

      <div class="container-fluid px-4">
        <div class="row g-3 my-2">
          <div class="col-10">
            <!-- Botón para abrir el modal -->
            <button class="btn btn-danger" type="button" data-bs-toggle="modal" data-bs-target="#modalAgregarUsuario">Agregar Usuario</button>

            <!-- Modal para agregar un nuevo usuario -->
            <div class="modal fade" id="modalAgregarUsuario" tabindex="-1" aria-labelledby="modalLabelAgregarUsuario" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="modalLabelAgregarUsuario">Agregar Nuevo Usuario</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                    <form action="CrearUsuarioServlet" method="post">
                      <div class="mb-3">
                        <label for="usuario" class="form-label">Usuario</label>
                        <input type="text" class="form-control" id="usuario" name="usuario" required>
                      </div>
                      <div class="mb-3">
                        <label for="password" class="form-label">Contraseña</label>
                        <input type="password" class="form-control" id="password" name="password" required>
                      </div>
                      <div class="mb-3">
                        <label for="direccion" class="form-label">Dirección</label>
                        <input type="text" class="form-control" id="direccion" name="direccion" required>
                      </div>
                      <div class="mb-3">
                        <label for="dni" class="form-label">DNI</label>
                        <input type="text" class="form-control" id="dni" name="dni" required>
                      </div>
                      <div class="mb-3">
                        <label for="telefono" class="form-label">Teléfono</label>
                        <input type="text" class="form-control" id="telefono" name="telefono" required>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                        <button type="submit" class="btn btn-primary">Guardar</button>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <hr>

        <div class="row my-5">
          <h3 class="fs-4 mb-3">Lista de Usuarios</h3>
             <!-- Botón para Crear Nuevo Usuario -->
        <a href="CrearUsuario.jsp" class="btn btn-success mb-3">Crear Nuevo Usuario</a>
        
          <%
            Usuario u = new Usuario();
            LinkedList<Usuario> lista = u.listarUsuarios();
            int cont = 0;
          %>

          <div class="col table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th class="top" scope="col">#</th>
                  <th class="top" scope="col">Nombre</th>
                  <th class="top" scope="col">Usuario</th>
                  <th class="top" scope="col">Contraseña</th>
                  <th class="top" scope="col">Dirección</th>
                  <th class="top" scope="col">DNI</th>
                  <th class="top" scope="col">Teléfono</th>
                  <th class="top" scope="col">Rol</th>
                  <th class="top" scope="col">Ver</th>
                  <th class="top" scope="col">Editar</th>
                  <th class="top" scope="col">Eliminar</th>
                </tr>
              </thead>
              <tbody>
                <%
                  for (Usuario ux : lista) {
                  cont++;
                %>

                <tr>
                  <td><%= cont %></td>
                  <td><%= ux.getNombre() %></td>
                  <td><%= ux.getUsuario() %></td>
                  <td><%= ux.getPass() %></td>
                  <td><%= ux.getDireccion() %></td>
                  <td><%= ux.getDni() %></td>
                  <td><%= ux.getTelefono() %></td>
                  <td><%= ux.getRol() %></td>
                  <td>
                   <a href="VerUsuarioServlet?usuario=<%=ux.getUsuario()%>" class="btn btn-info">Ver</a>
                  </td>

<!-- Botón Editar -->
<td>
  <form action="EditarUsuario.jsp" method="get">
    <!-- Pasamos el nombre de usuario como parámetro oculto -->
    <input type="hidden" name="usuario" value="<%= ux.getUsuario() %>">
    <button type="submit" class="btn btn-warning">Editar</button>
  </form>
</td>



                  <!-- Botón Eliminar -->
<td>
    <form action="EliminarUsuarioServlet" method="post">
        <input type="hidden" name="usuario_id" value="<%= ux.getUsuario_id() %>">
        <button type="submit" class="btn btn-danger" onclick="return confirm('¿Estás seguro de que quieres eliminar este usuario?');">Eliminar</button>
    </form>
</td>

                </tr>

                <% } %>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
