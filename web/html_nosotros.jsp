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
    <main>
        <section class="container contenido-principal">
            <div class="jumbotron food-truck-section">
                <h1 class="display-4 food-truck-title">Food Truck: Sabores Inolvidables</h1>
                <p class="lead food-truck-description">
                    ???<br> Desde 2004, Food Truck ha deleitado a nuestros clientes con deliciosas opciones de comida
                    rápida.
                    Nuestra vasta experiencia y pasión por la buena comida nos han convertido en una opción popular para
                    todo tipo de eventos, desde bodas hasta reuniones corporativas.
                </p>
                <h2>¿Qué Ofrecemos?</h2>
                <ul class="list-group">
                    <li class="list-group-item">Food Trucks Completamente Equipados: Llevamos la cocina a donde tú estés. Nuestros camiones están
                        listos para servirte platos frescos y sabrosos.</li>
                    <li class="list-group-item">Variedad de Menú Fresco: Desde hamburguesas jugosas hasta tacos crujientes, ofrecemos una amplia
                        selección de opciones para satisfacer todos los gustos.</li>
                    <li class="list-group-item">Personal Capacitado: Nuestro equipo está entrenado en el manejo seguro de alimentos y se esfuerza
                        por brindarte un servicio excepcional.</li>
                    <li class="list-group-item">Cumplimiento Legal: Contamos con todas las certificaciones necesarias para operar legalmente,
                        incluyendo Registro de Comerciante, Certificación de Bomberos y Salud Ambiental.</li>
                    <li class="list-group-item">Servicio Personalizado: Tu satisfacción es nuestra prioridad. Nos esforzamos por ofrecerte un
                        servicio único y exclusivo.</li>
                </ul>
                <h2>Nuestra Misión y Visión</h2>
                <p>
                    <strong>Misión:</strong> Ofrecer a cada cliente una experiencia culinaria excepcional, cumpliendo con
                    los más altos estándares de calidad e higiene.<br>
                    <strong>Visión:</strong> Convertirnos en la opción preferida para eventos y actividades en toda la isla,
                    brindando sabores inolvidables y un servicio impecable.
                </p>
                <p>
                    ¡Contáctanos para una cotización gratis! Estamos emocionados de ser parte de tus eventos especiales.
                    ???
                </p>
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

    <footer id="footer"></footer>
    <script src="/js/loadHeaderFooter.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</body>