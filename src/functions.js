function comp_correo(email){
  var filtro = /^([a-zA-Z0-9]{1,})+([/$!_-]{0,3})+([a-zA-Z0-9]{1,})
  +\@(([a-zA-Z]{2,20})+([_-]{0,1})+([a-zA-Z]{1,})+\.)+([a-zA-Z]{2,15})/;
  return filtro.test(email);
}

//comp_correo("JuanANIt2223JMm!!aab99@abZZhot-mail.coman")

function get_date(){
  var date = New Date();
  var dia_n = date.getDate();
  var dias = ["Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo"]
  var dia_s = dias[date.getDay()];
  var mes_explic = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"];
  var mes = mes_explic[date.getMonth()];
  var year = date.getFullYear();

  var res = dias + "," + dia_n + "de" + mes + "de" + year
  return res
}

// function get_time(){
//
//     const hora_ = new Date();
//     const seg = now.getSeconds();
//     const transf = ()(seg / 60) * 360);
//
//     setInterval(setDate,1000);
//
//
//       // createCanvas(250, 250);
//       // angleMode(DEGREES);
// }

function setup(){
  createCanvas(400,400);
  angleMode(DEGREES);
}
function draw(){
  // ellipse(mouseX,mouseY,100,100);
  // stroke(255);
  background(158,255,160);

  let hora = hour();
  let seg = second();
  let min = minute();

  translate(200,200);
  rotate(-90);

  // strokeWeight(3);
  // stroke(255);
  // noFill();
  // ellipse(200,200,150,150);

  strokeWeight(8);
  noFill();
  stroke(255,220,150);

  let uno = map(seg,0,60,0,360);
  arc(0,0,300,300,0,uno);

  stroke(232,106,157);
  let dos = map(min,0,60,0,360);
  arc(0,0,250,250,0,dos);

  stroke(255,88,100);
  let tres = map(hora%12,0,12,0,360);
  arc(0,0,220,220,0,tres);


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

  push();
  rotate(uno);
  stroke(150,150,180);
  line(0,0,90,0);
  pop();

  push();
  rotate(dos);
  stroke(150,150,180);
  line(0,0,75,0);
  pop();

  push();
  rotate(tres);
  stroke(150,150,180);
  line(0,0,50,0);
  pop();

  stroke(255,231,47);
  point(0,0);

}


// ejercicios ,etc parte xml xsl ya que son datos estaticos
// ranking no es posible ya que tiene que ser dinamico
