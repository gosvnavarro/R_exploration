# COMMAND 1
#   Since we have a lot of values in some ("handmade") data frames one important point is to filter it to see the ones with high values.
teste_maiores_valores <- head(cities[order(cities$Freq, decreasing = TRUE), ], 1000)

# COMMAND 2
#   This helps us check the presence of certain values (given the condition) in any row of every column of the data frame.
library(dplyr)
teste_a <- shipments %>% filter_all(any_vars(. %in% c(0, 'null')))

# COMMAND 3
#   Check the similarity between ids among the data frames.
teste_b <- merge(zeros_in_table1, zeros_in_table2, by.x="order_id", by.y="order_id") # for two dataframes
teste_c <- Reduce(function(...) merge(..., all = TRUE), list(zeros_in_table1, zeros_in_table2, zeros_in_table3)) # for more than two dataframes

# COMMAND 4
#   Identify the index of a row that contains a specific value.
teste_d <- which(table4$column_X == "specific_value_of_interest") # save the index to a variable
which(table4$column_X == "specific_value_of_interest") # just check the index

# COMMAND 5
#   Exclude rows based on the index of it.
teste_e <- teste_e[-row_index, ] # for one row
teste_f <- teste_f[-c(weird_date1, weird_date2, ...), ] # for more than one row

# COMMAND 6
#   Exclude columns.
teste_g$column_to_be_deleted <- NULL # for one column
teste_h$first_col <- teste_h$next_col <- teste_h$another_col <- NULL # an ugly way to delete multiple columns at the same time

# COMMAND 7
#   Copy specific and the whole data frame.
teste_i <- teste_h # copy the whole dataframe to a new one
teste_j <- teste_i[, c(1, 5:17)] # copy specific columns
teste_k <- teste_j[c(1:326), ] # copy specific rows

# COMMAND 8
#   Exclude rows based on a condition.
teste_l <- teste_l[!(teste_l$col_1 > 1000), ] # the condition shown here is based on values greater than 1000.

# COMMAND 9
#   Create a new column from a condition.
teste_mP$new_colunm <- ifelse(teste_m$col_1 == teste_m$col_4, "Same", "Different")

# COMMAND 10
#   Check unique values and the total of it.
table(teste_n$col_of_interest) # get the possible values and the count of each.

# OR

unique(teste_n$col_of_interest) # get just the possible values.

# COMMAND 11
#   Check the presence of NA in a specific column.
sum(is.na(teste_o$col_3))

# COMMAND 12
#   Exclude rows that have NA values in it.
library(tidyr)
teste_p <- teste_o %>% drop_na(col_2) # OR

teste_q[!is.na(teste_p$col_5), ] # OR

teste_r[complete.cases(teste_q$col_1), ]

# COMMAND 13
#   Get columns name.
names(teste_s)

# COMMAND 14
#   Split a data frame in R with conditional row values.
teste_t <- subset(teste_s, Country %in% c("India","China"))

# COMMAND 14
#   Merge multiple vector objects with different length.
library("qpcR") 
teste_u <- qpcR:::cbind.na(df_1, df_2) # Bind as columns

library("dplyr")
teste_v <- as.data.frame(bind_rows(vec1, vec2))  # Bind as rows
