class NeuralNetwork {
  //All weights
  float[] weights = {
    //Naming convention w{layer number}_{from neuron number}_{to neuron number}
    1.0, 1.0, 1.0, // layer 1, 3 input neurons : w1_01=w[0], w1_02=w[1], w1_03=w[2]
    1.0, 1.0, 0.0, // layer 2, 2 hidden neurons: w2_11=w[3], w2_21=w[4], w2_31=w[5] 
    0.0, 1.0, 1.0, //                            w2_12=w[6], w2_22=w[7], w2_32=w[8]
    0.2, -0.2      // layer 3, 1 output neuron : w3_11=w[9], w3_21=w[10] 
  };
  //All biases
  float[] biases = {
    //Naming convention b{layer number}_{neuron number}
    0.0, 0.0, 0.0, // layer 1, 3 input neurons : b1_1=b[0], b1_2=b[1], b1_3=b[2]
    0.0, 0.0,      // layer 2, 2 hidden neurons: b2_1=b[3], b2_2=b[4]
    0.0            // layer 3, 1 output neuron : b3_1=b[5]
  };  

  NeuralNetwork(float varians){
    for(int i=0; i < weights.length -1; i++){
     weights[i] = random(-varians,varians);
    }
    for(int i=0; i < biases.length -1; i++){
     biases[i] = random(-varians,varians);
    }    
  }

  float getOutput(float x1, float x2, float x3) {
    //layer1
    float o11 = weights[0]*x1 + biases[0];
    float o12 = weights[1]*x2 + biases[1];
    float o13 = weights[2]*x3 + biases[2];
    //layer2
    float o21 = weights[3]*o11+ weights[4]*o12 + weights[5]*o13 + biases[3];
    float o22 = weights[6]*o11+ weights[7]*o12 + weights[8]*o13 + biases[4];
    //layer3
    return o21*weights[9] + o22*weights[10] + biases[5];
  }

  void printDNA() {
    print("weights: ");
    for(float w : weights)print(" " + w);
    println();
  }
}
