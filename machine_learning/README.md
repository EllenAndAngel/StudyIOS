Step1 : download model from https://developer.apple.com/machine-learning/
Step2 : drag model file into project in XCode
      - check Target Memebership on the right side of xcode
Step3 : data preprocessing -- helper 
      - resize image to model asked, like Inceptionv3 299, 299
      - transfer image to CVPixelBuffer
Step4 : predict
      - self.model.prediction()
