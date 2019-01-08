 function comp_correo(email){
    var filtro = /^([a-zA-Z0-9]{2,})+@(([a-zA-Z0-9]{1,20})+([_-]{0,1})+([a-zA-Z]){1,})\.[a-zA-Z0-9]{2,8}(?:\.[a-z]{1,5})?$/;
       return filtro.test(email.val());
  }

function vacio(campo, mensaje)
  {
  	if(campo.val() === "")
  	{
  		return mensaje;
  	}
  	return "";
  }

//comp_correo("JuanANIt2223JMm!!aab99@abZZhot-mail.coman")
// function validar_correo() {
//   var $result = $("#result");
//   var email = $("#email").val();
//   $result.text("");
//
//   if (comp_correo(email)) {
//     $result.text(email + " es valido ");
//     $result.css("color", "green");
//   } else {
//     $result.text(email + " no es valido ";
//     $result.css("color", "red");
//   }
//   return false;
// }



  // stroke(255,248,244);
  // line(0,-100,0,100);
  // stroke(255,248,244);
  // line(100,0,-100,0);
  // stroke(81,245,229);
  // point(0,0);
  // push();
  // textSize(12);
  // textAlign(CENTER,CENTER);
  // translate(0,0);
  // rotate(90);
  // stroke(255);
  // strokeWeight(1);
  // fill(0,102,153);
  // text('3',85,0);
  // pop();
//
//   push();
//   rotate(uno);
//   stroke(150,150,180);
//   line(0,0,90,0);
//   pop();
//
//   push();
//   rotate(dos);
//   stroke(150,150,180);
//   line(0,0,75,0);
//   pop();
//
//   push();
//   rotate(tres);
//   stroke(150,150,180);
//   line(0,0,50,0);
//   pop();
//
//   stroke(255,231,47);
//   point(0,0);
//
// }
// var db= firebase.firestore();
//
// function login(){
//   // Add a new document in collection "cities"
//
//   var inputText= document.getElementById("campo_correo").value;
//   var inputPassword = document.getElementById("campo_pass").value;
//   db.collection("Users").doc().set({
//     name: inputText,
//     pass: inputPassword
//   })
//   .then(function() {
//     console.log("Document successfully written!");
//   })
//   .catch(function(error) {
//     console.error("Error writing document: ", error);
//   });
// }

// firebase.auth().onAuthStateChanged(function(user) {
//   if (user) {
//     document.getElementById("usuario_ej").style.display="block";
//     document.getElementById("login_ej").style.display="none";
//
//     var user = firebase.auth().currentUser;
//
//     if(user != null){
//
//       var email_id=user.email;
//       document.getElementById("user_logged").innerHTML = "Bienvenido: " + email
//     }
//
//     // User is signed in.
//   } else {
//     // No user is signed in.
//     document.getElementById("usuario_ej").style.display="none";
//     document.getElementById("login_ej").style.display="block";
//   }
// });
// firebase.auth().onAuthStateChanged(function(user) {
//   if (user) {
//     document.getElementById("usuario_ej").style.display="block";
//     document.getElementById("login_ej").style.display="none";
//     // User is signed in.
//   } else {
//     // No user is signed in.
//       document.getElementById("usuario_ej").style.display="none";
//       document.getElementById("login_ej").style.display="block";
//
//   }
// });
// function login(){
//   var email_usuario=document.getElementById("campo_correo").value;
//   var user_pass = document.getElementById("campo_pass").value;
//   firebase.auth().signInWithEmailAndPassword(email_usuario, user_pass).catch(function(error) {
//   // Handle Errors here.
//   var errorCode = error.code;
//   var errorMessage = error.message;
//   // ...
//   window.alert("Error: " + errorMessage);
//
// });
// }

// function login(){
//
//   var email_usuario=document.getElementById("campo_correo").value;
//   var user_pass = document.getElementById("campo_pass").value;
//
//   firebase.auth().signInWithEmailAndPassword(email_usuario, user_pass).catch(function(error) {
//   // Handle Errors here.
//   var errorCode = error.code;
//   var errorMessage = error.message;
//   // ...
// });
// }
//
// function logout(){
//
//
//   firebase.auth().signOut();
// }

$(document).ready(main);

function main()
{
	$("#submit").click(comprobar_datos);
  $("#submit1").click(comprobar_datoss);
}

function comprobar_datoss()
{
  $("#mensaje-error1").html("");
	var mensaje_error = "";

	mensaje_error += vacio($("#email"), "-No se ha insertado un correo</br>");
	mensaje_error += vacio($("#password"), "-No se ha insertado una contraseña</br>");

	if(!comp_correo($("#email")))
	{
		mensaje_error += "-Correo no valido</br>";
	}
	if(mensaje_error !== "")
	{
		event.preventDefault();
		$("#mensaje-error1").html(mensaje_error);
	}
	else
	{
		$("#form").submit();
	}
}


function comprobar_datos()
{
  $("#mensaje-error").html("");
	var mensaje_error = "";

	mensaje_error += vacio($("#name"), "-No se ha insertado un nombre</br>");
	mensaje_error += vacio($("#emailInput"), "-No se ha insertado un correo</br>");
	mensaje_error += vacio($("#password"), "-No se ha insertado una contraseña</br>");
	mensaje_error += vacio($("#confirm"), "-No se ha confirmado la contraseña</br>");

	if(!comp_correo($("#emailInput")))
	{
		mensaje_error += "-Correo no valido</br>";
	}

	if($("#password").val() !== $("#confirm").val())
	{
		mensaje_error += "-Las dos contraseñas metidas no son iguales</br>";
	}

	if(mensaje_error !== "")
	{
		event.preventDefault();
		$("#mensaje-error").html(mensaje_error);
	}
	else
	{
		$("#form").submit();
	}
}
