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
                        
                        <li><a class="dropdown-item" href="login.jsp">Colaboradores</a></li>
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
    <main class="">
        <section class="container contenido-principal">

            <div class="promocion">
                <img src="img/burguers/promocion2.jpg" width="1000" height="250" alt="Promoción" class="img-fluid">
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
                    <a><img src="img/burguers/clasica.jpg" width="390" height="520" alt="Burger" class="img-producto"
                            data-bs-toggle="modal" data-bs-target="#exampleModal"></a>
                    <h3>Hamburguesa Clásica</h3>
                    <h4>S/.15.00</h4>
                </div>

                <div class="producto2 m-4 col-md-auto">
                    <img src="img/burguers/doble.jpg" width="390" height="520" alt="Burger" class=""
                         data-bs-toggle="modal" data-bs-target="#exampleModa2">
                    <h3>Hamburguesa Doble</h3>
                    <h4>S/.25.90</h4>
                </div>

                <div class="producto3 m-4 col-md-auto">
                    <a><img src="img/burguers/hawaiana.jpg" width="390" height="520" alt="Burger" class=""
                            data-bs-toggle="modal" data-bs-target="#exampleModa3"></a>
                    <h3>Hamburguesa Hawaiana</h3>
                    <h4>S/.21.90</h4>
                </div>

                <div class="producto4 m-4 col-md-auto">
                    <a><img src="img/burguers/parrillera.jpg" width="390" height="520" alt="Burger" class=""
                            data-bs-toggle="modal" data-bs-target="#exampleModa4"></a>
                    <h3>Hamburguesa Parrilla</h3>
                    <h4>S/.23.90</h4>
                </div>

                <div class="producto5 m-4 col-md-auto">
                    <a><img src="img/burguers/queso.jpg" width="390" height="520" alt="Burger" class=""
                            data-bs-toggle="modal" data-bs-target="#exampleModa5"></a>
                    <h3>Hamburguesa Cheese</h3>
                    <h4>S/.19.90</h4>
                </div>

                <div class="producto6 m-4 col-md-auto">
                    <a><img src="img/burguers/royal.jpg" width="390" height="520" alt="Burger" class=""
                            data-bs-toggle="modal" data-bs-target="#exampleModa6"></a>
                    <h3>Hamburguesa Royal</h3>
                    <h4>S/.20.90</h4>
                </div>

                <div class="producto7 m-4  col-md-auto">
                    <a><img src="img/burguers/pobre.jpg" width="390" height="520" alt="Burger" class=""
                            data-bs-toggle="modal" data-bs-target="#exampleModa7"></a>
                    <h3>Hamburguesa a lo pobre</h3>
                    <h4>S/.21.90</h4>
                </div>

                <div class="producto8 m-4 col-md-auto">
                    <a><img src="img/burguers/mexa.jpg" width="390" height="520" alt="Burger" class=""
                            data-bs-toggle="modal" data-bs-target="#exampleModa8"></a>
                    <h3>Hamburguesa Mexicana</h3>
                    <h4>S/.21.90</h4>
                </div>

                <div class="producto9 m-4 col-md-auto">
                    <a><img src="img/burguers/calle.jpg" width="390" height="520" alt="Burger" class=""
                            data-bs-toggle="modal" data-bs-target="#exampleModa9"></a>
                    <h3>Hamburguesa la carretillera</h3>
                    <h4>S/.23.90</h4>
                </div>

                <!-- Modal -->
                <div class="modal fade modal-lg" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="exampleModalLabel">Hamburguesa clasica</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="modal-body">
                                    <div class="img-fluid text-center">
                                        <img src="img/burguers/clasica.jpg" alt="burguers" class="img-modal">
                                    </div>
                                    <div class="info-section">
                                        <h1>Clasica</h1>
                                        <p class="sku">SKU: 004</p>
                                        <p class="price">S/. 17.00</p>
                                        <p class="description">¿Ya probaste la deliciosa hamburguesa a la parrilla clásica? Con su delicioso sabor ahumado y consistencia característica, este clásico lleva como ingredientes:
                                        </p>
                                        <p class="ingredientes">
                                            - Mayonesa
                                        </p>
                                        <p class="ingredientes">
                                            - Tomate
                                        </p>
                                        <p class="ingredientes">
                                            - Lechuga
                                        </p>
                                        <p class="ingredientes">
                                            Agrega gratis: Mayonesa (01), Ají  (01) y Kétchup (01).
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
                                <h1 class="modal-title fs-5" id="exampleModalLabel">Hamburguesa Doble</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="modal-body">
                                    <div class="img-fluid text-center">
                                        <img src="img/burguers/doble.jpg" alt="burguers" class="img-modal">
                                    </div>
                                    <div class="info-section">
                                        <h1>Doble</h1>
                                        <p class="sku">SKU: 004</p>
                                        <p class="price">S/. 25.90</p>
                                        <p class="description">Te presentamos a la más contundente de todas: La Doble. La hamburguesa de doble carne a la parrilla que entre sus ingredientes encontramos:
                                        </p>
                                        <p class="ingredientes">
                                            - Queso Edam
                                        </p>

                                        <p class="ingredientes">
                                            - Tocino
                                        </p>

                                        <p class="ingredientes">
                                            - Tomate
                                        </p>
                                        <p class="ingredientes">
                                            - Lechuga
                                        </p>
                                        <p class="ingredientes">
                                            - Mayonesa
                                        </p>
                                        <p class="ingredientes">
                                            Agrega gratis: Mayonesa (01), Ají  (01) y Kétchup (01).
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
                                <h1 class="modal-title fs-5" id="exampleModalLabel">Hamburguesa Hawaiana</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="modal-body">
                                    <div class="img-fluid text-center">
                                        <img src="img/burguers/hawaiana.jpg" alt="burguers" class="img-modal">
                                    </div>
                                    <div class="info-section">
                                        <h1>Hawaiana</h1>
                                        <p class="sku">SKU: 004</p>
                                        <p class="price">S/. 21.90</p>
                                        <p class="description">¿Ya probaste la deliciosa hamburguesa a la Hawaiana? Con su delicioso sabor tropical y consistencia característica, este lleva como ingredientes:
                                        </p>
                                        <p class="ingredientes">
                                            - 2 Piñas en almibar
                                        </p>

                                        <p class="ingredientes">
                                            - Queso
                                        </p>

                                        <p class="ingredientes">
                                            - Jamon inglés
                                        </p>
                                        <p class="ingredientes">
                                            - Mayonesa
                                        </p>
                                        <p class="ingredientes">
                                            Agrega gratis: Mayonesa (01), Ají  (01) y Kétchup (01).
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
                                <h1 class="modal-title fs-5" id="exampleModalLabel">Hamburguesa parrillera</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="modal-body">
                                    <div class="img-fluid text-center">
                                        <img src="img/burguers/parrillera.jpg" alt="burguers" class="img-modal">
                                    </div>
                                    <div class="info-section">
                                        <h1>parrillera</h1>
                                        <p class="sku">SKU: 004</p>
                                        <p class="price">S/. 23.90</p>
                                        <p class="description">Prueba nuestra deliciosa Hamburguesa Parrillera con Chorizo y Chimichurri, pensada para los amantes de la carne. Con el característico aroma a parrilla, incluye entre sus ingredientes:
                                        </p>
                                        <p class="ingredientes">
                                            - Chorizo
                                        </p>

                                        <p class="ingredientes">
                                            - Tomate
                                        </p>

                                        <p class="ingredientes">
                                            - Salsa Chimichurri
                                        </p>
                                        <p class="ingredientes">
                                            - Mostaza
                                        </p>
                                        <p class="ingredientes">
                                            Agrega gratis: Mayonesa (01), Ají  (01) y Kétchup (01).
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
                                <h1 class="modal-title fs-5" id="exampleModalLabel">Hamburguesa Cheese</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="modal-body">
                                    <div class="img-fluid text-center">
                                        <img src="img/burguers/queso.jpg" alt="burguers" class="img-modal">
                                    </div>
                                    <div class="info-section">
                                        <h1>Cheese</h1>
                                        <p class="sku">SKU: 004</p>
                                        <p class="price">S/. 19.90</p>
                                        <p class="description">Deliciosa Hamburguesa con Queso. ¡Una de las favoritas! Entre sus ingredientes encontramos:
                                        </p>
                                        <p class="ingredientes">
                                            - Queso Edam
                                        </p>

                                        <p class="ingredientes">
                                            - Tomate
                                        </p>

                                        <p class="ingredientes">
                                            - Lechuga
                                        </p>
                                        <p class="ingredientes">
                                            Agrega gratis: Mayonesa (01), Ají  (01) y Kétchup (01).
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

                <!-- Moda6 -->
                <div class="modal fade modal-lg" id="exampleModa6" tabindex="-1" aria-labelledby="exampleModalLabe6"
                     aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="exampleModalLabel">Hamburguesa Royal</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="modal-body">
                                    <div class="img-fluid text-center">
                                        <img src="img/burguers/royal.jpg" alt="burguers" class="img-modal">
                                    </div>
                                    <div class="info-section">
                                        <h1>Royal</h1>
                                        <p class="sku">SKU: 004</p>
                                        <p class="price">S/. 20.90</p>
                                        <p class="description">¿Con antojo de una royal clásica? Disfruta de nuestra deliciosa Hamburguesa Royal.
                                        </p>
                                        <p class="ingredientes">
                                            - Huevo
                                        </p>

                                        <p class="ingredientes">
                                            - Queso Edam
                                        </p>

                                        <p class="ingredientes">
                                            - Lechuga
                                        </p>
                                        <p class="ingredientes">
                                            - Tomate
                                        </p>
                                        <p class="ingredientes">
                                            Agrega gratis: Mayonesa (01), Ají  (01) y Kétchup (01).
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

                <!-- Moda7 -->
                <div class="modal fade modal-lg" id="exampleModa7" tabindex="-1" aria-labelledby="exampleModalLabe7"
                     aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="exampleModalLabel">Hamburguesa a lo pobre</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="modal-body">
                                    <div class="img-fluid text-center">
                                        <img src="img/burguers/pobre.jpg" alt="burguers" class="img-modal">
                                    </div>
                                    <div class="info-section">
                                        <h1>Hamburguesa a lo pobre</h1>
                                        <p class="sku">SKU: 004</p>
                                        <p class="price">S/. 21.90</p>
                                        <p class="description">Disfruta de tu Hamburguesa a lo Pobre preferida, hecha en parrilla y con ese sabor casero que la caracteriza.
                                        </p>
                                        <p class="ingredientes">
                                            - Huevo Frito
                                        </p>

                                        <p class="ingredientes">
                                            - Platano Frito
                                        </p>

                                        <p class="ingredientes">
                                            - Tomate
                                        </p>
                                        <p class="ingredientes">
                                            - Cebolla Blanca
                                        </p>
                                        <p class="ingredientes">
                                            Agrega gratis: Mayonesa (01), Ají  (01) y Kétchup (01).
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

                <!-- Moda8 -->
                <div class="modal fade modal-lg" id="exampleModa8" tabindex="-1" aria-labelledby="exampleModalLabe8"
                     aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="exampleModalLabel">Hamburguesa Mexicana</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="modal-body">
                                    <div class="img-fluid text-center">
                                        <img src="img/burguers/mexa.jpg" alt="burguers" class="img-modal">
                                    </div>
                                    <div class="info-section">
                                        <h1>Hamburguesa Mexicana</h1>
                                        <p class="sku">SKU: 004</p>
                                        <p class="price">S/. 21.90</p>
                                        <p class="description">¿Ya probaste la deliciosa hamburguesa al estilo mexicano? Con su delicioso sabor ahumado y consistencia característica, este clásico lleva como ingredientes:
                                        </p>
                                        <p class="ingredientes">
                                            - Queso
                                        </p>

                                        <p class="ingredientes">
                                            - Salsa Guacamole
                                        </p>

                                        <p class="ingredientes">
                                            - Doritos   
                                        </p>
                                        <p class="ingredientes">
                                            - Tomate
                                        </p>
                                        <p class="ingredientes">
                                            Agrega gratis: Mayonesa (01), Ají  (01) y Kétchup (01).
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

                <!-- Moda9 -->
                <div class="modal fade modal-lg" id="exampleModa9" tabindex="-1" aria-labelledby="exampleModalLabe9"
                     aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="exampleModalLabel">Hamburguesa carretillera</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="modal-body">
                                    <div class="img-fluid text-center">
                                        <img src="img/burguers/calle.jpg" alt="burguers" class="img-modal">
                                    </div>
                                    <div class="info-section">
                                        <h1>Hamburguesa Carretillera</h1>
                                        <p class="sku">SKU: 004</p>
                                        <p class="price">S/. 23.90</p>
                                        <p class="description">¿Ya probaste la deliciosa hamburguesa carretillera? Con su delicioso sabor a la calle y consistencia característica, este lleva como ingredientes:
                                        </p>
                                        <p class="ingredientes">
                                            - Pollo deshilachado
                                        </p>

                                        <p class="ingredientes">
                                            - Salsa tartara
                                        </p>

                                        <p class="ingredientes">
                                            - Papitas al hilo
                                        </p>
                                        <p class="ingredientes">
                                            Agrega gratis: Mayonesa (01), Ají  (01) y Kétchup (01).
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