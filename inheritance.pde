
int screenType = 0; 

Ball ball = new Ball(300,200,30,30);
Paddle paddle1 = new Paddle(20,150,20,100);
Paddle paddle2 = new Paddle(560,220,20,100);

void setup(){
  size(600,400);  
}

void draw(){
  
  if(screenType == 0){
    startScreen();
  } else if (screenType == 1){
    gameScreen();
  }else if (screenType == 2) {
    gameOverScreen();
  }
}


void startScreen(){
  background(0, 200, 0);
  textAlign(CENTER);
  textSize(32);
  text("Click to start", width / 2 - 10, 200);
}
 
void gameScreen(){
  
  background(0, 200, 0);
  noFill();
  line(300, 0, 300, height);
  ellipse(300, 200, 90, 90);
  stroke(0);
  fill(255);
  paddle1.drawPaddle();
  paddle2.drawPaddle();
  ball.drawBall();
  stroke(255);
  ball.ballMovement();
  paddle1.paddleMovement();
  paddle2.paddleMovement();

}

void gameOverScreen(){
  textSize(68);
  textAlign(CENTER);
  text("GAME OVER!", (width / 2), 100);
  textSize(32);
  text("Click to restart", width / 2 - 10, 300);
  screenType = 2;
}





public void mousePressed(){
 
  if(screenType == 0){
     startGame(); 
  }
  if(screenType == 2){
    restartGame();
  }
}


void startGame() {
  screenType=1;
}

void restartGame() {
 ball = new Ball(300,200,30,30);
 paddle1 = new Paddle(20,150,20,100);
 paddle2 = new Paddle(560,150,20,100);
 screenType = 0;
}
