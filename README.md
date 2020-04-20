# TemperatureControl-ReinforcementLearning
Comparing the performance of a DDPG Reinforcement learning model to control temperature with that of a PID and a thermostat controller. 

Find video of the training process [here](https://youtu.be/jCeMeUJZ0eQ)

## Thermostat controller controlling the temperature. 
![Thermostat controller](https://github.com/akmenon1996/TemperatureControl-ReinforcementLearning/blob/master/Images/thermostat_control.png) 

## PID controller controlling the temperature. 
![PID controller](https://github.com/akmenon1996/TemperatureControl-ReinforcementLearning/blob/master/Images/PID_Control.png) 

## DDPG RL Agent controller controlling the temperature. 
![RL controller](https://github.com/akmenon1996/TemperatureControl-ReinforcementLearning/blob/master/Images/RL_Control.png) 



## Steps to recreate models:
1. Run [sldemo_househeat_data.m](https://github.com/akmenon1996/TemperatureControl-ReinforcementLearning/blob/master/sldemo_househeat_data.m), and make sure variables exist on the workspace. 
2. Run [house_thermostat.slx](https://github.com/akmenon1996/TemperatureControl-ReinforcementLearning/blob/master/house_thermostat.slx) to generate a the plots for the control using a regular thermostat. 
3. Run [house_PID.slx](https://github.com/akmenon1996/TemperatureControl-ReinforcementLearning/blob/master/house_PID.slx) to generate a the plots for the control using a Discrete PID controller.
4. Open the [ddpg_live(new).mlx](https://github.com/akmenon1996/TemperatureControl-ReinforcementLearning/blob/master/ddpg_live(new).mlx) live notebook. Start running each cell individually. (Make sure the variable - training is set to true in the notebook.)

### Warnings:
Make sure to have the following toolkits installed to be able to recreate these simulations successfully:
1. Reinforcement Learning Toolkit. 
2. Machine Learning Toolkit. 
3. PID Tuner

### Run files using MATLAB 2020. 

## Create your own reward function to tune model results. 
You will be able to tune the reward function for the simulation by updating the Reward block in the RL_Heat_DDPG_test.slx file. 



Use [this](https://www.mathworks.com/help/simulink/slref/thermal-model-of-a-house.html) link to set up base thermal model of the house from the MATLAB-SIMULINK website. 

