include gdrive-sheets
import data-source as DS

include shared-gdrive(
"dcic-2021",
"1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")


########################################## A #############################################

ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"
kWh-wealthy-consumer-data =
load-table: komponent, energi
source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
    sanitize energi using DS.string-sanitizer
end
kWh-wealthy-consumer-data

########################################## D #############################################

fun energy-per-day(distance-travelled-per-day, distance-per-unit-of-fuel): 
  ( distance-travelled-per-day / 
                            distance-per-unit-of-fuel ) * 
  #Bruker 10, da det er oppgitt i oppgaveeksempelet gitt i oppgaveteksten)
  10
end

########################################## B #############################################

fun energi-to-number(str :: String) -> Number:
# skriv koden her (tips: bruk cases og string-to-number funksjonen)
  cases(Option) string-to-number(str): 
    | some(a) => a
    | none => energy-per-day(50, 12)
  end
where:
energi-to-number("") is energy-per-day(50, 12)
  energi-to-number("48") is 48
end


########################################## C #############################################

ny-energi = transform-column(kWh-wealthy-consumer-data, "energi", energi-to-number) 
########################################## D #############################################

sum(ny-energi, "energi") 

ny-energi


energy-per-day(50, 12)



########################################## E #############################################


bar-chart(ny-energi, "komponent", "energi")