
int antalKast=100; //justerer på hvor mange gange terningen kastest

//integers for søjlernes højder, så højden kan justeres af antal kast der giver det nummer
int h1=0; int h2=0; int h3=0; int h4=0; int h5=0; int h6=0; 

float widthSojle=500/6; //laver søjlebredden til en variabel så det er nemmere at skrive i setup


void setup() {
  size(500, 500); 

  loop(); //kalder loop funktionen der tæller og sorterer kast

  //Floater array over de forskellige højder af søjlerne
  float[] listeSojler = {h1, h2, h3, h4, h5, h6};
  
  //variabel der ganges med højderne for at den højeste søjle fylder hele skærmen
  float maxHojde = height/max(listeSojler);


  fill(255, 40, 180);
  
  //tegner søjlerne
  rect(0, height-h1*maxHojde, widthSojle, h1*maxHojde);
  rect(widthSojle, height-h2*maxHojde, widthSojle, h2*maxHojde);
  rect(2*widthSojle, height-h3*maxHojde, widthSojle, h3*maxHojde);
  rect(3*widthSojle, height-h4*maxHojde, widthSojle, h4*maxHojde);
  rect(4*widthSojle, height-h5*maxHojde, widthSojle, h5*maxHojde);
  rect(5*widthSojle, height-h6*maxHojde, widthSojle, h6*maxHojde);
}

void loop() {

  //loop der kaster terningen 'antalKast'-gange
  for (int x=0; x<antalKast; x++) {

    //random der vælger et tal mellem 1 og 6 (afrundes da det bliver lavet om til en integer)
    int n = (int) random(1, 7);

    //switchstatement der siger der skal ligges højde til en af søjlerne (casesne)
    switch (n) {
    case 1:
      h1++;
      break;
    case 2:
      h2++;
      break;
    case 3:
      h3++;
      break;
    case 4:
      h4++;
      break;
    case 5:
      h5++;
      break;
    case 6:
      h6++;
      break;
    }
  }
}
