#lang racket

;Provide all your quests from main.
(provide quests)

(require pict/code)
(require ts-curric-common)
(require 2htdp/image)

(require racket/runtime-path)
(define-runtime-path images "images")

(define (local-bitmap s)
  (bitmap/file (~a (path->string images) "/" s)))

(define (worksheet title sub-title)
  (auto-layout #:page-height 500
   
               (titled-image-panel title
                                   (above/align "left"
                                                (square 10 'solid 'transparent)
                                                (text (~a " " sub-title) 15 'black)
                                                (square 10 'solid 'transparent)
                                                (rectangle 1000 200 'outline 'black)))))

(define/contract (start-of-class-instructions qr n)
  (-> string? string? panel?)
  (titled-image-panel #:fill 'lightgray
                      "INSTRUCTOR: Scan QR starter code, select 'See inside'."
                      (beside
                       (scale 0.5 (local-bitmap qr))
                       (rectangle 100 1 'solid 'transparent)
                       (above
                        (text "Complete Project:" 15 'black)
                        (square 5 'solid 'transparent)
                        (text n 15  'black)))))

(define end-of-class-instructions
  (titled-image-panel #:fill 'lightgray
                      "INSTRUCTOR: Have students help with clean up."
                      (rectangle 1 1 'solid 'white)))

#;(define (design-your-own-sprite-challenge)
  (auto-layout #:page-height 500

               (titled-image-panel "Draw Your Own Superhero!"
                                   (square 1 'solid 'transparent))

               (titled-image-panel "1. Click on Costumes"
                                   (local-bitmap "costume-tab.png"))

               (titled-image-panel "2. Clear Existing Sprite"
                                   (local-bitmap "winter-challenge-1.png"))

               (titled-image-panel "3. Draw "
                                   (local-bitmap "winter-challenge-1.png")
               )))


(define (resize-sprite-hint)
  (auto-layout #:page-height 500
   
               (titled-image-panel "1. Select your tool"
                                   (local-bitmap "grow-shrink-tools.png"))

               (titled-image-panel "2. Go to costumes"
                                   (local-bitmap "costume-tab.png"))

               (titled-image-panel "3. Select your sprite"
                                   (local-bitmap "shrink-click-sprite.png"))

               (titled-image-panel "4. Click on the tool to stop"
                                   (rectangle 900 1 'solid 'white))))
  
(define (walking-superhero)
  (auto-layout #:page-height 1200
                
   (start-of-class-instructions "starter-1-qr.png" "266345757")

   (titled-image-panel "1. Meet Major Triumph!\nWe need to help him walk!"
                       (scale 2.5 (local-bitmap "major-triumph-step-right.png")))

   (titled-image-panel "2. Check out the code."
                       (scale 0.7 (local-bitmap "winter-p1-starter.png")))

   (titled-image-panel "3. Walk to the right!"
                       (scale 0.9 (local-bitmap "winter-p1-move-1.png")))

   (titled-image-panel "4. Walk to the left!"
                       (scale 0.9 (local-bitmap "winter-p1-move-2.png")))
      
   (titled-image-panel "5. Create another script."
                       (scale 0.8 (local-bitmap "winter-p1-animate-1.png")))

   (titled-image-panel "6. Check for key pressed."
                       (scale 0.8 (local-bitmap "winter-p1-animate-2.png")))

   (titled-image-panel "7. Animate it!"
                       (scale 0.8 (local-bitmap "winter-p1-animate-3.png")))
                              
   end-of-class-instructions))

(define (flying-superhero)
  (auto-layout #:page-height 1200
   (start-of-class-instructions "starter-2-qr.png" "get number here") ;CHANGE TO #2!!!!

   (titled-image-panel "1. Look at the code\n He can walk!"
                       (scale .5 (local-bitmap "winter-p2-starter.png")))

   (titled-image-panel "2. Add animation!"
                       (scale .6 (local-bitmap "winter-p2-animate.png")))

   (titled-image-panel "3. Let's make him fly!"
                       (scale .7 (local-bitmap "winter-p2-fly-1.png")))

   (titled-image-panel "4. Make him glide away!"
                       (scale .7 (local-bitmap "winter-p2-fly-2.png")))

   (titled-image-panel "5. Make him come back!"
                       (scale .7 (local-bitmap "winter-p2-fly-3.png")))

                              
   end-of-class-instructions))

(define (quest1)
  (list
   (walking-superhero)
   ))

(define (quest2)
  (list
   (flying-superhero)
   ))

(module+ test
  (quest1)
  (quest2))

(define (quests)
  (list quest1
        quest2))
