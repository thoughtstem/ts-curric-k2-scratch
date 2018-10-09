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




(define end-of-class-instructions
  (titled-image-panel #:fill 'lightgray
                       "Instructor: Last 5-10 minutes"
                       (bullets
                         "Scratch: File > Download"
                         "Change file name to student's first name"
                         "Save in SAVE_MY_WORK"
                         "Close Scratch & Leave open"
                         "Wait for backup to finish")))

(define end-of-class-instructions-short
  (titled-image-panel #:fill 'lightgray
                       "Instructor: File > Download.  Save as student's name in SAVE_MY_WORK."
                       (rectangle 900 1 'solid 'white)))


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

   end-of-class-instructions))

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

   end-of-class-instructions-short))


(define (saying-hello)
  (auto-layout
   (titled-image-panel #:fill 'lightgray
                       "INSTRUCTOR: Scan students in, open Scratch and File > Upload."
                       (rectangle 900 1 'solid 'white))
   
   (titled-image-panel "1. Click the First Character"
                       (local-bitmap "click-first-character.png"))

   (titled-image-panel "2. Get First Block"
                       (local-bitmap "drag-first-block.png"))

   (titled-image-panel "3. From [Looks] get \"say Hello!\" block"
                       (local-bitmap "drag-say-hello-block.png"))

   (titled-image-panel "4. Change Message"
                       (local-bitmap "change-say-hello-block.png"))

   (titled-image-panel "5. Click on the Next Character"
                       (local-bitmap "click-second-character.png"))

   (titled-image-panel "6. Code Second Character"
                       (local-bitmap "code-second-character.png"))

   (titled-image-panel "7. PLAY!"
                       (local-bitmap "click-run.png"))

   end-of-class-instructions))

(define (new-style)
  (auto-layout
   (titled-image-panel #:fill 'lightgray
                       "INSTRUCTOR: Scan students in, open Scratch and File > Upload."
                       (rectangle 900 1 'solid 'white))
   
   (titled-image-panel "1. Copy the Costume"
                       (local-bitmap "copy-costume.png"))

   (titled-image-panel "2. Change to \"costume2\""
                       (local-bitmap "change-to-second-costume.png"))

   (titled-image-panel "3. Add Costume for Next Character"
                       (local-bitmap "add-costume-for-next-character.png"))

   (titled-image-panel "4. Change the Messages"
                       (local-bitmap "change-the-messages.png"))

   (titled-image-panel "5. PLAY!"
                       (local-bitmap "click-run.png"))

   end-of-class-instructions))



(define (meet-their-pets)
  (auto-layout
   (titled-image-panel #:fill 'lightgray
                       "INSTRUCTOR: Scan students in, open Scratch and File > Upload."
                       (rectangle 900 1 'solid 'white)
                       )
   
   (titled-image-panel "1. Create a new Sprite"
                       (local-bitmap "create-new-sprite.png"))

   (titled-image-panel "2. Draw the Pet!"
                       (local-bitmap "draw-a-pet.png"))

   (titled-image-panel "3. Name Them"
                       (local-bitmap "rename-sprite.png"))
   
   (titled-image-panel "4. Create the Next Pet"
                       (local-bitmap "create-another-pet.png"))
   
   (titled-image-panel "5. Make sure all characters get a pet"
                       (local-bitmap "characters-with-pets.png"))
   
   (titled-image-panel "6. Add Thoughts to the Pets"
                       (local-bitmap "add-thoughts-to-pets.png"))
   
   (titled-image-panel "7. Click the Flag!"
                       (local-bitmap "click-run.png"))
   

   end-of-class-instructions-short))

