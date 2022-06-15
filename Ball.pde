class Ball {
  int x; 
  int y; 
  int w; 
  int h; 
  
  int ballSpeedX;
  int ballSpeedY;
  
  public Ball(int xc,int yc, int w, int h) {
    this.x = xc;
    this.y = yc;
    this.w = w;
    this.h = h;
    this.ballSpeedX = 5;
    this.ballSpeedY = 5;
  }
  
  void drawBall(){
    ellipse(this.x,this.y,this.w,this.h);
  }
  
  void ballMovement(){
    this.x = this.x + ballSpeedX;
    this.y = this.y + ballSpeedY;
    if (this.x < 0 || this.x > 600) {
      gameOverScreen();
    }
    if (this.y > height - 10 || this.y < 10) {
      ballSpeedY = ballSpeedY * -1;
    }
    // Redirect ball when the player blocks it
    if (ball.y <= paddle2.y + 100 && ball.y > paddle2.y && ball.x == paddle2.x - 10) {
      ballSpeedX = ballSpeedX * -1;
    }
    if (ball.y < paddle1.y + 100 && ball.y > paddle1.y && ball.x == paddle1.x + 30) {
      ballSpeedX = ballSpeedX * -1;
    } 
    
  }
  
}
