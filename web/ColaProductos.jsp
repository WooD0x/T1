<%@page import="beans.FoodTruck.Cliente"%>
<%@page import="beans.FoodTruck.Producto"%>
<%@page import="beans.FoodTruck.Categoria"%>
<%@page import="java.util.LinkedList"%>
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
  <link rel="stylesheet" href="css/clientesAdmin.css">
  <title>ColaClientes</title>
</head>

<body>
  <div class="d-flex" id="wrapper">
    <!-- Sidebar -->
    <div class="bg-white2" id="sidebar-wrapper">
      <div class="sidebar-heading text-center py-4 primary-text fs-4 fw-bold text-uppercase border-bottom"><i
          class="bi bi-bank2"></i> FOOD TRUCK</div>
      <div class="list-group list-group-flush my-3">
        <a href="ColaPedidos.jsp"
          class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
            class="bi bi-people-fill"></i> Pedidos</a>
        <a href="ColaUsuarios.jsp"
          class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
            class="bi bi-people-fill"></i> Usuarios</a>
        <a href="ColaClientes.jsp"
          class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
            class="bi bi-people-fill"></i> Clientes</a>
        <a href="ColaProductos.jsp"
          class="list-group-item list-group-item-action bg-transparent second-text active"><i
            class="bi bi-people-fill"></i>Productos</a>
        <a href="ColaDetallesPedidos.jsp"
          class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
            class="bi bi-people-fill"></i>Detalles de los Pedidos</a>
        <a href="ColaCategorias.jsp"
          class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
            class="bi bi-people-fill"></i>Categorias</a>
        <a href="login.jsp" class="list-group-item list-group-item-action bg-transparent  fw-bold"><i
            class="fas fa-power-off me-2"></i>Salir</a>
      </div>
    </div>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">
      <nav class="navbar navbar-expand-lg navbar-light bg-transparent py-4 px-4">
        <div class="d-flex align-items-center">
          <i class="fas fa-align-left primary-text fs-4 me-3" id="menu-toggle"></i>
          <h2 class="fs-2 m-0">CLIENTES</h2>
        </div>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
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
                <li><a class="dropdown-item" href="LoginColaboradores.html">Salir</a></li>
              </ul>
            </li>
          </ul>
        </div>
      </nav>

      <hr>

      <div class="container-fluid px-4">
        <div class="row g-3 my-2">
          <div class="col-10">
            <form class="d-flex" role="search">
              <button class="btn btn-outline-danger" type="submit">Buscar</button>
              <input class="form-control me-2" type="search" placeholder="Ingresar codigo o DNI..." aria-label="Search">
            </form>
          </div>
          <div class="col">
            <button class="btnAgregar" type="submit" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
              <span>Agregar</span>
            </button>
            
          </div>
        </div>
        <hr>


               <div class="row my-5">
          <h3 class="fs-4 mb-3">Lista de Productos</h3>
             <!-- BotÛn para Crear Nuevo Usuario -->
        <a href="CrearProducto.jsp" class="btn btn-success mb-3">Crear Nuevo Producto</a>
        
          <%
            Producto p = new Producto();
            LinkedList<Producto> lista = p.listarProductos();
            int cont = 0;
          %>

          <div class="col table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th class="top" scope="col">#</th>
                  <th class="top" scope="col">Nombre</th>
                  <th class="top" scope="col">Precio</th>
                  <th class="top" scope="col">Categoria</th>
                  <th class="top" scope="col">Ver</th>
                  <th class="top" scope="col">Editar</th>
                  <th class="top" scope="col">Eliminar</th>
                </tr>
              </thead>
              <tbody>
                <%
                  for (Producto px : lista) {
                  cont++;
                %>

                <tr>
                  <td><%= cont %></td>
                  
                  <td><%= px.getNombre() %></td>
                  <td><%= px.getPrecio() %></td>
                  <td><%= px.getCategoriaId() %></td>

                  <td>
                         <a href="VerProductoServlet?producto_id=<%= px.getProductoId() %>" class="btn btn-info">Ver</a>
                  </td>


<!-- BotÛn Editar -->
<td>
    <a href="EditarProductoServlet?productoId=<%= px.getProductoId() %>" class="btn btn-warning">Editar</a>
</td>





                  <!-- BotÛn Eliminar -->
<td>
    <a href="EliminarProductoServlet?productoId=<%= px.getProductoId() %>" class="btn btn-danger" onclick="return confirm('øEst·s seguro de que deseas eliminar este producto?');">Eliminar</a>
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
        
        
        
  <!-- /#page-content-wrapper -->
  </div>

  <!-- Modal -->
  <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="staticBackdropLabel">Agregar Cliente</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <div class="row g-3 my-2">
            <div class="row mb-3">
              <div class="col">
                <input type="text" class="form-control" placeholder="Codigo" aria-label="First name">
              </div>
              <div class="col">
                <input type="text" class="form-control" placeholder="DNI" aria-label="First name">
              </div>
            </div>

            <div class="row mb-3">
              <div class="col">
                <input type="text" class="form-control" placeholder="Nombres" aria-label="First name">
              </div>
              <div class="col">
                <input type="text" class="form-control" placeholder="Apellidos" aria-label="Last name">
              </div>
            </div>

            <div class="row mb-3">
              <div class="col">
                <input type="text" class="form-control" placeholder="Telefono" aria-label="First name">
              </div>
              <div class="col">
                <input type="text" class="form-control" placeholder="Direccion" aria-label="Last name">
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <button type="button" class="btn btn-danger">Agregar Cliente</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Modal 2-->
  <div class="modal fade" id="staticBackdrop2" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="staticBackdropLabel">Editar Cliente</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <div class="row g-3 my-2">
            <div class="row mb-3">
              <div class="col">
                <input type="text" class="form-control" placeholder="Codigo" aria-label="First name">
              </div>
              <div class="col">
                <input type="text" class="form-control" placeholder="DNI" aria-label="First name">
              </div>
            </div>

            <div class="row mb-3">
              <div class="col">
                <input type="text" class="form-control" placeholder="Nombres" aria-label="First name">
              </div>
              <div class="col">
                <input type="text" class="form-control" placeholder="Apellidos" aria-label="Last name">
              </div>
            </div>

            <div class="row mb-3">
              <div class="col">
                <input type="text" class="form-control" placeholder="Telefono" aria-label="First name">
              </div>
              <div class="col">
                <input type="text" class="form-control" placeholder="Direccion" aria-label="Last name">
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <button type="button" class="btn btn-danger">Editar Cliente</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Modal 3 -->
  <div class="modal fade" id="staticBackdrop3" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="staticBackdropLabel">Ver Cliente</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <div class="row g-3 my-2">
            <div class="row mb-3">
              <div class="col">
                <input type="text" class="form-control" placeholder="Codigo" aria-label="First name" disabled>
              </div>
              <div class="col">
                <input type="text" class="form-control" placeholder="DNI" aria-label="First name" disabled>
              </div>
            </div>

            <div class="row mb-3">
              <div class="col">
                <input type="text" class="form-control" placeholder="Nombres" aria-label="First name" disabled>
              </div>
              <div class="col">
                <input type="text" class="form-control" placeholder="Apellidos" aria-label="Last name" disabled>
              </div>
            </div>

            <div class="row mb-3">
              <div class="col">
                <input type="text" class="form-control" placeholder="Telefono" aria-label="First name" disabled>
              </div>
              <div class="col">
                <input type="text" class="form-control" placeholder="Direccion" aria-label="Last name" disabled>
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Modal 4-->
  <div class="modal fade" id="staticBackdrop4" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="staticBackdropLabel">Ver Perfil</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <main>
            <div class="container mt-5">
              <div class="row">
                <div class="col-12 col-md-4 text-center">
                  <img src="img/imagenes/usuario.png" alt="Usuario" class="img-fluid rounded-circle mb-3">
                </div>
                <div class="col-12 col-md-8">
                  <h1>Perfil de Usuario</h1>
                  <div class="row mt-3">
                    <div class="col-12">
                      <h3>Nombre: Juan Perez</h3>
                    </div>
                    <div class="col-12">
                      <h3>Correo Electronico: juan.perez@example.com</h3>
                    </div>
                    <div class="col-12">
                      <h3>Telefono: +51 123 456 789</h3>
                    </div>
                    <div class="col-12">
                      <h3>Direccion: Av. Ejemplo 123, Lima, Per√∫</h3>
                    </div>
                  </div>
                  <div class="row mt-3">
                    <div class="col-12">
                      <button type="button" class="btn btn-outline-primary btn-block">Editar
                        Perfil</button>
                    </div>
                    <div class="col-12 mt-2">
                      <button type="button" class="btn btn-outline-danger btn-block">Cerrar
                        Sesi√≥n</button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </main>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>


  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
  <script>
    var el = document.getElementById("wrapper");
    var toggleButton = document.getElementById("menu-toggle");

    toggleButton.onclick = function () {
      el.classList.toggle("toggled");
    };
  </script>
</body>

</html>