# Racerbils Neuro Evolution

### Klassediagram over den autonome racerbil
Nedenfor ses et klassediagram for vigtigste dele af "den autonome racerbil", i koden kaldet "CarController":</br></br>
![Den Autonome Racerbil klasse komposition, kaldet CarController](CarControllerDiagram.png)

### Racerbilen grafiske visning
Nedenfor ses en racerbil som den ser ud i programmet. Den højre sensor har detekteret den hvide farve og lyser rødt:
![Den Autonome Racerbil Grafiske repræsentation](CarAndSensors.png)

## Oversigt over vigitigste klasser i programmet

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
