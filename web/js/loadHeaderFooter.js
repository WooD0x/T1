document.addEventListener('DOMContentLoaded', () => {
    loadHeader();
    loadFooter();
});

function loadHeader() {
    document.querySelector('header').innerHTML = `
           <header class="hero">
    <nav class="nav container container--hero">
        
        <!-- Lista de navegación -->
        <ul class="nav__list">
       
            <li class="nav__item"><a class="nav__link" href="inicio.html">Inicio</a></li>
            <li class="nav__item"><a class="nav__link" href="Tienda.html">Tienda</a></li>
            <li class="nav__item"><a class="nav__link" href="Nostros.html">Sobre nosotros</a></li>
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
                <a href="carrito.html" class="nav__link"><i class="fas fa-shopping-cart"></i></a>
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
    `;
}

function loadFooter() {
    document.querySelector('footer').innerHTML = `
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
    `;
}


document.addEventListener('DOMContentLoaded', function () {
    const navToggle = document.querySelector('.nav__toggle-btn');
    const navList = document.querySelector('.nav__list');

    navToggle.addEventListener('click', function () {
        navList.classList.toggle('active');
    });
});