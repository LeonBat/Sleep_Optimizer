# Libraries and Packages --------------------------------------------------

install.packages("Superpower")
library("Superpower")


# Power Oneway Ancova -----------------------------------------------------

power_oneway_ancova(
  mu = c(7, 7, 5, 5, 8, 8, 6, 6), #screentime, mask and nap as factors
  n_cov = 3, #duration, sleep latency, sleep efficiency
  sd = 2, # sd of sleep quality
  alpha_level = 0.05,
  r2 = 0.65, #covariates explain 65% of variance
  beta_level = 0.2, # probability of type II error
  round_up = TRUE, #rounding up sample size to whole number
  type = "exact" #uses the Shieh(2020) approach
)

# Power of 89%: pretty good statistically
# for each of 8 treatment: 4 replicates
# 32 trials 


# Table for showing expected sleep quality for treatment ------------------

# Create the data frame
df <- data.frame(
  Mask = c(0, 0, 0, 0, 1, 1, 1, 1),
  ScreenTime = c(0, 0, 1, 1, 0, 0, 1, 1),
  Nap = c(0, 1, 0, 1, 0, 1, 0, 1),
  SleepQuality = c(7, 7, 5, 5, 8, 8, 6, 6)
)

# View the data frame
View(df)




