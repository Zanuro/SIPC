<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">

  <xsl:template match="/">
    <html lang="es">
      <head>
        <meta http-equiv="content-type" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=yes" />
        <meta charset="UTF-8" />
        <title> SysLearn </title>
        <link rel="stylesheet" type="text/css" href="design.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" /
        <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet"/>
        <link rel="shortcut icon" type="image/x-icon" href="logo.ico"/>
        <link href="https://fonts.googleapis.com/css?family=Slabo+27px" rel="stylesheet"/>
        <style> body {padding: 0; margin: 0;} </style>

      </head>

      <nav class="navbar navbar-expand-lg navbar-ligth fixed-top">
        <a class ="imag" href="index.html"> <img src="https://bit.ly/2qBuz2X" style="width:55px;height:40px;border-radius:10px;" alt="logo"></img></a>
          <a class="navbar-brand nav-link" href="index.html">Sys-Learn</a>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class = "navbar-nav mr">
              <li class="nav-item"><a class="nav-link" href="learn.html">Learn</a></li>
              <li class="nav-item"><a class="nav-link" href="challenges.html">Challenges</a></li>
              <li class="nav-item"><a class="nav-link" href="forum.html">Forum</a></li>
              <li class="nav-item"><a class="nav-link" href="ranking.html">Ranking</a></li>
              <li class="nav-item"><a class="nav-link" href="#about">About</a></li>
              <li class="nav-item"><a class="nav-link" href="registro.html">Registrarse</a></li>
            </ul>
            <form class="form inline my-2">
              <input id="busq" class="form-control mr-sm-1" type="search" placeholder="Busqueda" aria-label="Search"/>
              <button class="btn btn-outline-success" type="button">Buscar</button>
              <a href="#container"><button class="btn btn-outline-success" type="button">Login</button></a>
              <div id="container">
                <div class="popup">
                  <a href="#">
                    <img  src="https://cdn3.iconfinder.com/data/icons/simple-web-navigation/165/cross-512.png" style="width:25px;height:25px;border-radius:80px;" />
                  </a>
                </div>
                  <div id="login_ej" class="headerr">
                    <a id="lock" class="btn-floating btn-li">
                      <i class="fa fa-shield"></i></a>
                      <div class="header-title">
                        <h1>Login</h1>
                        <p>Introduce los datos de acceso </p>
                      </div>
                    </div>
                    <div class="panel">
                      <p id="mensaje-error1"> </p>
                      <form id="form" action="logeado.html" method="get">
                        <div class="usuario">
                          <label for="email" class="control-label">Usuario</label>
                          <input type="text" name="email" id="email" placeholder="usuario@email.com"/>
                        </div>
                        <div class="panell">
                          <label class="control-label" for="password">Password</label>
                          <input type="password" pattern="[0-9A-Za-z]{4}" title="4 caracteres fijo" name="password" id="password" placeholder="*******" />
                        </div>
                        <div class="row">
                          <div class="col-lg-1">
                            <div class="remember">
                              <input name="remember" class="styled" type="checkbox"/>
                              <label for="checkbox">
                                <p>Remember</p>
                              </label>
                            </div>
                          </div>
                          <div class="col-lg-1">
                            <input id="submit1" class="btn btn-outline-success" type="submit" value="Login"/>
                          </div>
                        </div>
                      </form>
                    </div>
                  <!-- <div id="usuario_ej" class="usuario_logged">
                    <h1> Bienvenido a nuestro web-site </h1>
                    <p id="user_logged"> Actualmente te encuentras logeado en nuestro sitio. </p>
                    <button id="logout"class="btn btn-outline-success" type="button" onclick="logout()">Logout</button> -->

                    <!-- <p> Login </p>
                    <form action="datos.php" method="get">
                    <input class="usuario/email" type="text" name="usuario" placeholder="usuario@email.com">
                    <input class="passwd" type="password" required name="contraseña" placeholder="Passwd">
                    <input type="submit" name="entrar">
                    <input type="reset" name="reseteo">

                  </form> -->
                </div>
              </form>
            </div>
          </nav>
      <body>
        <div class="body-main">
          <div class="body-center">
            <header class="header-challengee">
            <div class="titulo">
              <h1>Retos!</h1>
          </div>
        </header>
            <div class="row">
            <div class="col-lg-8 offset-lg-2">
            <table id="tabla-challengee" class="table table-bordered">
              <thead>
                <tr>
                  <th>Nombre reto!</th>
                  <th>Hecho por:</th>
                  <th>Puntos a ganar</th>
                  <th>Dificultad</th>
                  <th>Fecha inicio</th>
                  <th>Fecha final</th>
                  <th>%Success</th>
                  <th>Categoria</th>
                  <th>Dificultad conjunta</th>
                </tr>
              </thead>

              <tbody>
              <xsl:for-each select="Retos/RETO">
                <xsl:sort select="NOMBRE_RETO" order="ascending"/>
                <xsl:choose>

                  <xsl:when test="PUNTOS &gt; 1 and PUNTOS &lt; 5">
                    <tr>
                      <td><xsl:value-of select="concat(NOMBRE_RETO,' -B')"/></td>
                      <td><xsl:value-of select="HECHO_POR"/></td>
                      <td><xsl:value-of select="PUNTOS"/></td>
                      <td><xsl:value-of select="DIFICULTAD"/></td>
                      <td><xsl:value-of select="FI"/></td>
                      <td><xsl:value-of select="FF"/></td>
                      <td><xsl:value-of select="SUCCESS"/></td>
                      <td><xsl:value-of select="CATEGORIA"/></td>
                      <xsl:variable name="x" select="PUNTOS"/>
                      <xsl:variable name="y" select="SUCCESS"/>
                      <td><xsl:value-of select="($x*$y)+100"/></td>
                    </tr>
                  </xsl:when>
                  <xsl:when test="PUNTOS &gt; 5 and PUNTOS &lt; 10">
                      <tr>
                      <td><xsl:value-of select="concat(NOMBRE_RETO,' -M')"/></td>
                      <td><xsl:value-of select="HECHO_POR"/></td>
                      <td><xsl:value-of select="PUNTOS"/></td>
                      <td><xsl:value-of select="DIFICULTAD"/></td>
                      <td><xsl:value-of select="FI"/></td>
                      <td><xsl:value-of select="FF"/></td>
                      <td><xsl:value-of select="SUCCESS"/></td>
                      <td><xsl:value-of select="CATEGORIA"/></td>
                      <xsl:variable name="x" select="PUNTOS"/>
                      <xsl:variable name="y" select="SUCCESS"/>
                      <td><xsl:value-of select="($x*$y)+100"/></td>
                    </tr>
                  </xsl:when>
                  <xsl:when test="PUNTOS &gt; 10">
                    <tr>
                    <td><xsl:value-of select="concat(NOMBRE_RETO,' -A')"/></td>
                    <td><xsl:value-of select="HECHO_POR"/></td>
                    <td><xsl:value-of select="PUNTOS"/></td>
                    <td><xsl:value-of select="DIFICULTAD"/></td>
                    <td><xsl:value-of select="FI"/></td>
                    <td><xsl:value-of select="FF"/></td>
                    <td><xsl:value-of select="SUCCESS"/></td>
                    <td><xsl:value-of select="CATEGORIA"/></td>
                    <xsl:variable name="x" select="PUNTOS"/>
                    <xsl:variable name="y" select="SUCCESS"/>
                    <td><xsl:value-of select="($x*$y)+100"/></td>
                  </tr>
                </xsl:when>
                </xsl:choose>
              </xsl:for-each>
            </tbody>
            </table>
        </div>
      </div>
    </div>
  </div>
        <footer class="page-footer">
          <div class="container-fluid">
            <div class="row">
              <div id="about" class="col-lg-3">
                <h1> About us! </h1>
                <h2> Ingenieria Informatica ULL </h2>
                <p>Este sitio web es para todas aquellas
                  personas apasionadas del mundo de la programacion<br></br>
                  y sus divertidas partes(o menos divertidas).<br></br>
                </p>
                  <h3>  Sys-Learn 2019</h3>
                  <nav class="nav-item"><a class="nav-link" href="term.html" target="_blank">Terms of Service</a></nav>

                </div>
                <!-- <div style="border-left:1px solid #8C857F;height:150px"></div> -->
                <div id="social" class="col-lg-6" style="font-size: 30px;">
                  <h1> Social media </h1>
                  <ul class="list-unstyled list-inline text-center">
                    <li class="list-inline-item">
                      <a class="btn-floating btn-tw" href="https://twitter.com/ComanescuVlad" target="_blank">
                        <i class="fa fa-twitter"> </i>
                      </a>
                    </li>
                    <li class="list-inline-item">
                      <a class="btn-floating btn-fa" href="https://facebook.com" target="_blank">
                        <i class="fa fa-facebook"> </i>
                      </a>
                    </li>
                    <li class="list-inline-item">
                      <a class="btn-floating btn-in" href="https://instagram.com" target="_blank">
                        <i class="fa fa-instagram"> </i>
                      </a>
                    </li>
                    <li class="list-inline-item">
                      <a class="btn-floating btn-li" href="https://www.linkedin.com/in/vlad-comanescu-8600b8131" target="_blank">
                        <i class="fa fa-linkedin"> </i>
                      </a>
                    </li>
                  </ul>
                </div>
                <!-- <div style="border-left:1px solid #8C857F;height:150px"></div> -->
                <div id="ubic" class="col-lg-2">
                  <h1> Ubicacion </h1>
                  <p>Sta.Cruz de Tenerife</p>
                  <a class="btn-floating btn-li" href="https://bit.ly/2zxCP8J" target="_blank"></a>
                    <i id="buton-ubic" class="fa fa-map-marker" style="font-size:24px"></i>
                  </div>
                </div>
              </div>
            </footer>
            <script src="https://www.gstatic.com/firebasejs/5.5.9/firebase.js"></script>
            <script src="https://www.gstatic.com/firebasejs/5.5.9/firebase-firestore.js"></script>
            <script>
            // Initialize Firebase
            var config = {
              apiKey: "AIzaSyCcBh4ClX8xQr73MGJtPnIqcfUx8K52XoM",
              authDomain: "syslearn-13b2c.firebaseapp.com",
              databaseURL: "https://syslearn-13b2c.firebaseio.com",
              projectId: "syslearn-13b2c",
              storageBucket: "syslearn-13b2c.appspot.com",
              messagingSenderId: "224058327958"
            };
            firebase.initializeApp(config);
          </script>
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
          <script src="functions.js"> </script>
          <!--<script src="https://www.gstatic.com/firebasejs/5.5.9/firebase-app.js"></script>
          <script src="https://www.gstatic.com/firebasejs/5.5.9/firebase-auth.js"></script>
          <script src="https://www.gstatic.com/firebasejs/5.5.9/firebase-database.js"></script>

          <script src="https://www.gstatic.com/firebasejs/5.5.9/firebase-messaging.js"></script>
          <script src="https://www.gstatic.com/firebasejs/5.5.9/firebase-functions.js"></script>

          <script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/0.7.2/p5.js"></script>
          <script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/0.7.2/addons/p5.dom.js"></script>
          <script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/0.7.2/addons/p5.sound.js"></script>
          <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
          <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
          <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script> -->

      </body>
    </html>

  </xsl:template>
</xsl:stylesheet>
