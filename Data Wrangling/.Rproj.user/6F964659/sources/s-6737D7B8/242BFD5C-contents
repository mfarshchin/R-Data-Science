library(tidyverse)
library(dslabs)
data(gapminder)

# create and inspect a tidy data frame
tidy_data <- gapminder %>% 
  filter(country %in% c("South Korea", "Germany")) %>%
  select(country, year, fertility)
head(tidy_data)

# plotting tidy data is simple
tidy_data %>% 
  ggplot(aes(year, fertility, color = country)) +
  geom_point()

# import and inspect example of original Gapminder data in wide format
path <- system.file("extdata", package="dslabs")
filename <- file.path(path,  "fertility-two-countries-example.csv")
wide_data <- read_csv(filename)
select(wide_data, country, `1960`:`1967`)

new_tidy_data<-wide_data%>%
  gather(year,fertility,'1960':'2015')

# alternative is the following
new_tidy_data<-wide_data%>%
  gather(year,fertility,-country)

# check class of new data
class(new_tidy_data$year) # note tht this should be integer

# to take care of the data class we add convert=TRUE to the gather function
new_tidy_data<-wide_data%>%
  gather(year,fertility,-country,convert=TRUE)

class(new_tidy_data$year)


# ggplot works on new tidy data
new_tidy_data %>%
  ggplot(aes(year, fertility, color = country)) +
  geom_point()


# convert tidy data to wide format data
new_wide_data<-new_tidy_data%>%spread(year,fertility)
select(new_wide_data, country, `1960`:`1967`)
