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
                <img src="img/Pollo/promocion3.png" width="10" height="25" alt="Promoción" class="img-fluid">
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
                    <a><img src="img/Pollo/4pollo.jpg" width="150" height="270" alt="Burger" class="img-producto"
                            data-bs-toggle="modal" data-bs-target="#exampleModal"></a>
                    <h3>1/4 pollo + papas + ensalada</h3>
                    <h4>S/.15.90</h4>
                </div>

                <div class="producto2 m-4 col-md-auto">
                    <img src="img/Pollo/4pollogaseosa.jpg" width="150" height="270" alt="Burger" class=""
                        data-bs-toggle="modal" data-bs-target="#exampleModa2">
                    <h3>1/4 pollo + papas + ensalada + gaseosa</h3>
                    <h4>S/.17.90</h4>
                </div>

                <div class="producto3 m-4 col-md-auto">
                    <a><img src="img/Pollo/mediopollo.jpg" width="150" height="270" alt="Burger" class=""
                            data-bs-toggle="modal" data-bs-target="#exampleModa3"></a>
                    <h3>1/2 pollo + papas + ensalada</h3>
                    <h4>S/.20.90</h4>
                </div>

                <div class="producto4 m-4 col-md-auto">
                    <a><img src="img/Pollo/mediopollogaseosa.jpg" width="150" height="270" alt="Burger" class=""
                            data-bs-toggle="modal" data-bs-target="#exampleModa4"></a>
                    <h3>1/2 pollo + papas + ensalada + 2 gaseosas</h3>
                    <h4>S/.22.90</h4>
                </div>

                <div class="producto5 m-4 col-md-auto">
                    <a><img src="img/Pollo/1 pollo familiar.jpg" width="150" height="270" alt="Burger" class=""
                            data-bs-toggle="modal" data-bs-target="#exampleModa5"></a>
                    <h3>Pollo Oferta</h3>
                    <h4>S/.75.90</h4>
                </div>

                <!-- Modal -->
                <div class="modal fade modal-lg" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="exampleModalLabel">1/4 pollo + papas + ensalada</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="modal-body">
                                    <div class="img-fluid text-center">
                                        <img src="img/Pollo/4pollo.jpg" alt="burguers" class="img-modal">
                                    </div>
                                    <div class="info-section">
                                        <h1>1/4 pollo + papas + ensalada</h1>
                                        <p class="sku">SKU: 004</p>
                                        <p class="price">S/. 15.90</p>
                                        <p class="description">¿Ya probaste nuestro delicioso pollo a la brasa? Con su delicioso sabor ahumado y consistencia característica,  lleva como ingredientes:
                                        </p>
                                        <p class="ingredientes">
                                            - 1/4 pollo
                                        </p>
                                        </p>
                                        <p class="ingredientes">
                                            - Ensalada
                                        </p>
                                        </p>
                                        <p class="ingredientes">
                                            - Papas fritas
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
                                <h1 class="modal-title fs-5" id="exampleModalLabel">1/4 pollo + papas + ensalada + gaseosa</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="modal-body">
                                    <div class="img-fluid text-center">
                                        <img src="img/Pollo/4pollogaseosa.jpg" alt="burguers" class="img-modal">
                                    </div>
                                    <div class="info-section">
                                        <h1>1/4 pollo + papas + ensalada + gaseosa</h1>
                                        <p class="sku">SKU: 004</p>
                                        <p class="price">S/. 17.90</p>
                                        <p class="description">¿Ya probaste nuestro delicioso pollo a la brasa? Con su delicioso sabor ahumado y consistencia característica,  lleva como ingredientes:
                                        </p>
                                        <p class="ingredientes">
                                            - 1/4 pollo
                                        </p>
                                        </p>
                                        <p class="ingredientes">
                                            - Ensalada
                                        </p>
                                        </p>
                                        <p class="ingredientes">
                                            - Papas fritas
                                        </p>
                                        <p class="ingredientes">
                                            - Gaseosa personal
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
                                <h1 class="modal-title fs-5" id="exampleModalLabel">1/2 pollo + papas + ensalada</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="modal-body">
                                    <div class="img-fluid text-center">
                                        <img src="img/Pollo/mediopollo.jpg" alt="burguers" class="img-modal">
                                    </div>
                                    <div class="info-section">
                                        <h1>1/2 pollo + papas + ensalada</h1>
                                        <p class="sku">SKU: 004</p>
                                        <p class="price">S/. 20.90</p>
                                        <p class="description">¿Ya probaste nuestro delicioso pollo a la brasa? Con su delicioso sabor ahumado y consistencia característica,  lleva como ingredientes:
                                        </p>
                                        <p class="ingredientes">
                                            - 1/2 pollo
                                        </p>
                                        </p>
                                        <p class="ingredientes">
                                            - Ensalada
                                        </p>
                                        </p>
                                        <p class="ingredientes">
                                            - Papas fritas
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
                                    <a href="carrito.jsp"><button class="buy-now">Realizar compra</button></a>
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
                                <h1 class="modal-title fs-5" id="exampleModalLabel">1/2 pollo + papas + ensalada + 2 gaseosas</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="modal-body">
                                    <div class="img-fluid text-center">
                                        <img src="img/Pollo/mediopollogaseosa.jpg" alt="burguers" class="img-modal">
                                    </div>
                                    <div class="info-section">
                                        <h1>1/2 pollo + papas + ensalada + 2 gaseosas</h1>
                                        <p class="sku">SKU: 004</p>
                                        <p class="price">S/. 22.90</p>
                                        <p class="description">¿Ya probaste nuestro delicioso pollo a la brasa? Con su delicioso sabor ahumado y consistencia característica,  lleva como ingredientes:
                                        </p>
                                        <p class="ingredientes">
                                            - 1/2 pollo
                                        </p>
                                        </p>
                                        <p class="ingredientes">
                                            - Ensalada
                                        </p>
                                        </p>
                                        <p class="ingredientes">
                                            - Papas fritas
                                        </p>
                                        <p class="ingredientes">
                                            - 2 Gaseosas personales
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
                                <h1 class="modal-title fs-5" id="exampleModalLabel">Combinado familiar</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="modal-body">
                                    <div class="img-fluid text-center">
                                        <img src="img/Pollo/1 pollo familiar.jpg" alt="burguers" class="img-modal">
                                    </div>
                                    <div class="info-section">
                                        <h1>1 Pollo a la brasa + papas fritas+ ensalada + arroz chaufa + gaseosa de 1.5 Lt</h1>
                                        <p class="sku">SKU: 004</p>
                                        <p class="price">S/. 75.90</p>
                                        <p class="description">¿Ya probaste nuestro delicioso pollo a la brasa? Con su delicioso sabor ahumado y consistencia característica,  lleva como ingredientes:
                                        </p>
                                        <p class="ingredientes">
                                            - 1 pollo
                                        </p>
                                        </p>
                                        <p class="ingredientes">
                                            - Ensalada
                                        </p>
                                        </p>
                                        <p class="ingredientes">
                                            - Papas fritas
                                        </p>
                                        <p class="ingredientes">
                                            - Arroz chaufa
                                        </p>
                                        <p class="ingredientes">
                                            - Gaseosa de 1.5 Lt
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