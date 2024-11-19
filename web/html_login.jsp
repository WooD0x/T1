<body>    
<main>
        <header> </header>
        <div class="contenedor__todo">
            <div class="caja__trasera">
                <div class="caja__trasera-login">
                    <button id="btn__iniciar-sesion">Iniciar Sesión</button>
                </div>
            </div>
            <!--Formulario de login-->
            <div class="contenedor__login-register">
                <!--Login-->
                <form action="valida.jsp" class="formulario__login">
                    <h2>Iniciar Sesión como Administrador</h2>
                    <input type="text" name="usuario" placeholder="Correo Electrónico">
                    <input type="password" name="password"  placeholder="Contraseña">
                    <input type="submit" value="Enviar"  class="button">
                    <!--<button type="submit" value="Enviar">Entrar</button>-->
                </form>
            </div>
        </div>
    </main>
    <script src="JS/login.js"></script>
    <footer id="footer"></footer>
    <script src="js/loadHeaderFooter.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>
</body>