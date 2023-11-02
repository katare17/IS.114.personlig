#Oblig 2

include color


#COLOURS
Nor-White = color(255,255,255,1)

Fae-Red = color(239,48,62,1)
Fae-Blue = color(0, 94, 185, 1)

Ice-Red = color(220, 30, 53, 1)
Ice-Blue = color(2, 82, 156, 1)

Den-Red = color(200, 16, 46, 1)

Fin-Blue = color(0, 47, 108, 1)

Nor-Red = color(186, 12, 47, 1)
Nor-Blue = color(0, 32, 91, 1)

Swe-Blue = color(0, 106, 167, 1)
Swe-Yellow = color(254, 204, 2, 1)

#PRIMARY DIMENSIONS
#Multiplying in order to get the same width on all flags

Fae-Height = (160 * 1.68)
Fae-Width = (220 * 1.68)

Ice-Height = (180 * 1.48)
Ice-Width = (250 * 1.48)

Den-Height = 260
Den-Width = 370

Fin-Height = (110 * 2.0555)
Fin-Width = (180 * 2.0555)

Nor-Height = (160 * 1.68)
Nor-Width = (220 * 1.68)

Swe-Height = (200 * 1.156)
Swe-Width = (320 * 1.156)

#SECONDARY DIMENSION (The outer cross)

Fae-Across-Blue = Fae-Height / 4
Fae-Up-Blue = Fae-Width / 5.5

Ice-Across-White = Ice-Height / 4.5
Ice-Up-White = Ice-Width / 6.25

Den-Across-White = Den-Height / 6.5
Den-Up-White = Den-Width / 9.25

Fin-Across-Blue = Fin-Height / 3.65
Fin-Up-Blue = Fin-Width / 6

Nor-Across-White = Nor-Height / 4
Nor-Up-White = Nor-Width / 5.5

Swe-Across-Yellow = Swe-Height / 5
Swe-Up-Yellow = Swe-Width / 8


#THIRD-LEVEL DIMENSIONS (The inner cross)

Fae-Across-Red = Fae-Height / 8
Fae-Up-Red = Fae-Width / 11

Ice-Across-Red = Ice-Height / 9
Ice-Up-Red = Ice-Width / 12.5

Nor-Across-Blue = Nor-Height / 8
Nor-Up-Blue = Nor-Width / 11

#CROSS PLACEMENTS 
mid-place = (Fae-Height / 2)
mid-place-width = (Fae-Width / 2)
Den-place = (((Den-Width - 40) / 3) + 20)
Swe-place = (((Swe-Width) / 2.8) + 10)


#FAERO ISLANDS
fun Faero(width):
  put-image(rectangle(Fae-Up-Red, Fae-Height, "Solid", Fae-Red), (((width - 40) / 3) + 20), mid-place,
    put-image(rectangle(Fae-Width, Fae-Up-Red, "Solid", Fae-Red), (width / 2), (Fae-Height / 2),
    put-image(rectangle(Fae-Up-Blue, Fae-Height, "Solid", Fae-Blue), (((width - 40) / 3) + 20), mid-place,
        put-image(rectangle(Fae-Width, Fae-Across-Blue, "Solid", Fae-Blue), mid-place-width, mid-place,
          put-image(rectangle(Fae-Width, Fae-Height, "Solid", Nor-White), mid-place-width, mid-place,
            empty-scene(width,Fae-Height))))))
end 


#ICELAND
fun Iceland(width):
  put-image(rectangle(Ice-Up-Red, Ice-Height, "solid", Ice-Red), (((width - 40) / 3) + 20), (Ice-Height / 2),
    put-image(rectangle(Ice-Width, Ice-Across-Red, "solid", Ice-Red), (width / 2), (Ice-Height / 2),
      put-image(rectangle(Ice-Up-White, Ice-Height, "solid", Nor-White), (((width - 40) / 3) + 20), (Ice-Height / 2),
        put-image(rectangle(Ice-Width, Ice-Across-White, "solid", Nor-White), (width / 2), (Ice-Height / 2),
          put-image(rectangle(Ice-Width, Ice-Height, "solid", Ice-Blue), (width / 2), (Ice-Height / 2),
            empty-scene(width, Ice-Height))))))
end

#NORWAY
fun Norway(width):
  put-image(rectangle(Fae-Up-Red, Fae-Height, "Solid", Nor-Blue), (((width - 40) / 3) + 20), mid-place,
  put-image(rectangle(Fae-Width, Fae-Up-Red, "Solid", Nor-Blue), mid-place-width, (Fae-Height / 2),
    put-image(rectangle(Fae-Up-Blue, Fae-Height, "Solid", Nor-White), (((width - 40) / 3) + 20), mid-place,
      put-image(rectangle(Fae-Width, Fae-Across-Blue, "Solid", Nor-White), mid-place-width, mid-place,
        put-image(rectangle(Fae-Width, Fae-Height, "Solid", Nor-Red), mid-place-width, mid-place,
          empty-scene(Fae-Width,Fae-Height))))))
end 

#DENMARK
fun Denmark(width):
  put-image(rectangle(width, Den-Up-White, "solid", Nor-White), (Den-Width / 2), (Den-Height / 2),
    put-image(rectangle(Den-Across-White, Den-Height, "solid", Nor-White), Den-place, (Den-Height / 2), 
      put-image(rectangle(width, Den-Height, "solid", Den-Red), (Den-Width / 2), (Den-Height / 2), 
        empty-scene(width, Den-Height))))
end 


#FINLAND
fun Finland(width):
  put-image(rectangle(width, Fin-Up-Blue, "solid", Fin-Blue), (width / 2), (Fin-Height / 2),
    put-image(rectangle(Fin-Across-Blue, Fin-Height, "solid", Fin-Blue), (((width - 40) / 3) + 20), (Fin-Height / 2),
    put-image(rectangle(width, Fin-Height, "solid", Nor-White), (width / 2), (Fin-Height / 2),
        empty-scene(width, Fin-Height))))
end


#SWEDEN
  fun Sweden(width):
  put-image(rectangle(Swe-Up-Yellow, Swe-Height, "solid", Swe-Yellow), Swe-place, (Swe-Height / 2), 
    put-image(rectangle(Swe-Width, Swe-Across-Yellow, "solid", Swe-Yellow), (Swe-Width / 2), (Swe-Height / 2),
      put-image(rectangle(Swe-Width, Swe-Height, "solid", Swe-Blue), (Swe-Width / 2), (Swe-Height / 2), 
        empty-scene(Swe-Width, Swe-Height))))
end 


#Table for neatness and overview
Land = table: CodeName :: Number, Land :: String
  row: 1, "Faero Islands"
  row: 2, "Iceland"
  row: 3, "Denmark"
  row: 4, "Finland"
  row: 5, "Norway"
  row: 6, "Sweden"
  end 
Land
  

#ACTUAL FUNCTION
fun draw-flag(country):
  if country == 1:
    Faero(Fae-Width)
    
  else if country == 2:
    Iceland(Ice-Width)
    
  else if country == 3:
    Denmark(Den-Width)
    
  else if country == 4:
    Finland(Fin-Width)    
    
  else if country == 5:
    Norway(Nor-Width)
    
  else if country == 6:
    Sweden(Swe-Width)
        else: 
    "You need to enter a valid country number"
end 
end