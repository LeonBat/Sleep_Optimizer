# Sleep_Optimizer

Lately I have been feeling tired throughout the day and I was wondering how I could improve my sleep. So I came up with the idea to track it under different conditions and record my sleep quality.

In the end I will perform statistical analysis and visualize my results in a dynamic dashboard.
<br>

## The Dataset

For accumulating data I will daily update this repo and gather my sleeping data over a extensive period of time, always changing some parameters.

| Variable | Meaning | Type |
| -------- | ------- | ---- |
| Duration | The amount of time I sleep during the night (8 hours) | Decimal number |
| Sleep Mask | Wearing a sleep mask or not | Boolean |
| Screen Time | Did I use my phone before going to sleep (1hr before) | Boolean
| Sleep Latency | How many minutes to fall asleep | Decimal number |
| Sleep Efficiency| How many minutes in bed vs. how many minutes asleep | Decimal Number |
| Nap | Determines if a nap (20 minutes) was taken during the day | Boolean
| **Sleep quality** | Subjective score from 1(bad) - 10(good) | ordinal integer |
<br>

## Important Notes
The sleep quality is subjective that means I am going to evaluate how well rested I feel when I wake up and how active and energetic I feel throughout the day. It is the dependent variable in the dataset and the variable I am interested in.


I will use an app called Sleep Cycle (https://sleepcycle.com/) to record my sleep latency and sleep efficiency. 


During the whole experiment I will try to sleep 8 hours. This time has been proven to be one of the most healthy for the average adult ([Example 1](https://www.sciencedirect.com/science/article/abs/pii/S2352721815001606), [Example 2](https://www.sleepfoundation.org/how-sleep-works/how-much-sleep-do-we-really-need), [Example 3](https://www.healthline.com/health/sleep/sleep-calculator))


I conducted a Power Analysis in R to determine the number of replicates of each treatment, the length of the experiment and the statistical power.

<div style = "border: 2px solid white;
background-color = #6082B6;
box-shadow: 5px 5px black;
padding: 2%"> 

- **Statistical Power: 89%**
- **Number of replicates: 4**
- **Number of treatments: 8**
- **Number of trials: 32**

</div>
<br>

### Treatment overview
- 0 stands for No
- 1 stands for yes


| Mask | ScreenTime | Nap |
| ---- | ---------- | --- |
| 0    | 0          | 0   |
| 0    | 0          | 1   |
| 0    | 1          | 0   |
| 0    | 1          | 1   |
| 1    | 0          | 0   |
| 1    | 0          | 1   |
| 1    | 1          | 0   |
| 1    | 1          | 1   |




