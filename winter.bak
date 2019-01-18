#lang racket

;TODO
; -- create beginner starter projects 1-5
; -- create QRs for beginner starters
; -- create QRs for completes
; -- replace QRs & numbers in (all-qrs)
; -- take QRs and complete proj numbers out of full pages
; -- resize images on complete pages?

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

(define #;/contract (start-of-class-instructions qr n)
  ;(-> string? string? panel?)
  (titled-image-panel #:fill 'lightgray
                      "INSTRUCTOR: Scan QR starter code, select 'See inside'."
                      (beside
                       (scale 0.5 (local-bitmap qr))
                       (rectangle 100 1 'solid 'transparent)
                       (above
                        (text "Complete Project:" 15 'black)
                        (square 5 'solid 'transparent)
                        (text n 15  'black)))))

(define/contract (qr-holder proj qr1 n1 qr2 n2 qr3 n3)
  (-> number? string? number? string? number? string? number? panel?)
  (titled-image-panel (~a "Project " proj)
                      (beside
                       (above
                        (text "Beginner" 25 'black)
                        (scale .6 (local-bitmap qr1))
                        (text "Project Number:" 15 'black)
                        (text (number->string n1) 15 'black))
                       (rectangle 30 1 'solid 'transparent)
                       (above
                        (text "Advanced" 25 'black)
                        (scale .6 (local-bitmap qr2))
                        (text "Project Number:" 15 'black)
                        (text (number->string n2) 15 'black))
                       (rectangle 30 1 'solid 'transparent)
                       (above
                        (text "Completed" 25 'black)
                        (scale .6 (local-bitmap qr3))
                        (text "Project Number:" 15 'black)
                        (text (number->string n3) 15 'black)))))

(define end-of-class-instructions
  (titled-image-panel #:fill 'lightgray
                      "INSTRUCTOR: Have students help with clean up."
                      (rectangle 1 1 'solid 'white)))

(define (edit-sprite-challenge)
  (auto-layout #:page-height 600

               (titled-image-panel "Edit the Superhero!"
                                   (beside
                                    (scale .3 (local-bitmap "winter-challenge-1.png"))
                                    (scale .3 (local-bitmap "winter-challenge-2.png"))))

               (titled-image-panel "1. Click on Costumes"
                                   (scale .5 (local-bitmap "costume-tab.png")))

               (titled-image-panel "2. Zoom in!"
                                   (scale .6 (local-bitmap "winter-zoom-in.png")))

               (titled-image-panel "3. Change the Superhero!\nTry Changing the colors with the Fill Bucket or drawing something new with the Brush!"
                                   (beside 
                                    (scale .6 (local-bitmap "paint-a-character-1.png"))
                                    (scale .8 (local-bitmap "paint-a-character-2.png"))))
               ))


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
               (titled-image-panel #:fill 'white
                                   "Project 1"
                                   (rectangle 1 1 'solid 'white))
               
               (start-of-class-instructions "starter-1-qr.png" "266345757")

               (titled-image-panel "1. Meet Major Triumph!\nWe need to help him walk!"
                                   (scale .7 (local-bitmap "major-triumph-1.png")))

               (titled-image-panel "2. Check out the code."
                                   (scale 0.6 (local-bitmap "winter-p1-starter.png")))

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

               (titled-image-panel #:fill 'white
                                   "Project 2"
                                   (rectangle 1 1 'solid 'white))
               
               (start-of-class-instructions "starter-2-qr.png" "266610880")

               (titled-image-panel "1. Look at the code\n He can walk!"
                                   (scale .5 (local-bitmap "winter-p2-starter.png")))

               (titled-image-panel "2. Add animation!"
                                   (scale .6 (local-bitmap "winter-p2-animate.png")))

               (titled-image-panel "3. Let's make him fly!"
                                   (scale .7 (local-bitmap "winter-p2-fly-1.png")))

               (titled-image-panel "4. Make him glide away!"
                                   (scale .7 (local-bitmap "winter-p2-fly-2.png")))

               (titled-image-panel "5. Make him come back!"
                                   (scale .8 (local-bitmap "winter-p2-fly-3.png")))
                              
               end-of-class-instructions))

(define (changing-costumes)
  (auto-layout #:page-height 1200

               (titled-image-panel #:fill 'white
                                   "Project 3"
                                   (rectangle 1 1 'solid 'white))
               
               (start-of-class-instructions "starter-3-qr.png" "268486163")

               (titled-image-panel "1. Meet Tommy Bark!\nWe need to help him transform into Gallium-Man!"
                                   (beside (local-bitmap "tommy-bark-1.png")
                                           (scale .5 (local-bitmap "winter-p3-starter.png"))))

               (titled-image-panel "2. Add a transform key."
                                   (scale .7 (local-bitmap "winter-p3-space-1.png")))

               (titled-image-panel "3. Send the position and hide!"
                                   (scale .8 (local-bitmap "winter-p3-space-2.png")))

               (titled-image-panel "4. Help Gallium-Man walk!"
                                   (beside (scale .8 (local-bitmap "gallium-man-1.png"))
                                           (scale .7 (local-bitmap "winter-p3-move-1.png"))))

               (titled-image-panel "5. Move Gallium-Man."
                                   (scale .6 (local-bitmap "winter-p3-move-2.png")))

               (titled-image-panel "6. Animate Gallium-Man!"
                                   (scale .6 (local-bitmap "winter-p3-animate.png")))
      
               end-of-class-instructions))

(define (fly-gallium-man)
  (auto-layout #:page-height 1200

               (titled-image-panel #:fill 'white
                                   "Project 4"
                                   (rectangle 1 1 'solid 'white))
               
               (start-of-class-instructions "starter-4-qr.png" "266609923")

               (titled-image-panel "1. Gallium-Man wants to fly\nAdd TWO if-then blocks\ninside a forever block."
                                   (beside (scale .8 (local-bitmap "gallium-man-1.png"))
                                           (scale .6 (local-bitmap "winter-p4-fly-1.png"))))

               (titled-image-panel "2. Add the key pressed? blocks!"
                                   (scale .6 (local-bitmap "winter-p4-fly-2.png")))

               (titled-image-panel "3. Help him fly up!"
                                   (scale .6 (local-bitmap "winter-p4-fly-3.png")))

               (titled-image-panel "4. Help him fly down!"
                                   (scale .6 (local-bitmap "winter-p4-fly-4.png")))

               (titled-image-panel "5. Challenge\nThrow an Energy Ball!"
                                   (scale .6 (local-bitmap "winter-p4-energize.png")))
    
               end-of-class-instructions))

(define (arachnid-boy-climbing)
  (auto-layout #:page-height 1200

               (titled-image-panel #:fill 'white
                                   "Project 5"
                                   (rectangle 1 1 'solid 'white))
               
               (start-of-class-instructions "starter-5-qr.png" "279876349")

               (titled-image-panel "1. Meet Arachnid-Boy!"
                                   (scale .4 (local-bitmap "arachnid-boy.png"))
                                           #;(scale .5 (local-bitmap "winter-p5-starter.png")))

               (titled-image-panel "2. Help him move up and down!"
                                   (scale .7 (local-bitmap "winter-p5-point-90.png")))

               (titled-image-panel "3. Change the Y position!"
                                   (scale .7 (local-bitmap "winter-p5-change-y.png")))

               (titled-image-panel "4. Create a Web clone!"
                                   (scale .7 (local-bitmap "winter-p5-clone.png")))

               (titled-image-panel "5. Shoot Web!"
                                   (scale .7 (local-bitmap "winter-p5-wait.png")))

               (titled-image-panel "6. Challenge\nMake Poison respawn!"
                                   (beside
                                    (scale .4 (local-bitmap "poison.png"))
                                    (scale .8 (local-bitmap "winter-p5-poison-challenge.png"))))
    
               end-of-class-instructions))

(define (all-qrs)
  (auto-layout #:page-height 1200

               (titled-image-panel #:fill 'white
                                   "All QRS"
                                   (rectangle 1 1 'solid 'white))
        
               (qr-holder 1
                          "starter-1-qr.png" 266345757
                          "starter-1-qr.png" 266345757
                          "starter-1-qr.png" 266345757)

               (qr-holder 2
                          "starter-2-qr.png" 266610880
                          "starter-2-qr.png" 266610880
                          "starter-2-qr.png" 266610880)

               (qr-holder 3
                          "starter-3-qr.png" 268486163
                          "starter-3-qr.png" 268486163
                          "starter-3-qr.png" 268486163)

               (qr-holder 4
                          "starter-4-qr.png" 266609923
                          "starter-4-qr.png" 266609923
                          "starter-4-qr.png" 266609923)

               (qr-holder 5
                          "starter-5-qr.png" 279876349
                          "starter-5-qr.png" 279876349
                          "starter-5-qr.png" 279876349)
               ))

(define (quest1)
  (list
   (walking-superhero)
   ))

(define (quest2)
  (list
   (flying-superhero)
   ))

(define (quest3)
  (list
   (changing-costumes)
   ))

(define (quest4)
  (list
   (fly-gallium-man)
   ))

(define (quest5)
  (list
   (arachnid-boy-climbing)
   ))

; -- CHALLENGES
(define  (edit-sprite)
  (list (edit-sprite-challenge)
        (edit-sprite-challenge)))

(module+ test
  ;(quest1)
  ;(quest2)
  ;(edit-sprite)
  ;(quest3)
  ;(quest4)
  ;(quest5)
  (all-qrs)

  )

(define (quests)
  (list quest1
        quest2
        edit-sprite
        quest3
        quest4
        quest5
        ))
