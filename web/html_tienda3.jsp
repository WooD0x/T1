<body>
    <header class="hero">
        <nav class="nav container container--hero">
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
    <main class="">
        <section class="container contenido-principal">

            <div class="promocion">
                <img src="img/jugos/banner-1.png" width="10" height="25" alt="Promoción" class="img-fluid">
            </div>

            <label for="ordenar">Ordenado por:</label>
            <select id="ordenar">
                <option value="recomendados">Recomendados</option>
                <option value="nuevo">Lo más nuevo</option>
                <option value="mayor">Precio (mayor a menor)</option>
                <option value="menor">Precio (menor a mayor)</option>
                <option value="az">Nombre de A-Z</option>
                <option value="za">Nombre de Z-A</option>
            </select>
            <br><br>

            <div class="row text-center justify-content-center">
                <div class="producto m-4 col-md-auto">
                    <a><img src="img/jugos/papaya.png" width="270" height="270" alt="Burger" class="img-producto"
                            data-bs-toggle="modal" data-bs-target="#exampleModal"></a>
                    <h3>JUGO DE PAPAYA</h3>
                    <h4>S/.13.50</h4>
                </div>

                <div class="producto2 m-4 col-md-auto">
                    <img src="img/jugos/fresa.png" width="270" height="270" alt="Burger" class=""
                        data-bs-toggle="modal" data-bs-target="#exampleModa2">
                    <h3>JUGO DE FRESA</h3>
                    <h4>S/.15.50</h4>
                </div>

                <div class="producto3 m-4 col-md-auto">
                    <a><img src="img/jugos/maracuya.png" width="150" height="270" alt="Burger" class=""
                            data-bs-toggle="modal" data-bs-target="#exampleModa3"></a>
                    <h3>JUGO DE MARACUYA</h3>
                    <h4>S/.8.90</h4>
                </div>

                <div class="producto4 m-4 col-md-auto">
                    <a><img src="img/jugos/naranja.png" width="150" height="270" alt="Burger" class=""
                            data-bs-toggle="modal" data-bs-target="#exampleModa4"></a>
                    <h3>JUGO DE NARANJA</h3>
                    <h4>S/.10.50</h4>
                </div>

                <div class="producto5 m-4 col-md-auto">
                    <a><img src="img/jugos/piña.png" width="150" height="270" alt="Burger" class=""
                            data-bs-toggle="modal" data-bs-target="#exampleModa5"></a>
                    <h3>JUGO DE PIÑA</h3>
                    <h4>S/.12.50</h4>
                </div>

                <!-- Modal -->
                <div class="modal fade modal-lg" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="exampleModalLabel">JUGO DE PAPAYA</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="modal-body">
                                    <div class="img-fluid text-center">
                                        <img src="img/jugos/papaya.png" alt="burguers" class="img-modal">
                                    </div>
                                    <div class="info-section">
                                        <h1>JUGO DE PAPAYA</h1>
                                        <p class="sku">SKU: 004</p>
                                        <p class="price">S/. 13.50</p>
                                        <p class="description">
                                            Nuestro Jugo de Papaya Fresca está hecho con las papayas más jugosas y naturales, sin aditivos ni conservantes. Rico en vitaminas A, C y E, antioxidantes y fibra, este jugo no solo es delicioso, sino también saludable.
                                        </p>
                                        <p class="ingredientes">
                                            ¡Pídela ya con delivery!
                                        </p>
                                        <div class="quantity">
                                            <button class="minus">-</button>
                                            <input type="text" value="1" readonly>
                                            <button class="plus">+</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <div class="buttons">
                                    <button class="add-to-cart">Agregar al carrito</button>
                                    <a href="carrito.html"><button class="buy-now">Realizar compra</button></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Moda2 -->
                <div class="modal fade modal-lg" id="exampleModa2" tabindex="-1" aria-labelledby="exampleModalLabe2"
                    aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="exampleModalLabel">JUGO DE FRESA</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="modal-body">
                                    <div class="img-fluid text-center">
                                        <img src="img/jugos/fresa.png" alt="burguers" class="img-modal">
                                    </div>
                                    <div class="info-section">
                                        <h1>JUGO DE FRESA</h1>
                                        <p class="sku">SKU: 004</p>
                                        <p class="price">S/. 15.50</p>
                                        <p class="description">Nuestro Jugo de Fresa Fresca está elaborado con fresas maduras y jugosas, sin aditivos ni conservantes. Disfruta de un sabor naturalmente dulce y una explosión de nutrientes con cada vaso.
                                        </p>
                                        <p class="ingredientes">
                                            ¡Pídela ya con delivery!
                                        </p>
                                        <div class="quantity">
                                            <button class="minus">-</button>
                                            <input type="text" value="1" readonly>
                                            <button class="plus">+</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <div class="buttons">
                                    <button class="add-to-cart">Agregar al carrito</button>
                                    <a href="carrito.html"><button class="buy-now">Realizar compra</button></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Moda3 -->
                <div class="modal fade modal-lg" id="exampleModa3" tabindex="-1" aria-labelledby="exampleModalLabe3"
                    aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="exampleModalLabel">JUGO DE MARACUYA</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="modal-body">
                                    <div class="img-fluid text-center">
                                        <img src="img/jugos/maracuya.png" alt="burguers" class="img-modal">
                                    </div>
                                    <div class="info-section">
                                        <h1>JUGO DE MARACUYA</h1>
                                        <p class="sku">SKU: 004</p>
                                        <p class="price">S/. 8.90</p>
                                        <p class="description">
                                            Nuestro Jugo de Maracuyá Fresca está hecho con maracuyás seleccionadas, garantizando un sabor exótico y refrescante sin aditivos ni conservantes. Disfruta de una bebida deliciosa y nutritiva que te transportará a los trópicos.
                                        </p>
                                        <p class="ingredientes">
                                            ¡Pídela ya con delivery!
                                        </p>
                                        <div class="quantity">
                                            <button class="minus">-</button>
                                            <input type="text" value="1" readonly>
                                            <button class="plus">+</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <div class="buttons">
                                    <button class="add-to-cart">Agregar al carrito</button>
                                    <a href="carrito.html"><button class="buy-now">Realizar compra</button></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Moda4 -->
                <div class="modal fade modal-lg" id="exampleModa4" tabindex="-1" aria-labelledby="exampleModalLabe4"
                    aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="exampleModalLabel">JUGO DE NARANJA</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="modal-body">
                                    <div class="img-fluid text-center">
                                        <img src="img/jugos/naranja.png" alt="burguers" class="img-modal">
                                    </div>
                                    <div class="info-section">
                                        <h1>JUGO DE NARANJA</h1>
                                        <p class="sku">SKU: 004</p>
                                        <p class="price">S/. 10.50</p>
                                        <p class="description">Nuestro Jugo de Naranja Fresca está elaborado con naranjas maduras y jugosas, sin aditivos ni conservantes. Disfruta de un sabor naturalmente dulce y una carga de vitamina C con cada vaso.
                                        </p>
                                        <p class="ingredientes">
                                            ¡Pídela ya con delivery!
                                        </p>
                                        <div class="quantity">
                                            <button class="minus">-</button>
                                            <input type="text" value="1" readonly>
                                            <button class="plus">+</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <div class="buttons">
                                    <button class="add-to-cart">Agregar al carrito</button>
                                    <a href="carrito.html"><button class="buy-now">Realizar compra</button></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Moda5 -->
                <div class="modal fade modal-lg" id="exampleModa5" tabindex="-1" aria-labelledby="exampleModalLabe5"
                    aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="exampleModalLabel">JUGO DE PIÑA</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="modal-body">
                                    <div class="img-fluid text-center">
                                        <img src="img/jugos/piña.png" alt="burguers" class="img-modal">
                                    </div>
                                    <div class="info-section">
                                        <h1>JUGO DE PIÑA</h1>
                                        <p class="sku">SKU: 004</p>
                                        <p class="price">S/. 12.50</p>
                                        <p class="description">
                                            Nuestro Jugo de Piña Fresca está hecho con piñas maduras y jugosas, sin aditivos ni conservantes. Disfruta de un sabor naturalmente dulce y refrescante, lleno de nutrientes esenciales.
                                        </p>
                                        <p class="ingredientes">
                                            ¡Pídela ya con delivery!
                                        </p>
                                        <div class="quantity">
                                            <button class="minus">-</button>
                                            <input type="text" value="1" readonly>
                                            <button class="plus">+</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <div class="buttons">
                                    <button class="add-to-cart">Agregar al carrito</button>
                                    <a href="carrito.html"><button class="buy-now">Realizar compra</button></a>
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

    <footer id="footer" class="footer"></footer>
    <script src="/js/loadHeaderFooter.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            // Verifica la URL actual
            if (window.location.pathname.includes("Tienda.html")) {
                // Encuentra el elemento del dropdown existente
                var dropdown = document.getElementById("user-dropdown");

                // Cambia el contenido del dropdown
                dropdown.innerHTML = `
                        <button type="button" class="btn btn-light dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="fas fa-user"></i> Bienvenido
                        </button>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="Perfil.html">Perfil</a></li>
                            <li><a class="dropdown-item" href="Favoritos.html">Favoritos</a></li>
                            <li><a class="dropdown-item" href="Historial.html">Historial</a></li>
                        </ul>
                    `;
            }
        });
    </script>


</body>