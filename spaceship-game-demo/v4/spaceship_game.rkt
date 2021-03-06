#lang racket

(require game-engine
         game-engine-demos-common) 

(define WIDTH  640)
(define HEIGHT 480)

(define bg-entity
  (sprite->entity (space-bg-sprite WIDTH HEIGHT 100)
                  #:name     "bg"
                  #:position (posn 0 0)
                  #:components (static)))

(define spaceship-entity
  (sprite->entity spaceship-sprite
                  #:name       "ship"
                  #:position   (posn 100 100)
                  #:components (key-movement 5)))

(start-game (instructions WIDTH HEIGHT "Use arrow keys to move")
            spaceship-entity
            bg-entity)
 
  
