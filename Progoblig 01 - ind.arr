use context essentials2021
#Legger til RGB-farger
include color

#Definerer de forskjellige elementene i flagget
var redSquare = (rectangle(60, 60, "solid", color(206,0,0,1)))
var redRectangle = (rectangle(120, 60, "solid", color(206,0,0,1)))
var blueVertical = (rectangle(20, 160, "solid", color(0,31,100,1)))
var blueHorizon = (rectangle(220, 20, "solid", color(0,31,100,1)))

#Put-image legger inn figurene som er definert i forrige "avsnitt"
put-image(blueHorizon, 110,80,
put-image(blueVertical, 80,80,
put-image(redRectangle, 159,31,
  put-image(redRectangle, 159,129, 
    put-image(redSquare, 31,129,  
      put-image(redSquare, 31,31, empty-scene(220, 160
              )))))))