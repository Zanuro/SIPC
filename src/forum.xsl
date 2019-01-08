<?xml version='1.0' ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" />
<xsl:template match="/">
  <HTML>
    <head>
      <meta http-equiv="content-type" />
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
      <meta charset="UTF-8"/>
      <title> SysLearn </title>
      <link rel="stylesheet" type="text/css" href="design.css"/>
      <link rel="stylesheet" type="text/css" href="tables.css"/>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
      integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>
      <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet"/>
      <link rel="shortcut icon" type="image/x-icon" href="logo.ico"/>
      <link href="https://fonts.googleapis.com/css?family=Slabo+27px" rel="stylesheet"/>

    </head>

    <nav class="navbar navbar-expand-lg navbar-ligth fixed-top">
      <a class = "imag" href="index.html"/><img src="https://bit.ly/2qBuz2X" style="width:55px;height:40px;border-radius:10px;" alt="logo"/>
        <a class="navbar-brand" href="index.html">Sys-Learn</a>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class = "navbar-nav mr-6">
            <!-- <li class="nav-item"><a class="nav-link" href="home">Página principal</a></li> -->
            <li class="nav-item"><a class="nav-link" href="learn.html">Learn</a></li>
            <li class="nav-item"><a class="nav-link" href="challenges.xml">Challenges</a></li>
            <li class="nav-item"><a class="nav-link" href="forum.html">Forum</a></li>
            <li class="nav-item"><a class="nav-link" href="ranking">Ranking</a></li>
            <li class="nav-item"><a class="nav-link" href="about">About</a></li>
            <li class="nav-item"><a class="nav-link" href="registro.html">Registrarse</a></li>
          </ul>
          <form class="form inline my-2">
            <input id="busq" class="form-control mr-sm-1" type="search" placeholder="Busqueda" aria-label="Search"/>
            <button class="btn btn-outline-success" type="submit">Buscar</button>
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
                    <form action="datos.php" method="get">
                      <div class="usuario">
                        <label class="control-label" for="email">Usuario</label>
                        <input type="text" requiredplaceholder="usuario@email.com" name="email" id="campo_correo"/>
                      </div>
                      <div class="panell">
                        <label class="control-label" for="password">Password</label>
                        <input type="password" requiredplaceholder="*******" name="password" id="campo_pass"/>
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
                          <button id="loginu" class="btn btn-outline-success" type="button" onclick="login()">Login</button>
                        </div>
                      </div>
                    </form>
                  </div>
              </div>
            </form>
          </div>
        </nav>
        <header class="headar">
        <div class="container-fluid">
          <div class="python-titulo">
            <h1>Foros</h1>
          </div>
        </div>
      </header>
   <BODY style="margin-top:0px;">
    <div class="tabs">
    <TABLE border="1">
      <TR style="background-color: #23335a99;">
        <th>Hilo</th>
        <th>Ultimo Post</th>
        <th>Fecha de Creación</th>
        <th>Posts</th>
      </TR>
     <xsl:for-each  select="foro/hilo">
       <xsl:sort order="descending" select="numeropost" data-type="number"/>
      <TR>
      <TD style="text-align: left;"><xsl:value-of select="nombre"/> <BR></BR>by <xsl:value-of select="propietario"/></TD>
       <TD><xsl:value-of select="lastpost/fechapost"/><BR></BR> by <xsl:value-of select="lastpost/autor"/></TD>
       <TD><xsl:value-of select="fecha"/></TD>
       <TD><xsl:value-of select="numeropost"/></TD>
       <BR></BR>
      </TR>
     </xsl:for-each>
    </TABLE>
  </div>
  <footer class="page-footer">
    <div class="container-fluid">
      <div class="row">
        <div id="about" class="col-lg-3">
          <h1> About us! </h1>
          <h2> Ingenieria Informatica ULL </h2>
          <p>Este sitio web es para todas aquellas
            personas apasionadas del mundo de la programacion<br>
            y sus divertidas partes(o menos divertidas).</br></p>
            <h3>copy Sys-Learn 2018</h3>
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
              <i class="fa fa-map-marker" style="font-size:24px"></i>
            </div>
          </div>
        </div>
      </footer>
   </BODY>
  </HTML>
 </xsl:template>
 </xsl:stylesheet>
