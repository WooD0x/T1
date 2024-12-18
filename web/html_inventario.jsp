<body>
    <div class="d-flex" id="wrapper">
        <!-- Sidebar -->
    <div class="bg-white2" id="sidebar-wrapper">
      <div class="sidebar-heading text-center py-4 primary-text fs-4 fw-bold text-uppercase border-bottom"><i
          class="bi bi-bank2"></i> FOOD TRUCK</div>
      <div class="list-group list-group-flush my-3">
        <a href="ColaProveedores.jsp"
          class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
            class="bi bi-people-fill"></i> Proveedores</a>
        <a href="ColaUsuarios.jsp"
          class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
            class="bi bi-people-fill"></i> Usuarios</a>
        <a href="ColaClientes.jsp"
          class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
            class="bi bi-people-fill"></i> Clientes</a>
        <a href="productos.jsp"
          class="list-group-item list-group-item-action bg-transparent second-text active"><i
            class="bi bi-people-fill"></i>Productos</a>
        <a href="inventario.jsp"
          class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
            class="bi bi-people-fill"></i>Inventario</a>
        <a href="categorias.jsp"
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
                    <h2 class="fs-2 m-0">INVENTARIO</h2>
                </div>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle second-text fw-bold" href="#" id="navbarDropdown"
                                role="button" data-bs-toggle="dropdown" aria-expanded="false">
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
                            <input class="form-control me-2" type="search" placeholder="Buscar..." aria-label="Search">
                            <button class="btn btn-outline-danger" type="submit">Buscar</button>
                        </form>
                    </div>
                    <div class="col">
                        <button class="btn btn-danger" type="button" data-bs-toggle="modal"
                            data-bs-target="#staticBackdrop">Agregar
                            Productos</button>
                    </div>
                </div>
                <hr>

                <div class="row my-5">
                    <h3 class="fs-4 mb-3">Lista de Inventario</h3>
                    <div class="col table-responsive">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">ID</th>
                                    <th scope="col">Producto</th>
                                    <th scope="col">Cantidad Disponible</th>
                                    <th scope="col">SKU</th>
                                    <th scope="col">Categoria</th>
                                    <th scope="col">Estado del Stock</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>001</td>
                                    <td>Huevos</td>
                                    <td>75</td>
                                    <td>N2845</td>
                                    <td>Verdura</td>
                                    <td>Existente</td>
                                </tr>
                                <tr>
                                    <th scope="row">2</th>
                                    <td>002</td>
                                    <td>Tomates</td>
                                    <td>24</td>
                                    <td>N2847</td>
                                    <td>Verdura</td>
                                    <td>Existente </td>
                                </tr>
                                <tr>
                                    <th scope="row">3</th>
                                    <td>003</td>
                                    <td>Pollo</td>
                                    <td>17</td>
                                    <td>N1427</td>
                                    <td>Carnes</td>
                                    <td>Disponible</td>
                                </tr>
                                <tr>
                                    <th scope="row">4</th>
                                    <td>004</td>
                                    <td>Aj� Amarillo</td>
                                    <td>0</td>
                                    <td>N8693</td>
                                    <td>Verdura</td>
                                    <td>Agotado</td>
                                </tr>
                                <tr>
                                    <th scope="row">5</th>
                                    <td>005</td>
                                    <td>Pan</td>
                                    <td>0</td>
                                    <td>N1007</td>
                                    <td>Cereal</td>
                                    <td>Agotado</td>
                                </tr>
                                <tr>
                                    <th scope="row">6</th>
                                    <td>006</td>
                                    <td>Papas</td>
                                    <td>0</td>
                                    <td>N2573</td>
                                    <td>Tub�rculo</td>
                                    <td>Agotado</td>
                                </tr>
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
                    <h1 class="modal-title fs-5" id="staticBackdropLabel">Productos</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="row g-3 my-2">
                        <div class="row mb-3">
                            <div class="col">
                                <input type="text" class="form-control" placeholder="ID" aria-label="First name">
                            </div>
                            <div class="col">
                                <input type="text" class="form-control" placeholder="Nombre" aria-label="First name">
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col">
                                <input type="text" class="form-control" placeholder="Tipo" aria-label="First name">
                            </div>
                            <div class="col">
                                <input type="text" class="form-control" placeholder="SKU" aria-label="Last name">
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col">
                                <input type="text" class="form-control" placeholder="Precio" aria-label="First name">
                            </div>
                            <div class="col">
                                <input type="text" class="form-control" placeholder="Inventario" aria-label="Last name">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-danger">Agregar Productos</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal 4-->
    <div class="modal fade" id="staticBackdrop4" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
        aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
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
                                    <img src="img/imagenes/usuario.png" alt="Usuario"
                                        class="img-fluid rounded-circle mb-3">
                                </div>
                                <div class="col-12 col-md-8">
                                    <h1>Perfil de Usuario</h1>
                                    <div class="row mt-3">
                                        <div class="col-12">
                                            <h3>Nombre: Juan Perez</h3>
                                        </div>
                                        <div class="col-12">
                                            <h3>Correo Electr�nico: juan.perez@example.com</h3>
                                        </div>
                                        <div class="col-12">
                                            <h3>Tel�fono: +51 123 456 789</h3>
                                        </div>
                                        <div class="col-12">
                                            <h3>Direcci�n: Av. Ejemplo 123, Lima, Per�</h3>
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-12">
                                            <button type="button" class="btn btn-outline-primary btn-block">Editar
                                                Perfil</button>
                                        </div>
                                        <div class="col-12 mt-2">
                                            <a href="LoginColaboradores.html"><button type="button" class="btn btn-outline-danger btn-block">Cerrar
                                                Sesi�n</button></a>
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
