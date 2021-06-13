# Per Capita Violent Crimes Prediction
Per capita violent crimes prediction on the  <a href="http://archive.ics.uci.edu/ml/datasets/communities+and+crime">Communities and Crime Dataset</a> from UCI Machine Learning.
* Genetic Algorithm is used for feature selection. 
* Data is then descritized using pandas cut function into bins.
* Decision trees are used for the rules generation.
* Rules generated are used in the Fuzzy Inference System developed in matlab.
* Accuracy is tested.
## Team Members : 
* [Abhilash Gahankari](https://github.com/abhilashgahankari) [2020H1030113H]
* [Aashita Dutta](https://github.com/aashitadutta) [2020H1030130H]
* [Satish Phale](https://github.com/satishphale) [2020H1030155H]
* [Harsha Varun](https://github.com/varunmarisetty) [2020PHXP0437H]
# Rules Generation
Generating Rules from Discretized+Encoded data optimized using Genetic Feature Selections. sklearn.tree.DecisionTreeClassifier¶ is used to generate rules in text format with distinct classes based on probability, number of samples and gini index to measure how impure the partitions are.
![image](https://user-images.githubusercontent.com/6908904/121800938-3d22af80-cc52-11eb-8cdb-3d510073a90e.png)

# Fuzzy Inference System
