Pantalla inicio;
Pantalla tutorial;
Pantalla seleccion;
Pantalla seleccion2;
Pantalla combate;
Pantalla dcombate;

Peleador tlamani;
Peleador papalotl;
Peleador feral;
Peleador jaguar;
Peleador aguila;
Peleador tlamanib;
Peleador papalotlb;
Peleador feralb;
Peleador jaguarb;
Peleador aguilab;

int P = 0;
int J1 = 0;
int J2 = 0;

int J1_HP = 1200;
int J2_HP = 1200;
int J1_A = 7;
int J2_A = 7;

void setup(){
  size(720, 720);
  
  inicio = new Pantalla(0, 0, width, color(136, 125, 93), "ÁANTENÍ", 40, 360, 150);
  tutorial = new Pantalla(0, 0, width, color(136, 125, 93), "Tutorial", 270, 50, 50);
  seleccion = new Pantalla(0, 0, width, color(136, 125, 93), "Jugador 1 selecciona \nun personaje", 100, 50, 50);
  seleccion2 = new Pantalla(0, 0, width, color(136, 125, 93), "Jugador 2 selecciona \nun personaje", 100, 50, 50);
  combate = new Pantalla(0, 0, width, color(162, 244, 235), "VS.", 350, 700, 50);
  dcombate = new Pantalla(0, 0, width, color(136, 125, 93), "FIN DE LA PARTIDA", 40, 100, 70);
  
  tlamani = new Peleador(0, 0, 400, 5, 4, 3, 1);
  papalotl = new Peleador(0, 0, 400, 5, 4, 3, 2);
  feral = new Peleador(0, 0, 400, 5, 4, 3, 3);
  jaguar = new Peleador(0, 0, 400, 5, 4, 3, 4);
  aguila = new Peleador(0, 0, 400, 5, 4, 3, 5);
  
  tlamanib = new Peleador(0, 0, 400, 5, 4, 3, 1);
  papalotlb = new Peleador(0, 0, 400, 5, 4, 3, 2);
  feralb = new Peleador(0, 0, 400, 5, 4, 3, 3);
  jaguarb = new Peleador(0, 0, 400, 5, 4, 3, 4);
  aguilab = new Peleador(0, 0, 400, 5, 4, 3, 5);
}

