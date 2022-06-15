class Paddle {
  int x; 
  int y; 
  int w; 
  int h; 
  int paddleSpeed; 
  
  public Paddle(int xc,int yc, int w, int h){
    this.x = xc;
    this.y = yc;
    this.w = w;
    this.h = h;
    this.paddleSpeed = 4;
  }
  
  void drawPaddle(){
    rect(this.x,this.y,this.w,this.h);
  }
  
  void paddleMovement(){
    
    if(keyPressed){
    if (keyCode == DOWN) {
      if (paddle2.y < height - 100) {
        paddle2.y = paddle2.y + paddleSpeed;
      }
    }
    
    if (keyCode == SHIFT) {
      if (paddle1.y > 0) {
        paddle1.y = paddle1.y - paddleSpeed;
      }
    }
    
    if (keyCode == UP) {
      if (paddle2.y > 0) {
        paddle2.y = paddle2.y - paddleSpeed;
      }
    }
    
    if (keyCode == CONTROL) {
      if (paddle1.y < height - 100) {
        paddle1.y = paddle1.y + paddleSpeed;
      }
    }
   }
  }
}
