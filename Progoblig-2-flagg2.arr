include color

# Colours
nor-red = color(186, 12, 47, 1)
nor-blue = color(0, 32, 91, 1)
swe-blue = color(0, 106, 167, 1)
swe-yellow = color(254, 204, 2, 1)
den-red = color(200, 16, 46, 1)
ice-blue = color(2, 82, 156, 1)
ice-red = color(220, 30, 53, 1)
fae-blue = color(0, 94, 185, 1)
fae-red = color(239,48,62,1)
fin-blue = color(0, 47, 108, 1)

# Definerer flaggene

#Tabell
my-table = table: Country :: String, Width :: Number, Height :: Number, Background-color :: String, First-Cross-Color :: String, Second-Cross-Color :: String
  row: "Norway", 220, 160, "nor-red", "white", "nor-blue"
  row: "Sweden", 320, 200, "swe-blue", "swe-yellow", "swe-yellow"
  row: "Denmark", 370, 260, "den-red", "white", "white"
  row: "Iceland", 250, 180, "ice-blue", "white", "ice-red"
  row: "Faero Islands", 220, 160, "white", "fae-blue", "fae-red"
  row: "Finland", 360, 220, "white", "fin-blue", "fin-blue"
end 

  
  my-table


#funksjon for å tegne


fun draw-flag(width, height, background, crosscolor, cross2color):
  if width < 300:
    put-image(rotate(90, rectangle(height, 20, "solid", cross2color)), (((width - 40) / 3) + 20), (height / 2), 
      put-image(rectangle(width, 20, "solid", cross2color), (width / 2), (height / 2), 
        put-image(rotate(90, rectangle(height, 40, "solid", crosscolor)), (((width - 40) / 3) + 20), (height / 2),
          put-image(rectangle(width, 40, "solid", crosscolor), (width / 2), (height / 2),
            put-image(rectangle(width, height, "solid", background), (width / 2), (height / 2),
              empty-scene(width, height))))))
    
  else if width < 330:
    put-image(rotate(90, rectangle(height, 20, "solid", cross2color)), ((320 / 2.8) + 5), (height / 2), 
      put-image(rectangle(width, 20, "solid", cross2color), (width / 2), (height / 2), 
        put-image(rotate(90, rectangle(height, 40, "solid", crosscolor)), ((320 / 2.8) + 5), (height / 2),
          put-image(rectangle(width, 40, "solid", crosscolor), (width / 2), (height / 2),
            put-image(rectangle(width, height, "solid", background), (width / 2), (height / 2),
              empty-scene(width, height))))))
  else if width < 365:
    put-image(rotate(90, rectangle(height, 60, "solid", cross2color)), ((360 / 2.8) + 10), (height / 2), 
      put-image(rectangle(width, 60, "solid", cross2color), (width / 2), (height / 2), 
        put-image(rotate(90, rectangle(height, 60, "solid", crosscolor)), ((360 / 2.8) + 10), (height / 2),
          put-image(rectangle(width, 60, "solid", crosscolor), (width / 2), (height / 2),
            put-image(rectangle(width, height, "solid", background), (width / 2), (height / 2),
              empty-scene(width, height))))))
  else if width == 370:
    put-image(rotate(90, rectangle(height, 20, "solid", cross2color)), (((370 - 40) / 3) + 20), (height / 2), 
      put-image(rectangle(width, 20, "solid", cross2color), (width / 2), (height / 2), 
        put-image(rotate(90, rectangle(height, 40, "solid", crosscolor)), (((370 - 40) / 3) + 20), (height / 2),
          put-image(rectangle(width, 40, "solid", crosscolor), (width / 2), (height / 2),
            put-image(rectangle(width, height, "solid", background), (width / 2), (height / 2),
              empty-scene(width, height))))))
  else: "heu"
  end 
end

Instructions = table: How-to :: String
  row: "Do you want to see a nordic flag?"
  row: "Just write draw-flag()"
  row: "and fill inn the information from the table above."
  row: "For example, here's how you see Norway:"
  row: "Write: draw-flag(220, 160, nor-red, white, nor-blue)"
end 
Instructions