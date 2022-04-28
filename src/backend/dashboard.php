<!DOCTYPE html>
<html lang="es" dir="ltr">
  <head>
    <meta charset="utf-8" />
    <title>Dashboard</title>
    <link rel="stylesheet" href="../css/backstyle.css" />
  </head>
  <body>
    <header>
      <nav>
        <a href="#"><img src="../img/logo.png"></a>
        <button name="button" (click)="mostrarMenu()"><i class="bi bi-list"></i></button>
        <ul>
          <li><a href="#">INICIO</a></li>
          <li><a href="#">NOSOTROS</a></li>
          <li><a href="#">CONTACTO</a></li>
          <li><button name="login"><i class="bi bi-key-fill"></i></button></li>
        </ul>
      </nav>
    </header>
    <main class="logMain">
      <div>
        <h2>Bienvenido!!! :)</h2>
        <input type="email" name="email" placeholder="E-Mail..." required />
        <input type="password" name="password" placeholder="Contraseña..." required />
        <button type="submit" name="submit">LogIn</button>
        <a href="#">¿Has Olvidado la Contraseña?</a>
      </div>
    </main>
    <main>
      <aside>
        <ul>
          <li>
            <a href="#"><i class="bi bi-person"></i></a>
            <span>Usuarios</span>
          </li>
          <li>
            <a href="#"><i class="bi bi-shop"></i></a>
            <span>Negocios</span>
          </li>
          <li>
            <a href="#"><i class="bi bi-folder"></i></a>
            <span>Categorías</span>
          </li>
          <li>
            <a href="#"><i class="bi bi-gift"></i></a>
            <span>Productos</span>
          </li>
        </ul>
      </aside>
      <section>
        <article>
          <div class="lista">
            <h2>Ruinas</h2>
            <div>
              <div class="imgContenedor">
                <img src="../img/imgdb/ruinas/ruinabd1.jpg" alt="">
              </div>
              <div class="txtContenedor">
                <h4>Ruina 1</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in
                  voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                <div>
                  <button type="button" name="button"><i class="bi bi-trash3-fill"></i></button>
                  <button type="button" name="button"><i class="bi bi-pencil-fill"></i></button>
                </div>
              </div>
            </div>
          </div>
        </article>
        <article>
          <form class="formulario" action="" method="POST">
            <h2>Gestión de Ruinas</h2>
            <input type="text" name="nombre" placeholder="Nombre..." required>
            <textarea name="descripcion" placeholder="Descripción..." required></textarea>
            <div>
              <input type="text" name="lugares[]" value="" placeholder="Lugar de Interés...">
              <button type="button"><i class="bi bi-plus-lg"></i></button>
            </div>
            <div class="ifiles">
              <div><input type="file" name="iLogo" />Subir logo...</div>
              <div><input type="file" name="iLogoXS" />Subir logoXS...</div>
              <div><input type="file" name="iIcono" />Subir icono...</div>
            </div>
            <button type="submit" name="submit">ENVIAR</button>
          </form>
        </article>
      </section>
      <footer>

      </footer>
    </main>
    <script src="./js/main.js" charset="utf-8"></script>
  </body>
</html>
