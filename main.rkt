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


(define (double-worksheet title1 sub-title1
                          title2 sub-title2)
  (auto-layout #:page-height 510
   
   (titled-image-panel title1
                       (above/align "left"
                                    (square 10 'solid 'transparent)
                                    (text (~a " " sub-title1) 15 'black)
                                    (square 10 'solid 'transparent)
                                    (rectangle 500 400 'outline 'black)
                                    (square 10 'solid 'transparent)
                                    (text " Message:" 15 'black)
                                    (square 10 'solid 'transparent))
                       500)

   (titled-image-panel title2
                       (above/align "left"
                                    (square 10 'solid 'transparent)
                                    (text (~a " " sub-title2) 15 'black)
                                    (square 10 'solid 'transparent)
                                    (rectangle 500 400 'outline 'black)
                                    (square 10 'solid 'transparent)
                                    (text " Message:" 15 'black)
                                    (square 10 'solid 'transparent))
                       500)))

(define (worksheet title sub-title)
  (auto-layout #:page-height 500
   
   (titled-image-panel title
                       (above/align "left"
                                    (square 10 'solid 'transparent)
                                    (text (~a " " sub-title) 15 'black)
                                    (square 10 'solid 'transparent)
                                    (rectangle 1000 427 'outline 'black)))))



(define (draw-characters)
  (auto-layout
   (titled-image-panel #:fill 'lightgray
                       "Instructor: Before class"
                       (bullets
                         "Open Chrome"
                         "Click Scratch bookmark"
                         "Click \"Create\""
                         "Close tutorial panel on right"
                         "Delete Sprite1 (cat)")
                       300)
   
   (titled-image-panel "1. Name your Comic Book"
                       (local-bitmap "rename-scratch-project.png"))

   (titled-image-panel "2. Find the Painting tools"
                       (local-bitmap "click-paintbrush.png"))

   (titled-image-panel "3. Create your Character"
                       (local-bitmap "paint-a-character.png"))

   (titled-image-panel "4. Create your 2nd Character"
                       (local-bitmap "paint-another-character.png"))

   (titled-image-panel #:fill 'lightgray
                       "Instructor: Last 5-10 minutes"
                       (bullets
                         "Scratch: File > Download"
                         "Change file name to student's first name"
                         "Save in SAVE_MY_WORK"
                         "Close Scratch & Leave open"
                         "Wait for backup to finish"))))

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



(define (draw-background)
  (auto-layout
   (titled-image-panel #:fill 'lightgray
                       "Instructor: Before class"
                       (bullets
                         "Scan students in"
                         "Open Chrome"
                         "Open Scratch"
                         "File > Upload from my computer"
                         "Select file from SAVE_MY_WORK")
                       400)
   
   (titled-image-panel "1. Finish characters"
                       (scale 0.75
                              (local-bitmap "paint-a-character.png")))

   (titled-image-panel "2. Name BOTH of your Characters!  BOTH!"
                       (local-bitmap "name-your-sprite.png"))


   (titled-image-panel "3. Open the Backdrop painter"
                       (scale 0.5 (local-bitmap "click-backdrops.png"))
                       0)


   (titled-image-panel "4. Paint your Background"
                       (scale 1 (local-bitmap "draw-fill-tools.png")))

   (titled-image-panel #:fill 'lightgray
                       "Instructor: File > Download.  Save as student's name in SAVE_MY_WORK."
                       (rectangle 900 1 'solid 'white))))


(define (quest1)
  (list
   (double-worksheet "First Character" "Who is this?"
                     "Second Character" "Who is this?")
   (double-worksheet "First Character" "Who is this?"
                     "Second Character" "Who is this?")
   (draw-characters)
   (resize-sprite-hint)
   (resize-sprite-hint)))

(define (quest2)
  (list
   (worksheet "First Background" "Where is this?")
   (draw-background)))


(define (quest3)
  (list
   ))

(define (quest4)
  (list
   (double-worksheet "First Character's Hats/Glasses/Shoes"  "What is it?"
                     "Second Character's Hats/Glasses/Shoes" "What is it?")
   (double-worksheet "First Character's Hats/Glasses/Shoes"  "What is it?"
                     "Second Character's Hats/Glasses/Shoes" "What is it?")))


(define (quest5)
  (list
   (double-worksheet "First Character's Pets"  "Pet's name?"
                     "Second Character's Pets" "Pet's name?")
   (double-worksheet "First Character's Pets"  "Pet's name?"
                     "Second Character's Pets" "Pet's name?")))

(define (quest6)
  (list
   (double-worksheet "First Character's Food"  "What is it?"
                     "Second Character's Food" "What is it?")
   (double-worksheet "First Character's Food"  "What is it?"
                     "Second Character's Food" "What is it?")))

(define (quest7)
  (list
   (double-worksheet "First Character's Toys"  "What is it?"
                     "Second Character's Toys" "What is it?")
   (double-worksheet "First Character's Toys"  "What is it?"
                     "Second Character's Toys" "What is it?")))

(define (quest8)
  (list
   (double-worksheet "First Character's Home"  "Where is it?"
                     "Second Character's Home" "Where is it?")
   (double-worksheet "First Character's Home"  "Where is it?"
                     "Second Character's Home" "Where is it?")))

(define (quests)
  (list (quest1)
        (quest2)
        (quest3)
        (quest4)
        (quest5)
        (quest6)
        (quest7)
        ))
