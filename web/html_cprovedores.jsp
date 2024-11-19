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
                    <h2 class="fs-2 m-0">PROVEEDORES</h2>
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
                                <i class="fas fa-user me-2"></i>Colaborador
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
                            <input class="form-control me-2" type="search" placeholder="Ingresar codigo o RUC..." aria-label="Search">
                            <button class="btn btn-outline-danger" type="submit">Buscar</button>
                        </form>
                    </div>
                    <div class="col">
                        <button class="btn btn-danger" type="submit" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Agregar
                            Proveedores</button>
                    </div>
                </div>
                <hr>

                <div class="row my-5">
                    <h3 class="fs-4 mb-3">Lista de Proveedores</h3>
                    <div class="col table-responsive">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Codigo</th>
                                    <th scope="col">RUC</th>
                                    <th scope="col">Telefono</th>
                                    <th scope="col">Correo</th>
                                    <th scope="col">Descripcion</th>
                                    <th scope="col">Diriccion</th>
                                    <th scope="col">Accion</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>N00217417</td>
                                    <td>214590</td>
                                    <td>7853233</td>
                                    <td>pedro122@gmail.com</td>
                                    <td>Body content 2</td>
                                    <td>Mz E lt 15 San Miguel</td>
                                    <td>
                                        <button class="btn btn-custom" type="submit" data-bs-toggle="modal"
                                                data-bs-target="#staticBackdrop2">Editar</button>
                                        <button class="btn btn-custom" type="submit" data-bs-toggle="modal"
                                                data-bs-target="#staticBackdrop3">Ver</button>
                                        <button class="btn btn-custom">Eliminar</button>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">2</th>
                                    <td>N00225674</td>
                                    <td>1145786</td>
                                    <td>9921567</td>
                                    <td>carlos55@gmail.com</td>
                                    <td>Body content 2</td>
                                    <td>Mz A lt 14 San Carlos</td>
                                    <td>
                                        <button class="btn btn-custom" type="submit" data-bs-toggle="modal"
                                                data-bs-target="#staticBackdrop2">Editar</button>
                                        <button class="btn btn-custom" type="submit" data-bs-toggle="modal"
                                                data-bs-target="#staticBackdrop3">Ver</button>
                                        <button class="btn btn-custom">Eliminar</button>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">3</th>
                                    <td>N00553657</td>
                                    <td>95540360</td>
                                    <td>7853233</td>
                                    <td>pascal168@gmail.com</td>
                                    <td>Body content 2</td>
                                    <td>Mz B lt 04 San Borja</td>
                                    <td>
                                        <button class="btn btn-custom" type="submit" data-bs-toggle="modal"
                                                data-bs-target="#staticBackdrop2">Editar</button>
                                        <button class="btn btn-custom" type="submit" data-bs-toggle="modal"
                                                data-bs-target="#staticBackdrop3">Ver</button>
                                        <button class="btn btn-custom">Eliminar</button>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">4</th>
                                    <td>N00336764</td>
                                    <td>1467835</td>
                                    <td>95625633</td>
                                    <td>rosa869@gmail.com</td>
                                    <td>Body content 2</td>
                                    <td>Mz D lt 10 Los Olivos</td>
                                    <td>
                                        <button class="btn btn-custom" type="submit" data-bs-toggle="modal"
                                                data-bs-target="#staticBackdrop2">Editar</button>
                                        <button class="btn btn-custom" type="submit" data-bs-toggle="modal"
                                                data-bs-target="#staticBackdrop3">Ver</button>
                                        <button class="btn btn-custom">Eliminar</button>
                                    </td>
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
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Agregar Proveedor</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="row g-3 my-2">
                    <div class="row mb-3">
                        <div class="col">
                            <input type="text" class="form-control" placeholder="Codigo" aria-label="First name">
                        </div>
                        <div class="col">
                            <input type="text" class="form-control" placeholder="RUC" aria-label="First name">
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col">
                            <input type="text" class="form-control" placeholder="Telefono" aria-label="First name">
                        </div>
                        <div class="col">
                            <input type="text" class="form-control" placeholder="Correo" aria-label="Last name">
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col">
                            <input type="text" class="form-control" placeholder="Descripcion" aria-label="Last name">
                        </div>
                        <div class="col">
                            <input type="text" class="form-control" placeholder="Direccion" aria-label="Last name">
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-danger">Agregar Proveedor</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal 2 -->
<div class="modal fade" id="staticBackdrop2" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Editar Proveedor</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="row g-3 my-2">
                    <div class="row mb-3">
                        <div class="col">
                            <input type="text" class="form-control" placeholder="Codigo" aria-label="First name">
                        </div>
                        <div class="col">
                            <input type="text" class="form-control" placeholder="RUC" aria-label="First name">
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col">
                            <input type="text" class="form-control" placeholder="Telefono" aria-label="First name">
                        </div>
                        <div class="col">
                            <input type="text" class="form-control" placeholder="Correo" aria-label="Last name">
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col">
                            <input type="text" class="form-control" placeholder="Descripcion" aria-label="Last name">
                        </div>
                        <div class="col">
                            <input type="text" class="form-control" placeholder="Direccion" aria-label="Last name">
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-danger">Editar Proveedor</button>
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
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Ver Proveedor</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="row g-3 my-2">
                    <div class="row mb-3">
                        <div class="col">
                            <input type="text" class="form-control" placeholder="Codigo" aria-label="First name" disabled>
                        </div>
                        <div class="col">
                            <input type="text" class="form-control" placeholder="RUC" aria-label="First name" disabled>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col">
                            <input type="text" class="form-control" placeholder="Telefono" aria-label="First name" disabled>
                        </div>
                        <div class="col">
                            <input type="text" class="form-control" placeholder="Correo" aria-label="Last name" disabled>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col">
                            <input type="text" class="form-control" placeholder="Descripcion" aria-label="Last name" disabled>
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
                                        <h3>Correo Electrónico: juan.perez@example.com</h3>
                                    </div>
                                    <div class="col-12">
                                        <h3>Teléfono: +51 123 456 789</h3>
                                    </div>
                                    <div class="col-12">
                                        <h3>Dirección: Av. Ejemplo 123, Lima, Perú</h3>
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-12">
                                        <button type="button" class="btn btn-outline-primary btn-block">Editar
                                            Perfil</button>
                                    </div>
                                    <div class="col-12 mt-2">
                                        <button type="button" class="btn btn-outline-danger btn-block">Cerrar
                                            Sesión</button>
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
