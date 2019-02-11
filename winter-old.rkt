#lang racket

;TODO
; -- create beginner starter projects 1-5
; -- create QRs for beginner starters
; -- create QRs for completes
; -- replace QRs & numbers in (all-qrs)
; -- resize images on complete pages?

;Provide all your quests from main.
(provide quests)

;(require pict/code)
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

(define #;/contract start-of-class-instructions
  ;(-> string? string? panel?)
  (titled-image-panel #:fill 'lightgray
                      "INSTRUCTOR: Scan QR starter code, select 'See inside'."
                      (rectangle 1 1 'solid 'white)))

(define #;/contract (qr-holder proj qr1 n1 qr2 n2 qr3 n3)
  ;(-> number? string? number? string? number? string? number? panel?)
  (titled-image-panel (~a proj)
                      (beside
                       (above
                        (text "Beginner" 25 'black)
                        (scale .6 (local-bitmap qr1))
                        (text "Project Number:" 15 'black)
                        (text (number->string n1) 15 'black))
                       (rectangle 150 1 'solid 'transparent)
                       (above
                        (text "Advanced" 25 'black)
                        (scale .6 (local-bitmap qr2))
                        (text "Project Number:" 15 'black)
                        (text (number->string n2) 15 'black))
                       (rectangle 150 1 'solid 'transparent)
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

; ---- PROJECT 1
(define (walking-superhero)
  (auto-layout #:page-height 1200
               (titled-image-panel #:fill 'white
                                   "Project 1"
                                   (rectangle 1 1 'solid 'white))
               
               start-of-class-instructions

               (titled-image-panel "1. Meet Major Triumph!\nWe need to help him walk!"
                                   (scale .5 (local-bitmap "major-triumph-1.png")))

               (titled-image-panel "2. Walk to the right!"
                                   (scale 0.55 (local-bitmap "winter-p1-move-right.png")))

               (titled-image-panel "3. Walk to the left!"
                                   (scale 0.55 (local-bitmap "winter-p1-move-left.png")))
      
               (titled-image-panel "4. Check for any key press."
                                   (scale 0.6 (local-bitmap "winter-p1-key-press.png")))

               (titled-image-panel "5. Change costumes."
                                   (scale 0.6 (local-bitmap "winter-p1-animate.png")))

               end-of-class-instructions))

; ---- PROJECT 2
(define (flying-superhero)
  (auto-layout #:page-height 1200

               (titled-image-panel #:fill 'white
                                   "Project 2"
                                   (rectangle 1 1 'solid 'white))
               
               start-of-class-instructions

               (titled-image-panel "1. Look at the code\n He can walk!"
                                   (scale .5 (local-bitmap "winter-p2-starter.png")))

               (titled-image-panel "2. Add animation!"
                                   (scale .5 (local-bitmap "winter-p2-animate.png")))

               (titled-image-panel "3. Let's make him fly!"
                                   (scale .5 (local-bitmap "winter-p2-fly-1.png")))

               (titled-image-panel "4. Make him come back!"
                                   (scale .5 (local-bitmap "winter-p2-fly-2.png")))
                              
               end-of-class-instructions))

; ---- PROJECT 3
(define (changing-costumes)
  (auto-layout #:page-height 1200

               (titled-image-panel #:fill 'white
                                   "Project 3"
                                   (rectangle 1 1 'solid 'white))
               
               start-of-class-instructions

               (titled-image-panel "1. Meet Tommy Bark!\nWe need to help him transform into Gallium-Man!"
                                   (scale .4 (local-bitmap "winter-p3-starter.png")))

               (titled-image-panel "2. Add a transform key."
                                   (scale .6 (local-bitmap "winter-p3-space-1.png")))

               (titled-image-panel "3. Send the position and hide!"
                                   (scale .6 (local-bitmap "winter-p3-space-2.png")))

               (titled-image-panel "4. Switch to Gallium-Man\nHelp him move!"
                                   (scale .5 (local-bitmap "winter-p3-move-1.png")))

               (titled-image-panel "5. Move Gallium-Man."
                                   (scale .6 (local-bitmap "winter-p3-move-2.png")))

               (titled-image-panel "6. Animate Gallium-Man!"
                                   (scale .5 (local-bitmap "winter-p3-animate.png")))
      
               end-of-class-instructions))

; ---- PROJECT 4
(define (fly-gallium-man)
  (auto-layout #:page-height 1200

               (titled-image-panel #:fill 'white
                                   "Project 4"
                                   (rectangle 1 1 'solid 'white))
               
               start-of-class-instructions

               (titled-image-panel "1. Gallium-Man wants to fly!."
                                   (scale .5 (local-bitmap "winter-p4-fly-1.png")))

               (titled-image-panel "2. Add the 'key pressed?' blocks!"
                                   (scale .6 (local-bitmap "winter-p4-fly-2.png")))

               (titled-image-panel "3. Help him fly!"
                                   (scale .5 (local-bitmap "winter-p4-fly-3.png")))

               (titled-image-panel "5. Challenge\nThrow an Energy Ball!"
                                   (scale .5 (local-bitmap "winter-p4-energize.png")))
    
               end-of-class-instructions))

; ---- PROJECT 5
(define (arachnid-boy-climbing)
  (auto-layout #:page-height 1200

               (titled-image-panel #:fill 'white
                                   "Project 5"
                                   (rectangle 1 1 'solid 'white))
               
               start-of-class-instructions

               (titled-image-panel "1. Meet Arachnid-Boy\nHelp him move up and down!"
                                   (scale .45 (local-bitmap "winter-p5-move.png")))

               (titled-image-panel "2. Create a Web clone!"
                                   (scale .55 (local-bitmap "winter-p5-clone.png")))

               (titled-image-panel "3. Challenge\nMake Poison respawn!"
                                   (scale .55 (local-bitmap "winter-p5-poison-challenge.png")))
  
               end-of-class-instructions))

; ---- PROJECT 6
(define (arachnid-boy-vs-poison)
  (auto-layout #:page-height 1200

               (titled-image-panel #:fill 'white
                                   "Project 6"
                                   (rectangle 1 1 'solid 'white))
               
               start-of-class-instructions

               (titled-image-panel "1. Meet Poison\nHe wants to shoot web!"
                                   (scale .55 (local-bitmap "winter-p6-hidden-var.png")))

               (titled-image-panel "2. Add a forever loop."
                                   (scale .6 (local-bitmap "winter-p6-loop.png")))

               (titled-image-panel "3. Create a Web2 clone!"
                                   (scale .55 (local-bitmap "winter-p6-clone.png")))

               (titled-image-panel "4. Challenge\nMake Arachnid-Boy disappear!"
                                   (scale .55 (local-bitmap "winter-p6-challenge-loop.png")))

               (titled-image-panel "5. Hide him!"
                                   (scale .53 (local-bitmap "winter-p6-challenge-hide.png")))
  
               end-of-class-instructions))

; ---- PROJECT 7
(define (wonder-girl)
  (auto-layout #:page-height 1200

               (titled-image-panel #:fill 'white
                                   "Project 7"
                                   (rectangle 1 1 'solid 'white))
               
               start-of-class-instructions

               (titled-image-panel "1. Wonder Girl"
                                   (scale .45 (local-bitmap "winter-p7-wonder-girl.png")))

               (titled-image-panel "2. Cheetah."
                                   (scale .4 (local-bitmap "winter-p7-cheetah.png")))

               (titled-image-panel "3. Goal!"
                                   (scale .4 (local-bitmap "winter-p7-w.png")))

               (titled-image-panel "4. Challenge\nAdd more obstacles!"
                                   (scale .4 (local-bitmap "winter-p7-obstacles.png")))

               end-of-class-instructions))

(define (project-qrs p beg-qr beg-pr adv-qr adv-beg end-qr end-pr)
  (auto-layout #:page-height 1000
               (qr-holder p beg-qr beg-pr adv-qr adv-beg end-qr end-pr)
               (qr-holder p beg-qr beg-pr adv-qr adv-beg end-qr end-pr)
               (qr-holder p beg-qr beg-pr adv-qr adv-beg end-qr end-pr)
               (qr-holder p beg-qr beg-pr adv-qr adv-beg end-qr end-pr)))

(define (all-qrs)
  (auto-layout #:page-height 1200

               (titled-image-panel #:fill 'white
                                   "All QRS"
                                   (rectangle 1 1 'solid 'white))
        
               (qr-holder 1
                          "qr-winter-p1-beginner.png" 280736399
                          "qr-winter-p1-advanced.png" 280740955
                          "qr-winter-p1-complete.png" 266345757)

               (qr-holder 2
                          "qr-winter-p2-beginner.png" 000000000
                          "qr-winter-p2-advanced.png" 280769058
                          "qr-winter-p2-complete.png" 266610880)

               (qr-holder 3
                          "qr-winter-p3-beginner.png" 281178993
                          "qr-winter-p3-advanced.png" 000000000
                          "qr-winter-p3-complete.png" 268486163)

               (qr-holder 4
                          "qr-winter-p4-beginner.png" 000000000
                          "qr-winter-p4-advanced.png" 000000000
                          "qr-winter-p4-complete.png" 266609923)

               (qr-holder 5
                          "qr-winter-p5-beginner.png" 000000000
                          "qr-winter-p5-advanced.png" 000000000
                          "qr-winter-p5-complete.png" 279876349)
               ))

(define (quest1)
  (list
   (walking-superhero)
   (project-qrs "Project 1"
                "qr-winter-p1-beginner.png" 280736399
                "qr-winter-p1-advanced.png" 280740955
                "qr-winter-p1-complete.png" 266345757)
   ))

(define (quest2)
  (list
   (flying-superhero)
   (project-qrs "Project 2"
                "qr-winter-p2-beginner.png" 281169499
                "qr-winter-p2-advanced.png" 280769058
                "qr-winter-p2-complete.png" 266610880)
   ))

(define (quest3)
  (list
   (changing-costumes)
   (project-qrs "Project 3"
                "qr-winter-p3-beginner.png" 281178993
                "qr-winter-p3-advanced.png" 268487129
                "qr-winter-p3-complete.png" 268486163)
   ))

(define (quest4)
  (list
   (fly-gallium-man)
   (project-qrs "Project 4"
                "qr-winter-p4-beginner.png" 281212571
                "qr-winter-p4-advanced.png" 268484911
                "qr-winter-p4-complete.png" 266609923)
   ))

(define (quest5)
  (list
   (arachnid-boy-climbing)
   (project-qrs "Project 5"
                "qr-winter-p5-beginner.png" 281468053
                "qr-winter-p5-advanced.png" 279888211
                "qr-winter-p5-complete.png" 279876349)
   ))

(define (quest6)
  (list
   (arachnid-boy-vs-poison)
   (project-qrs "Project 6"
                "qr-winter-p6-beginner.png" 281647450
                "qr-winter-p6-advanced.png" 281500162
                "qr-winter-p6-complete.png" 281490286)
   ))

(define (quest7)
  (list
   (wonder-girl)
   (project-qrs "Project 7"
                "qr-winter-p7-beginner.png" 283106146 ;change QR image
                "qr-winter-p7-advanced.png" 282345269 ;change QR image
                "qr-winter-p7-complete.png" 283311223) ;change QR image
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
  ;(quest6)
  (quest7)
  ;(all-qrs)

  )

(define (quests)
  (list quest1
        quest2
        edit-sprite
        quest3
        quest4
        quest5
        quest6
        quest7
        ))