void draw(){
  
  background(255);
  
  inicio.display();
  textSize(15);
  text("Presiona M para ir a la selección de personajes \nPresiona N para ir al tutorial", 20, 650);
  
  if(keyPressed){
    if(key == 'm' || key == 'M'){
      P = 1;
    }
    else if(key == 'n' || key == 'N'){
      P = -1;
    }
    else if(key == 'g' || key == 'G'){
      P = 0;
    }
  }
  
  if(P == 0){
    //Inicio
    inicio.display();
    textSize(15);
    text("Presiona M para ir a la selección de personajes \nPresiona N para ir al tutorial", 20, 650);
  }
  
  else if(P == 1){
    //SeleccionPersonajes
    seleccion.display();
      
      pushMatrix();
      translate(10, 180);
      tlamani.tlamani();
      popMatrix();
      
      pushMatrix();
      translate(290, 180);
      papalotl.papalotl();
      popMatrix();
      
      pushMatrix();
      translate(540, 180);
      feral.feral();
      popMatrix();
      
      pushMatrix();
      translate(135, 480);
      jaguar.jaguar();
      popMatrix();
      
      pushMatrix();
      translate(405, 480);
      aguila.aguila();
      popMatrix();
      
      textSize(15);
      text("Guerrero Tlamani - Q", 35, 400);
      text("Guerrero Papalotl - W", 310, 400);
      text("Guerrero Chanec - E", 560, 400);
      text("Guerrero Ocēlōpilli - R", 150, 700);
      text("Guerrero Cuāuhpilli - T", 420, 700);
      
      if(keyPressed){
        if(key == 'q' || key == 'Q'){
          J1 = 1;
          J2 = 0;
        }
        else if(key == 'w' || key == 'W'){
          J1 = 2;
          J2 = 0;
        }
        else if(key == 'e' || key == 'E'){
          J1 = 3;
          J2 = 0;
        }
        else if(key == 'r' || key == 'R'){
          J1 = 4;
          J2 = 0;
        }
        else if(key == 't' || key == 'T'){
          J1 = 5;
          J2 = 0;
        }
      }
      
      if(J1 != 0){
        seleccion2.display();
      
        pushMatrix();
        translate(10, 180);
        tlamani.tlamani();
        popMatrix();
        
        pushMatrix();
        translate(290, 180);
        papalotl.papalotl();
        popMatrix();
        
        pushMatrix();
        translate(540, 180);
        feral.feral();
        popMatrix();
        
        pushMatrix();
        translate(135, 480);
        jaguar.jaguar();
        popMatrix();
        
        pushMatrix();
        translate(405, 480);
        aguila.aguila();
        popMatrix();
        
        textSize(15);
        text("Guerrero Tlamani - Z", 35, 400);
        text("Guerrero Papalotl - X", 310, 400);
        text("Guerrero Chanec - C", 560, 400);
        text("Guerrero Ocēlōpilli - V", 150, 700);
        text("Guerrero Cuāuhpilli - B", 420, 700);
        
        if(keyPressed){
        if(key == 'z' || key == 'Z'){
          J2 = 1;
        }
        else if(key == 'x' || key == 'X'){
          J2 = 2;
        }
        else if(key == 'c' || key == 'C'){
          J2 = 3;
        }
        else if(key == 'v' || key == 'V'){
          J2 = 4;
        }
        else if(key == 'b' || key == 'B'){
          J2 = 5;
        }
      }
    }
  }
  
  else if(P == -1){
    tutorial.display();
    textSize(30);
    text("Jugador 1: \nGolpea con A", 40, 300);
    text("Jugador 2: \nGolpea con J", 430, 300);
    }
    
    else if(P == 2){
      dcombate.display();
    }
  
  if(J1 != 0 && J2 != 0){
    //Batalla
    combate.display();
    
    if(J1 == 1 && J2 == 1){
        pushMatrix();
        scale(2);
        translate(170, 120);
        scale(-1, 1);
        tlamani.tlamani();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(190, 120);
        tlamani.tlamani();
        popMatrix();
        
         tlamanib.hp = J2_HP;
         tlamani.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +tlamani.hp);
          println("J2 =" +tlamanib.hp); 
      }
      
      if(J1 == 1 && J2 == 2){
        pushMatrix();
        scale(2);
        translate(170, 120);
        scale(-1, 1);
        tlamani.tlamani();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(190, 120);
        papalotl.papalotl();
        popMatrix();
        
        papalotl.hp = J2_HP;
         tlamani.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +tlamani.hp);
          println("J2 =" +papalotl.hp);
        
      }
      
      if(J1 == 1 && J2 == 3){
        pushMatrix();
        scale(2);
        translate(170, 120);
        scale(-1, 1);
        tlamani.tlamani();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(190, 120);
        feral.feral();
        popMatrix();
        
        feral.hp = J2_HP;
         tlamani.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +tlamani.hp);
          println("J2 =" +feral.hp);
        
      }
      
      if(J1 == 1 && J2 == 4){
        pushMatrix();
        scale(2);
        translate(170, 120);
        scale(-1, 1);
        tlamani.tlamani();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(180, 120);
        jaguar.jaguar();
        popMatrix();
        
        jaguar.hp = J2_HP;
         tlamani.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +tlamani.hp);
          println("J2 =" +jaguar.hp);
        
      }
      
      if(J1 == 1 && J2 == 5){
        pushMatrix();
        scale(2);
        translate(170, 120);
        scale(-1, 1);
        tlamani.tlamani();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(190, 120);
        aguila.aguila();
        popMatrix();
        
        aguila.hp = J2_HP;
         tlamani.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +tlamani.hp);
          println("J2 =" +aguila.hp);
        
      }
      
      if(J1 == 2 && J2 == 1){
        pushMatrix();
        scale(2);
        translate(170, 120);
        scale(-1, 1);
        papalotl.papalotl();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(190, 120);
        tlamani.tlamani();
        popMatrix();
        
        tlamani.hp = J2_HP;
         papalotl.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +papalotl.hp);
          println("J2 =" +tlamani.hp);
        
      }
      
      if(J1 == 2 && J2 == 2){
        pushMatrix();
        scale(2);
        translate(170, 120);
        scale(-1, 1);
        papalotl.papalotl();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(190, 120);
        papalotl.papalotl();
        popMatrix();
        
        papalotlb.hp = J2_HP;
         papalotl.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +papalotl.hp);
          println("J2 =" +papalotlb.hp);
        
      }
      
      if(J1 == 2 && J2 == 3){
        pushMatrix();
        scale(2);
        translate(170, 120);
        scale(-1, 1);
        papalotl.papalotl();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(190, 120);
        feral.feral();
        popMatrix();
        
        feral.hp = J2_HP;
         papalotl.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +papalotl.hp);
          println("J2 =" +feral.hp);
        
      }
      
      if(J1 == 2 && J2 == 4){
        pushMatrix();
        scale(2);
        translate(170, 120);
        scale(-1, 1);
        papalotl.papalotl();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(180, 120);
        jaguar.jaguar();
        popMatrix();
        
        jaguar.hp = J2_HP;
         papalotl.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +papalotl.hp);
          println("J2 =" +jaguar.hp);
        
      }
      
      if(J1 == 2 && J2 == 5){
        pushMatrix();
        scale(2);
        translate(170, 120);
        scale(-1, 1);
        papalotl.papalotl();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(190, 120);
        aguila.aguila();
        popMatrix();
        
        aguila.hp = J2_HP;
         papalotl.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +papalotl.hp);
          println("J2 =" +aguila.hp);
        
      }
      
      if(J1 == 3 && J2 == 1){
        pushMatrix();
        scale(2);
        translate(170, 120);
        scale(-1, 1);
        feral.feral();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(190, 120);
        tlamani.tlamani();
        popMatrix();
        
        tlamani.hp = J2_HP;
         feral.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +feral.hp);
          println("J2 =" +tlamani.hp);
        
      }
      
      if(J1 == 3 && J2 == 2){
        pushMatrix();
        scale(2);
        translate(170, 120);
        scale(-1, 1);
        feral.feral();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(190, 120);
        papalotl.papalotl();
        popMatrix();
        
        papalotl.hp = J2_HP;
         feral.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +feral.hp);
          println("J2 =" +papalotl.hp);
        
      }
      
      if(J1 == 3 && J2 == 3){
        pushMatrix();
        scale(2);
        translate(170, 120);
        scale(-1, 1);
        feral.feral();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(190, 120);
        feral.feral();
        popMatrix();
        
        feralb.hp = J2_HP;
         feral.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +feral.hp);
          println("J2 =" +feralb.hp);
        
      }
      
      if(J1 == 3 && J2 == 4){
        pushMatrix();
        scale(2);
        translate(170, 120);
        scale(-1, 1);
        feral.feral();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(180, 120);
        jaguar.jaguar();
        popMatrix();
        
        jaguar.hp = J2_HP;
         feral.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +feral.hp);
          println("J2 =" +jaguar.hp);
        
      }
      
      if(J1 == 3 && J2 == 5){
        pushMatrix();
        scale(2);
        translate(170, 120);
        scale(-1, 1);
        feral.feral();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(190, 120);
        aguila.aguila();
        popMatrix();
        
        aguila.hp = J2_HP;
         feral.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +feral.hp);
          println("J2 =" +aguila.hp);
        
      }
      
      if(J1 == 4 && J2 == 1){
        pushMatrix();
        scale(2);
        translate(180, 120);
        scale(-1, 1);
        jaguar.jaguar();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(190, 120);
        tlamani.tlamani();
        popMatrix();
        
        tlamani.hp = J2_HP;
         jaguar.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +jaguar.hp);
          println("J2 =" +tlamani.hp);
        
      }
      
      if(J1 == 4 && J2 == 2){
        pushMatrix();
        scale(2);
        translate(180, 120);
        scale(-1, 1);
        jaguar.jaguar();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(190, 120);
        papalotl.papalotl();
        popMatrix();
        
        papalotl.hp = J2_HP;
         jaguar.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +jaguar.hp);
          println("J2 =" +papalotl.hp);
        
      }
      
      if(J1 == 4 && J2 == 3){
        pushMatrix();
        scale(2);
        translate(180, 120);
        scale(-1, 1);
        jaguar.jaguar();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(190, 120);
        feral.feral();
        popMatrix();
        
        feral.hp = J2_HP;
         jaguar.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +jaguar.hp);
          println("J2 =" +feral.hp);
        
      }
      
      if(J1 == 4 && J2 == 4){
        pushMatrix();
        scale(2);
        translate(180, 120);
        scale(-1, 1);
        jaguar.jaguar();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(180, 120);
        jaguar.jaguar();
        popMatrix();
        
        jaguarb.hp = J2_HP;
         jaguar.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +jaguar.hp);
          println("J2 =" +jaguarb.hp);
        
      }
      
      if(J1 == 4 && J2 == 5){
        pushMatrix();
        scale(2);
        translate(180, 120);
        scale(-1, 1);
        jaguar.jaguar();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(190, 120);
        aguila.aguila();
        popMatrix();
        
        aguila.hp = J2_HP;
         jaguar.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +jaguar.hp);
          println("J2 =" +aguila.hp);
        
      }
      
      if(J1 == 5 && J2 == 1){
        pushMatrix();
        scale(2);
        translate(180, 120);
        scale(-1, 1);
        aguila.aguila();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(190, 120);
        tlamani.tlamani();
        popMatrix();
        
        tlamani.hp = J2_HP;
         aguila.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +aguila.hp);
          println("J2 =" +tlamani.hp);
        
      }
      
      if(J1 == 5 && J2 == 2){
        pushMatrix();
        scale(2);
        translate(180, 120);
        scale(-1, 1);
        aguila.aguila();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(190, 120);
        papalotl.papalotl();
        popMatrix();
        
        papalotl.hp = J2_HP;
         aguila.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +aguila.hp);
          println("J2 =" +papalotl.hp);
        
      }
      
      if(J1 == 5 && J2 == 3){
        pushMatrix();
        scale(2);
        translate(180, 120);
        scale(-1, 1);
        aguila.aguila();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(190, 120);
        feral.feral();
        popMatrix();
        
        feral.hp = J2_HP;
         aguila.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +aguila.hp);
          println("J2 =" +feral.hp);
        
      }
      
      if(J1 == 5 && J2 == 4){
        pushMatrix();
        scale(2);
        translate(180, 120);
        scale(-1, 1);
        aguila.aguila();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(180, 120);
        jaguar.jaguar();
        popMatrix();
        
        jaguar.hp = J2_HP;
         aguila.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +aguila.hp);
          println("J2 =" +jaguar.hp);
        
      }
      
      if(J1 == 5 && J2 == 5){
        pushMatrix();
        scale(2);
        translate(180, 120);
        scale(-1, 1);
        aguila.aguila();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(190, 120);
        aguila.aguila();
        popMatrix();
        
        aguilab.hp = J2_HP;
         aguila.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +aguila.hp);
          println("J2 =" +aguilab.hp);
        
      }
  }
  
  if(J1_HP <= 0 || J2_HP <= 0){
    
    dcombate.display(); 
    }
  
}
