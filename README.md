# Quadrotor-trajectory-tracking

Project description
---
This repository is meant to share the results of the projects done and their implementation. 
I implement and tune a cascade PID controller in a simulator for quadcopter. The theory behind
the controller design using feed-forward strategy is explained  in details on my final year 
thesis paper. The following diagram could be found on that paper describing the cascaded control
loops of the trajectory-following controller:
![ewdf](https://user-images.githubusercontent.com/42180253/77605771-c606db80-6f26-11ea-96e1-923db8e58914.png)

Tracking trajectories
---
Now that we have all the working parts of a controller, we will put it all together and test 
it's performance once again on a trajectory. The drone needs to follow a zigzag shaped trajectory. 

![image](https://user-images.githubusercontent.com/42180253/77605887-1a11c000-6f27-11ea-8ca7-b4dd4940fba7.png)v

Figure Trajectory of VREP simulation

Implementation
---
Requirments:

1.Lua

2.MATLAB

3.V-REP PRO EDU

What this repository can provide:
1. A simplified UAV model simulation in V-Rep                                                                                                                                                                                                                                 
2. A general framework for P,PD and PID control for Quadrotor trajectory tracking.                   
3. V-Rep simulation with MATLAB connection.                                                                                                                                     
4. V-Rep simulation with Lua script.

Programming Project 1: P Control of Quadrotor in 3-D Plane
---
Objective:
---
The goal of this exercise is to implement a P controller to control the motion and track 
the trajectory of a quadrotor in 3-D plane, as well as tune its gains. The controller 
only contains a Proportional gain.

![image](https://user-images.githubusercontent.com/42180253/77606250-061a8e00-6f28-11ea-8888-94b374a318c0.png)

Figure. P Controller

Result Obtained for the Trajectory
---
https://www.youtube.com/watch?v=nmcre2kPhmQ&list=UUAUCyUoFX15SLFxeYrB5Hjg&index=1

![image](https://user-images.githubusercontent.com/42180253/77606309-2f3b1e80-6f28-11ea-8f56-832d79cee69c.png)

Figure. Trajectory of VREP simulation

![image](https://user-images.githubusercontent.com/42180253/77606358-5691eb80-6f28-11ea-9cc8-90f880ec9582.png)

Figure.  The Green line is reference X measured and the Red line is a X desire.

![image](https://user-images.githubusercontent.com/42180253/77606415-80e3a900-6f28-11ea-8a28-6f68b8385206.png)

Figure .  The Green line is reference Y measured and the Red line is a Y desire.

![image](https://user-images.githubusercontent.com/42180253/77606455-9e187780-6f28-11ea-9211-e1480275c1ef.png)

Figure .  The Green line is reference Z measured and the Red line is a Z desire.

Programming Project 2: PD Control of Quadrotor in 3-D Plane
---
Objective:
---
The goal of this exercise is to implement a PD controller to control the motion and track
the trajectory of a quadrotor in 3-D plane, as well as tune its gains. The controller 
only contains a Proportional and Derivate gain.

![image](https://user-images.githubusercontent.com/42180253/77606540-de77f580-6f28-11ea-8069-2069ed40a282.png)

Figure. PD Controller

Result Obtained for the Trajectory:
---
https://www.youtube.com/watch?v=YDwc4qkef_U&list=UUAUCyUoFX15SLFxeYrB5Hjg&index=3

![image](https://user-images.githubusercontent.com/42180253/77606597-fa7b9700-6f28-11ea-82d9-39ff803ee387.png)

Figure. Trajectory of VREP simulation

![image](https://user-images.githubusercontent.com/42180253/77606636-15e6a200-6f29-11ea-840d-e6404f132837.png)

Figure .  The Green line is reference X measured and the Red line is a X desire.

![image](https://user-images.githubusercontent.com/42180253/77606665-2dbe2600-6f29-11ea-8aa8-52debd481ce8.png)

Figure . The Green line is reference Y measured and the Red line is a Y desire.

![image](https://user-images.githubusercontent.com/42180253/77606686-46c6d700-6f29-11ea-9c41-31455911476b.png)

Figure . The Green line is reference Z measured and the Red line is a Z desire

Programming Project 3: PID Control of Quadrotor in 3-D Plane
---
Objective:
---
The goal of this exercise is to implement a PID controller to control the motion and track
the trajectory of a quadrotor in 3-D plane, as well as tune its gains. The controller 
only contains a Proportional, Integration and Derivate gain.

![image](https://user-images.githubusercontent.com/42180253/77606743-737aee80-6f29-11ea-9e5b-55f21f5a94c1.png)

Figure.PID Controller

Result Obtained for the Trajectory:
---
https://www.youtube.com/watch?v=mqs-5yw6geE&list=UUAUCyUoFX15SLFxeYrB5Hjg&index=4

![image](https://user-images.githubusercontent.com/42180253/77606859-bdfc6b00-6f29-11ea-8d0f-6ab58d896dd5.png)

Figure. Trajectory of VREP simulation

![image](https://user-images.githubusercontent.com/42180253/77606907-d53b5880-6f29-11ea-8ed8-d33f16f6ef9d.png)

Figure .  The Blue line is reference X measured and the Red line is a X desire.

![image](https://user-images.githubusercontent.com/42180253/77606965-02880680-6f2a-11ea-8421-454eeba040ff.png)

Figure . The Green line is reference Y measured and the Red line is a Y desire.

![image](https://user-images.githubusercontent.com/42180253/77606994-17fd3080-6f2a-11ea-8279-028e8f75c22f.png)

Figure . The Green line is reference Z measured and the Red line is a Z desire.

