int secRecCounter = 0;
int recCounter = 0;
void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  //your code here
  background(0);
   for(int j = 0; j <=500; j+=100){ //y movement{
     for(int i = 0; i <= 500; i+=50){ //x movement{
       scale(25 + i, 100 + j); //one scale
     
       if(recCounter%2 == 0) //alternate color scales
         fill(#89A2F7);
       else
         fill(255,255,255);
         recCounter++;
     }
   }
}

void scale(int x, int y) {   
  stroke(255,215,0); //gold outline
  strokeWeight(3);
  //quad(250,250, 225, 200, 250, 150, 275, 200);  Height = 100, width = 25
  
  quad(x,y, x-25, y-50, x, y-100, x+25, y-50); //first scale
  
  if(secRecCounter%2 == 0){ //fill out interior scale
    fill(#89A2F7);
    stroke(255,255,255);
  }else{
    fill(255,255,255);
    stroke(#89A2F7);
  }
  secRecCounter++;
    
  quad(x,y-20, x-15, y-50, x, y - 80, x+15, y-50); //interior scale
  fill(255,215,0); //ellipse in center fill
  ellipse(x,y-50,10,10); //ellipse
}


void mousePressed(){
  System.out.print(mouseX);
  System.out.println(", " + mouseY); 
}
