<!DOCTYPE html>
<!--
  @author alexpreciado94 <alexpreciado94@hotmail.com>
  @copyright © 2022 All Rights Reserved
-->
<?php
  class Index {
    function __construct(){
      require_once './php/controlador.php';
      $this->controlador = new Controlador();
    }
  }
  $index = new Index();
?>
<html lang="es" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="author" content="alexpreciado94" />
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <title><?php echo $index->controlador->negocio['nombreNegocio'] ?></title>
    <link rel="stylesheet" href="./css/style.css">
    <style>
      button:hover{
        background-color: #<?php echo $index->controlador->negocio['colorNegocio'] ?>;
        border: 4px solid #<?php echo $index->controlador->negocio['colorNegocio'] ?>;
      }
      a{
        color: #<?php echo $index->controlador->negocio['colorNegocio'] ?>;
      }
      nav ul li a:hover{
        border-top: 5px solid #<?php echo $index->controlador->negocio['colorNegocio'] ?>;
      }
      #nosotros a:hover{
        background-color: #<?php echo $index->controlador->negocio['colorNegocio'] ?>;
        border: 4px solid #<?php echo $index->controlador->negocio['colorNegocio'] ?>;
      }
      #carta .tabs ul li.tabActivo{
        background-color: #<?php echo $index->controlador->negocio['colorNegocio'] ?>;
      }
      #imgSection{
        background-image: url(<?php echo './img/imgdb/'.$index->controlador->negocio['idNegocio'].'/'.$index->controlador->negocio['imgParallaxNegocio'] ?>);
      }
      #carta .tabs div:target a{
        background-color: #<?php echo $index->controlador->negocio['colorNegocio'] ?>;
        box-shadow: 1px 1px 5px gray;
      }
      #carta .tabs div a:hover{
        background-color: #<?php echo $index->controlador->negocio['colorNegocio'] ?>;
        box-shadow: 1px 1px 5px gray;
      }
      footer .contenedor .social a:hover{
        color: #<?php echo $index->controlador->negocio['colorNegocio'] ?>;
      }
      @media (max-width: 768px){
        nav ul{
          background-color: #<?php echo $index->controlador->negocio['colorNegocio'] ?>;
        }
        nav ul li a:hover{
          border-top: 5px solid #222222;
        }
      }
    </style>
  </head>
  <body>
    <header>
      <nav>
        <a href="#"><img src=<?php echo '"./img/imgdb/'.$index->controlador->negocio['idNegocio'].'/'.$index->controlador->negocio['logoNegocio'].'"' ?>></a>
        <button><i class="bi bi-list"></i></button>
        <ul>
          <li><a href="#">INICIO</a></li>
          <li><a href="#infoNosotros">NOSOTROS</a></li>
          <li><a href="#productos">CARTA</a></li>
          <li><a href="#contacto">CONTACTO</a></li>
        </ul>
      </nav>
    </header>
    <main>
      <section id="inicio">
        <img src=<?php echo '"./img/imgdb/'.$index->controlador->negocio['idNegocio'].'/'.$index->controlador->negocio['imgInicioNegocio'].'"' ?>>
        <img src=<?php echo '"./img/imgdb/'.$index->controlador->negocio['idNegocio'].'/'.$index->controlador->negocio['logoInicioNegocio'].'"' ?>>
      </section>
      <a id="infoNosotros"></a>
      <section id="nosotros">
        <div class="contenedor">
          <article>
            <h2>Nosotros...</h2>
            <p><?php echo '"'.$index->controlador->negocio['descripcionNegocio'].'"' ?></p>
              <hr>
            <a href="#contacto">Reservar!!!</a>
          </article>
          <article>
            <img src=<?php echo '"./img/imgdb/'.$index->controlador->negocio['idNegocio'].'/'.$index->controlador->negocio['imgDescripcionNegocio'].'"' ?>>
          </article>
        </div>
      </section>
      <section id="imgSection">

      </section>
      <a id="productos"></a>
      <section id="carta">
        <div class="tabs">
          <?php
            foreach ($index->controlador->productos as $i => $producto){
              if($i == 0){
                echo '<div id="'.$producto['nombreCategoria'].'"><a href="#'.$producto['nombreCategoria'].'">'.$producto['nombreCategoria'].'</a><div>';
                $categoria = $producto['nombreCategoria'];
              }
              if($categoria != $producto['nombreCategoria']){
                echo '</div></div><div id="'.$producto['nombreCategoria'].'"><a href="#'.$producto['nombreCategoria'].'">'.$producto['nombreCategoria'].'</a><div>';
                $categoria = $producto['nombreCategoria'];
              }
              echo '<div class="producto">';
              echo '<div><p>'.$producto['nombreProducto'].'</p><hr><p>'.$producto['precioProducto'].'€</p></div>';
              if($producto['descripcionProducto']){
                echo '<div>('.$producto['descripcionProducto'].')</div>';
              }
              echo '</div>';
            }
            echo '</div></div>';
          ?>
        </div>
      </section>
      <footer id="contacto">
        <div class="contenedor">
          <div>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3105.8523917591983!2d-6.9712416490347975!3d38.881618855378996!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd16e435d495875b%3A0xaa879c3116187b08!2sBodega%20San%20Jos%C3%A9!5e0!3m2!1ses!2ses!4v1652426323082!5m2!1ses!2ses" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
          </div>
          <hr>
          <div>
            <div>
              <ul>
                <li><a href="#inicio">INICIO</a></li>
                <li><a href="#nosotros">NOSOTROS</a></li>
                <li><a href="#carta">CARTA</a></li>
                <li><a href="#contacto">CONTACTO</a></li>
              </ul>
            </div>
            <div class="alergenos">
              <p>Establecimiento con información disponible en materia de alergias e intolerancias alimentarias. Soliciten información a nuestro personal.</p>
              <img src="./img/alergenos.png">
            </div>
            <div class="info">
              <p><i class="bi bi-geo-alt-fill"></i><span><?php echo $index->controlador->negocio['direccionNegocio'] ?></span></p>
              <hr>
              <p><i class="bi bi-telephone-fill"></i><span><?php echo $index->controlador->negocio['telefonoNegocio'] ?></span></p>
              <p><i class="bi bi-envelope-fill"></i><span><?php echo $index->controlador->negocio['emailNegocio'] ?></span></p>
            </div>
            <div class="social">
              <a href=<?php echo '"'.$index->controlador->negocio['urlFacebookNegocio'].'"' ?> target="_blank"><i class="bi bi-facebook"></i></a>
              <a href=<?php echo '"'.$index->controlador->negocio['urlInstagramNegocio'].'"' ?> target="_blank"><i class="bi bi-instagram"></i></a>
              <a href=<?php echo '"'.$index->controlador->negocio['urlYouTubeNegocio'].'"' ?> target="_blank"><i class="bi bi-youtube"></i></a>
              <a href=<?php echo '"'.$index->controlador->negocio['telefonoWhatsAppNegocio'].'"' ?> target="_blank"><i class="bi bi-whatsapp"></i></a>
            </div>
          </div>
        </div>
        <div class="last">
          <div>
            <a href="privacidad.txt">Politica de Privacidad</a>
          </div>
          <div>
            <span>© 2021 Todos los Derechos Reservados | </span><a class="yo" href="https://www.instagram.com/alexpreciado94/" target="_blank">Alex Preciado</a>
          </div>
        </div>
      </footer>
    </main>
    <script type="module" src="./js/main.js" charset="utf-8"></script>
  </body>
</html>
