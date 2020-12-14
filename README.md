# Racerbils Neuro Evolution


## Racerbils Evolutions Programmet

Mappen "RacerBilsEvolutionsProgram" indeholder et program til at generere "tilfældige" simple autonome racerbiler i en 2D verden. 
Med tilfældige menes at deres hjerner, et simpelt neuralt netværk, endnu ikke er indstillet/optimeret. 
De autonome bilers sensorsystem kan genkende to forskellige farver: "hvid" som er udenfor banen og "grøn" som er målstregen.
Bilerne hjerner styrer bilen ved at reagere på input fra de sensorer, der registerer farven "hvid", da alt udenfor banen er hvidt.  
Genkendelse af farven grøn kan bruges til at beregne hvor hurtigt bilen gennemfører en omgang.
Bilerne bevæger sig med en konstant hastighed på 5 pixels pr. frame,- og ændre retning ved at rotere om egen akse.
Nedenfor ses en sreenshot af programmet:
![Programmet køres](billeder/WorldOfRacerbiler.png)

### Racerbilen grafiske visning
Nedenfor ses en racerbil som den ser ud i programmet. Den højre sensor har detekteret den hvide farve og lyser rødt:
![Den Autonome Racerbil Grafiske repræsentation](billeder/CarAndSensors.png)

## Koden

### Klassediagram over den autonome racerbil
Nedenfor ses et klassediagram for vigtigste dele af "den autonome racerbil", i koden kaldet "CarController":</br></br>
![Den Autonome Racerbil klasse komposition, kaldet CarController](billeder/CarControllerDiagram.png)


### CarController:
Den autonome bil. Indeholder et SensorSystem, et NeuraltNetwork og en Car:</br>
CarControlleren fodrer NeuraltNetwork  med signaler fra SensorSystem’s left/right/front/sensor. </br>
Det neurale netværks output styrer bilen.</br>
### Car:
Bilen. Hastigheden er konstant 5 pixels/frame. Kan kun dreje/rotere enten til venstre eller højre. </br>
### SensorSystem:
Sensorer. Til at styre en bil og udregne fitness. Indeholder følge vigtige målinger:</br>
**whiteSensorFrameCount:**  Antal frames bilen er i det hvide område uden for banen</br>
**frontSensorSignal & leftSensorSignal & rightSensorSignal:** Detektion af hvidt, 50 pixels foran bilen.</br>
**clockWiseRotationFrameCounter:** Antal frames kørt  “i urets retning”.</br>
**lapTimeInFrames:** Antal frames bilen bruger inden den kører over den grønne streg.</br>
### NeuralNetwork: 
Hjernen. Et simpelt netværk 3 input-, 2 mellem-lags- og 1 output-neuroner. </br>
