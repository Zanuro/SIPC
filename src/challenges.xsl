<?xml version='1.0' ?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
   <HTML>
     <head>
       <meta http-equiv="content-type" />
       <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
       <meta charset="UTF-8"/>
       <title> SysLearn </title>
       <link rel="stylesheet" type="text/css" href="design.css"/>
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
    <BODY style="margin-top:250px;">
     <B>Desafios de Programación</B>
     <BR/>
     <BR/>
     <TABLE border="1">
       <TR>
         <th>Nombre</th>
         <th>Descripción</th>
         <th>Dificultad</th>
         <th>Fecha Inicio</th>
         <th>Fecha Final</th>
         <th>%Acierto</th>
       </TR>
      <xsl:for-each  select="Desafios/Challenge">
        <xsl:sort order="descending" select="naciertos div nintenos * 100"  data-type="number" />
       <TR>
        <TD><xsl:value-of select="Name"/></TD>
        <TD><xsl:value-of select="Text"/></TD>
        <TD><xsl:value-of select="Difficulty"/></TD>
        <TD><xsl:value-of select="sDate"/></TD>
        <TD><xsl:value-of select="eDate"/></TD>
        <TD><xsl:value-of select='format-number(naciertos div nintenos * 100,"##")'/>%</TD>
        <BR></BR>
       </TR>
      </xsl:for-each>
     </TABLE>
    </BODY>
   </HTML>
  </xsl:template>
 </xsl:stylesheet>
