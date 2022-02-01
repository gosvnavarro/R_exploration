# COMMAND 1
#   Change the enconding of a data frame.
iconv(teste_a, from = 'UTF-8', to = 'ASCII//TRANSLIT')

# COMMAND 2
#   Create a new dataframe based on a condition regarding one specific column.
teste_b <- subset(teste_a, teste_a$col_4 >= 100)

# COMMAND 3
#   Get the name of all columns of a data frame.
names(teste_c) # OR
colnames(teste_c)

# COMMAND 4
#   Split a column into multiple ones (Reshape data from long to wide format).
library(dplyr)
library(tidyr)
teste_d %>% 
    pivot_wider(names_from = col_2, values_from = col_3)
