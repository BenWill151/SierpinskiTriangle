import processing.core.PApplet;

public class Sketch extends PApplet {

  // _______________________________________________________
  //  \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ 
  //    !!!!!!!!! WARNING ONLY RUN IN PROCESSING !!!!!!!!!
  //  /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\
  // _______________________________________________________

  
    public void settings() {
    size(1000, 1000);
  }

  public void setup(){
    //empty!
  }
  public void draw(){
    sierpinski(width/2,height/2,1000);
    
  }
  public void mouseDragged(){ //optional
    //too much lag dont enable
    //float scalebar = map(mouseX,0,width,.3,5);
    //scale(scaleVar);
  }
  // _______________________________________________________
  //  \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ 
  //    !!!!!!!!! WARNING ONLY RUN IN PROCESSING !!!!!!!!!
  //  /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\
  // _______________________________________________________
  public void sierpinski(float x, float y, float len) {
    if(len<= .01){ // change to .1 or 1 if it light your pc on fire
      myHexagon(x,y,len);        
    } else {
      float halfLen = len / 2;
      sierpinski(x, y + len/2, len/2);
      sierpinski(x - (len * 0.5f), y - (halfLen / 2), halfLen);
      sierpinski(x + (len * 0.5f), y - (halfLen / 2), halfLen);
    }    
  }
  public void myHexagon(float x, float y, float scale){
  float theight = 5 * scale;
  float hs = 3 * scale;

    
  //stroke((float)(Math.random()*255),(float)(Math.random()*255),(float)(Math.random()*255)); 
  //too much lag
  //^^^^^^^enable only if on beefy computer


    
  noFill();
  beginShape();
  vertex(x-hs,y+theight);
  vertex(x+hs,y+theight);
  vertex(x+hs*2,y);
  vertex(x+hs,y-theight);
  vertex(x-hs,y-theight);
  vertex(x-hs*2,y);
  vertex(x-hs,y+theight);
  endShape();  
 }
}

// _______________________________________________________
  //  \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ 
  //    !!!!!!!!! WARNING ONLY RUN IN PROCESSING !!!!!!!!!
  //  /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\
  // _______________________________________________________
