library(readxl)
library(tidyverse)
mean(Scooby$imdb, na.rm = TRUE)

data()
view(mpg)

glimpse(mpg)

filter(mpg, cty >= 20)
mpg_efficient <- filter(mpg, cty >= 20)
view(mpg_efficient)

mpg_ford <- filter(mpg, manufacturer == "ford")

mpg_metric <- mutate(mpg, cty_metric = 0.425144 * cty)
glimpse(mpg_metric)
 
mpg_metric <-  mpg %>% 
  mutate(mpg_metric  = 0.425144 * cty)

mpg %>% 
  group_by(class) %>% 
  summarise(mean(cty),
            median(cty))
          

# Data viz with ggplot2

ggplot(mpg, aes(x  = cty)) +
  geom_histogram() +
  labs(x ="City Mileage")

ggplot(mpg, aes(x  = cty)) +
  geom_freqpoly() +
  labs(x ="City Mileage")

ggplot(mpg, aes(x  = cty,
                y = hwy)) +
  geom_point() +
  geom_smooth(method = "lm")

ggplot(mpg, aes(x  = cty,
                y = hwy,
                color = class)) +
  geom_point() +
  scale_color_brewer(palette = "Dark2")