(define (favorite-foods)
  (auto-layout
   (titled-image-panel #:fill 'lightgray
                       "INSTRUCTOR: Scan students in, open Scratch and File > Upload."
                       (rectangle 900 1 'solid 'white)
                       )
   
   (titled-image-panel "1. Create a New Sprite for BOTH Characters' Favorite Foods"
                       (local-bitmap "favorite-food-sprites.png"))

   (titled-image-panel "2. Code the Food Sprite"
                       (local-bitmap "forever-turn-15-degrees.png"))

   (titled-image-panel "3. Hide the Pets"
                       (local-bitmap "think-then-hide.png"))
   
   (titled-image-panel "4. Change what your Characters Say"
                       (local-bitmap "change-what-the-characters-say.png"))
   
   (titled-image-panel "5. Click the Flag!"
                       (beside
                        (local-bitmap "click-run-small.png")
                        (above
                         (text "You should see 4 sprites" 20 'red)
                         (text "(Two characters, two favorite foods)" 20 'black))))
   
   end-of-class-instructions-short))


(define (favorite-toys)
  (auto-layout
   (titled-image-panel #:fill 'lightgray
                       "INSTRUCTOR: Scan students in, open Scratch and File > Upload."
                       (rectangle 900 1 'solid 'white)
                       )
   
   (titled-image-panel "1. Create a New Sprite for BOTH Characters' Favorite Toys"
                       (local-bitmap "favorite-toy-sprites.png"))

   (titled-image-panel "2. Code the Food Sprite"
                       (local-bitmap "forever-change-color-effect-wait.png"))

   (titled-image-panel "3. Hide the Food"
                       (local-bitmap "hide-sprite.png"))
   
   (titled-image-panel "4. Change the Text of your Characters and Click the Flag"
                       (local-bitmap "change-text-for-toys-click-play.png"))
   
   (titled-image-panel "5. You should now have 8 drawings + 1 Background!"
                       (local-bitmap "all-8-sprites-1-bg.png"))
   
   end-of-class-instructions-short))


(define (our-house)
  (auto-layout #:page-height 1050
   (titled-image-panel #:fill 'lightgray
                       "INSTRUCTOR: Scan students in, open Scratch and File > Upload."
                       (rectangle 900 1 'solid 'white))
   
   (titled-image-panel "1. Hide the Toys!"
                       (local-bitmap "hide-the-toys.png"))

   (titled-image-panel "2. Create a New Backdrop and Draw House"
                       (local-bitmap "new-backdrop.png"))

   (titled-image-panel "3. Switching Backdrops Code"
                       (local-bitmap "forever-next-backdrop-wait.png"))
   
   (titled-image-panel "4. Click the Flag"
                       (above
                        (local-bitmap "click-run-small.png")
                        (text "Now the background should change" 20 'black)
                        (text "every five seconds" 20 'red)))
   
   (titled-image-panel "5. Create New Backdrop and Draw 2nd House"
                       (local-bitmap "new-backdrop-2.png"))

   (titled-image-panel "6. Change Text and Click the Flag"
                       (local-bitmap "change-text-and-run.png"))
   
   end-of-class-instructions-short))

(our-house)



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
   (saying-hello)
   ))

(define (quest4)
  (list
   (double-worksheet "First Character's Hats/Glasses/Shoes"  "What is it?"
                     "Second Character's Hats/Glasses/Shoes" "What is it?")
   (double-worksheet "First Character's Hats/Glasses/Shoes"  "What is it?"
                     "Second Character's Hats/Glasses/Shoes" "What is it?")
   (new-style)))


(define (quest5)
  (list
   (double-worksheet "First Character's Pets"  "Pet's name?"
                     "Second Character's Pets" "Pet's name?")
   (double-worksheet "First Character's Pets"  "Pet's name?"
                     "Second Character's Pets" "Pet's name?")
   (meet-their-pets)))

(define (quest6)
  (list
   (double-worksheet "First Character's Food"  "What is it?"
                     "Second Character's Food" "What is it?")
   (double-worksheet "First Character's Food"  "What is it?"
                     "Second Character's Food" "What is it?")
   (favorite-foods)))

(define (quest7)
  (list
   (double-worksheet "First Character's Toys"  "What is it?"
                     "Second Character's Toys" "What is it?")
   (double-worksheet "First Character's Toys"  "What is it?"
                     "Second Character's Toys" "What is it?")
   (favorite-toys)))

(define (quest8)
  (list
   (double-worksheet "First Character's Home"  "Where is it?"
                     "Second Character's Home" "Where is it?")
   (double-worksheet "First Character's Home"  "Where is it?"
                     "Second Character's Home" "Where is it?")
   (our-house)))

(define (quests)
  (list (quest1)
        (quest2)
        (quest3)
        (quest4)
        (quest5)
        (quest6)
        (quest7)
        ))
