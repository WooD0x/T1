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
    <main class="container">
        <div class="row justify-content-center mt-5">
            <div class="col-md-6">
                <div class="card shadow-lg">
                    <div class="card-body">
                        <h1 class="card-title text-center text-danger">EMPIECE A ORDENAR</h1>
                        <h2 class="card-subtitle text-center text-danger mb-3">TIPO DE PEDIDO</h2>
                        <div class="form-group">
                            <select class="form-control" id="orderType" onchange="toggleOrderOptions()">
                                <option value="pickup">Recojo en tienda</option>
                                <option value="delivery">Delivery</option>
                            </select>
                        </div>
                        <div id="orderOptions">
                            <div id="pickupOptions" class="mb-3">
                                <p>Ubicación: Av. Independencia 407, Ate, 15487, Perú</p>
                                <button onclick="confirmPickupOrder()" class="btn btn-danger btn-block">Confirmar Recojo
                                    en Tienda</button>
                            </div>
                            <div id="deliveryOptions" class="mb-3" style="display: none;">
                                <input type="text" class="form-control" id="deliveryAddress"
                                       placeholder="Ingrese su dirección">
                            </div>
                        </div>
                        <button onclick="saveChanges()" class="btn btn-danger btn-block">GUARDAR CAMBIOS</button>
                        <button onclick="goBack()" class="btn btn-danger btn-block">Volver</button>
                    </div>
                </div>
            </div>
        </div>

        <section class="mt-5 text-center bg-section">
            <h2 class="text-dark section-title">HOLA, sírvase a elegir sus productos</h2>

            <div class="card-container">
                <div class="category-card">
                    <div class="card-body">
                        <h3 class="card-title text-light">Categorías</h3>
                        <div class="row row-cols-1 row-cols-md-3 g-4">
                            <div class="col">
                                <div class="category-item">
                                    <img src="img/categoria/hamburguesas.jpg" alt="Hamburguesas" class="card-img-top">
                                    <div class="card-body text-center">
                                        <a href="tienda.jsp" class="text-dark text-decoration-none">Hamburguesas</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="category-item">
                                    <img src="img/categoria/pollo.png" alt="Pollo" class="card-img-top">
                                    <div class="card-body text-center">
                                        <a href="tienda2.jsp" class="text-dark text-decoration-none">Pollo</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="category-item">
                                    <img src="img/categoria/tacos.jpg" alt="Tacos" class="card-img-top">
                                    <div class="card-body text-center">
                                        <a href="#" class="text-dark text-decoration-none">Tacos</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="category-card mt-4">
                    <div class="card-body">
                        <h3 class="card-title text-light">Bebidas</h3>
                        <div class="row row-cols-1 row-cols-md-3 g-4">
                            <div class="col">
                                <div class="category-item">
                                    <img src="img/categoria/gaseosas.jpg" alt="Gaseosa" class="card-img-top">
                                    <div class="card-body text-center">
                                        <a href="#" class="text-dark text-decoration-none">Gaseosa</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="category-item">
                                    <img src="img/categoria/jugos.jpg" alt="Jugos" class="card-img-top">
                                    <div class="card-body text-center">
                                        <a href="tienda3.jsp" class="text-dark text-decoration-none">Jugos</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="category-item">
                                    <img src="img/categoria/tragos.jpg" alt="Tragos" class="card-img-top">
                                    <div class="card-body text-center">
                                        <a href="#" class="text-dark text-decoration-none">Tragos</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
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

</body>
