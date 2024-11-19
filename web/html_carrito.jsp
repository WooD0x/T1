<body>
    <header class="hero">
        <nav class="nav container container--hero">

            <!-- Lista de navegación -->
            <ul class="nav__list">

                <li class="nav__item"><a class="nav__link" href="index.jsp">Inicio</a></li>
                <li class="nav__item"><a class="nav__link" href="tienda.jsp">Tienda</a></li>
                <li class="nav__item"><a class="nav__link" href="nosotros.jsp">Sobre nosotros</a></li>
                <li class="nav__item"><a class="nav__link" href="#">Contacto</a></li>
                <li class="search-container">
                    <h1 class="nav__logo">FOOD TRUCK</h1>
                    <form>
                        <input type="search" placeholder="Buscar...">
                        <button id="busquedabtn" type="submit"><i class="fas fa-search"></i></button>
                    </form>
                </li>
                <div class="btn-group ms-3" role="group" id="user-dropdown">
                    <button type="button" class="btn btn-light dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="fas fa-user"></i> Entrar
                    </button>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="Login.html">Clientes</a></li>
                        <li><a class="dropdown-item" href="LoginColaboradores.html">Colaboradores</a></li>
                    </ul>
                </div>
                <li>
                    <a href="carrito.jsp" class="nav__link"><i class="fas fa-shopping-cart"></i></a>
                </li>
            </ul>
            <!-- Contenedor del botón de menú -->
            <div class="nav__toggle">
                <button class="nav__toggle-btn" aria-label="Toggle navigation">FOOD TRUCK
                    <i class="fas fa-bars"></i> <!-- Icono del botón de menú -->
                </button>
            </div>
        </nav>
    </header>
    <main class="container mt-5">
        <div class="row mt-5">
            <div class="col-12 col-md-6">
                <h1>Mi carrito</h1>
                <hr class="border border-danger border-2 opacity-50">

                <div class="row mt-3">
                    <div class="col-6">
                        <img src="img/imagenes/usuario.png" alt="Usuario" class="img-fluid img-foto-usuario">
                    </div>
                    <div class="col-6 mt-3">
                        <h2>Producto</h2>
                        <h2>S/.20.50</h2>
                    </div>
                    <div  class="col-12 mt-3">
                        <nav aria-label="Page navigation example">
                            <button  class="btn btn-outline-danger btn_mover" >-</button>
                            <button class="btn btn-outline-danger btn_mover">1</button>
                            <button class="btn btn-outline-danger btn_mover">+</button>
                            <button class="btn btn-danger ml-3 btnnuevo">X</button>
                        </nav>
                    </div>
                    <div class="col-12 text-center">
                        <hr class="border border-danger border-2 opacity-50">
                    </div>
                    <div class="col-12 mt-3">
                        <h2>Ingresar código promocional</h2>
                        <form role="search">
                            <input type="search" placeholder="Ingresa un Código promocional" aria-label="Search"
                                   class="form-control d-inline-block w-75">
                            <button type="submit" class="btn btn-outline-danger ml-2">Aplicar</button>
                        </form>
                    </div>
                    <div class="col-12 mt-3">
                        <h2>Agregar una nota</h2>
                        <textarea class="form-control" rows="3"
                                  placeholder="¿Instrucciones? ¿Requisitos especiales? Agrégalos aquí."></textarea>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-6">

                <h1 class="text-center">Resumen del Pedido</h1>
                <hr class="border border-danger border-2 opacity-50">

                <div class="row mb-4">
                    <div class="col">
                        <h3>Subtotal</h3>
                    </div>
                    <div class="col">
                        <h3 class="text-right">S/.20.00</h3>
                    </div>
                </div>

                <div class="row mb-4">
                    <div class="col">
                        <h3>Impuesto:</h3>
                    </div>
                    <div class="col">
                        <h3 class="text-right">S/.0.00</h3>
                    </div>
                </div>

                <div class="row mb-4">
                    <div class="col">
                        <h3>Localización</h3>
                    </div>
                    <div class="col">
                        <li class="list-unstyled">
                            <a href="">Lima, Peru</a>
                        </li>
                    </div>
                </div>
                <br><br>
                <hr class="border border-danger border-2 opacity-50">
                <div class="row mb-4">
                    <div class="col">
                        <h3>Total</h3>
                    </div>
                    <div class="col">
                        <h3 class="text-right">S/.20.00</h3>
                    </div>
                </div>

                <button class="btn btn-outline-danger btn-block" type="button" data-bs-toggle="modal"
                        data-bs-target="#staticBackdrop">Finalizar Compra</button>
                <p class="text-center mt-2">Pago Seguro</p>
                <button type="submit" class="btn btn-outline-danger btn-block mt-3" data-bs-toggle="modal"
                        data-bs-target="#staticBackdrop">Atencion / Recojo Tienda</button>
                <button type="submit" class="btn btn-outline-danger btn-block mt-2">Delivery</button>

            </div>
            <!-- Modal -->
            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
                 aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="staticBackdropLabel">Finalizar Compra</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="container mt-5">
                                <div class="row justify-content-center">
                                    <div class="col-md-12">
                                        <div class="card">
                                            <div class="card-header text-center">
                                                <h4>Pasarela de Pago</h4>
                                            </div>
                                            <div class="card-body">
                                                <form>
                                                    <div class="form-group">
                                                        <label for="cardNumber">Número de Tarjeta</label>
                                                        <input type="text" class="form-control" id="cardNumber" placeholder="1234 5678 9012 3456">
                                                    </div>
                                                    <div class="form-row">
                                                        <div class="form-group col-md-6">
                                                            <label for="expiryDate">Fecha de Expiración</label>
                                                            <input type="text" class="form-control" id="expiryDate" placeholder="MM/AA">
                                                        </div>
                                                        <div class="form-group col-md-6">
                                                            <label for="cvv">CVV</label>
                                                            <input type="text" class="form-control" id="cvv" placeholder="123">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="cardHolder">Nombre del Titular</label>
                                                        <input type="text" class="form-control" id="cardHolder" placeholder="Nombre Completo">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="billingAddress">Dirección de Facturación</label>
                                                        <input type="text" class="form-control" id="billingAddress"
                                                               placeholder="Dirección Completa">
                                                    </div>

                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-danger">Realizar Pago</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <h3>Ubicación</h3>
                    <address>
                        Av. Independencia 407, Ate, 15487, Perú<br>
                        RESTAURANTE FOODTRUCK SAC.
                    </address>
                </div>
                <div class="col-md-3">
                    <h3>Menú</h3>
                    <ul class="list-unstyled">
                        <li><a href="#">Inicio</a></li>
                        <li><a href="#">Tienda</a></li>
                        <li><a href="#">Sobre Nosotros</a></li>
                        <li><a href="#">Contacto</a></li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <h3>Políticas</h3>
                    <ul class="list-unstyled">
                        <li><a href="#">Términos y Condiciones</a></li>
                        <li><a href="#">Política de Privacidad</a></li>
                        <li><a href="#">Política de Reembolso</a></li>
                        <li><a href="#">Política de Envíos</a></li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <h3>Redes sociales</h3>
                    <ul class="list-inline">
                        <li class="list-inline-item"><a href="#" class="btn btn-secondary"><i class="bi bi-facebook"></i></a></li>
                        <li class="list-inline-item"><a href="#" class="btn btn-secondary"><i class="bi bi-instagram"></i></a></li>
                        <li class="list-inline-item"><a href="#" class="btn btn-secondary"><i class="bi bi-tiktok"></i></a></li>
                        <li class="list-inline-item"><a href="#" class="btn btn-secondary"><i class="bi bi-twitter"></i></a></li>
                        <li class="list-inline-item"><a href="#" class="btn btn-secondary"><i class="bi bi-linkedin"></i></a></li>
                        <li class="list-inline-item"><a href="#" class="btn btn-secondary"><i class="bi bi-youtube"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="container" style= "text-align:center">
            <p>&copy; 2024 Foodtruck. Todos los derechos reservados.</p>
        </div>
    </footer>
    <script src="/js/loadHeaderFooter.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
    crossorigin="anonymous"></script>



</body>