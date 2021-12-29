# COMMAND 1
#   Change the axis values of a plot. (NOTE: the '*' must be changed to the axis, x or y, that you want to change).
library(scales)
scale_*_continuous(labels = scales::scientific) # change to scientific notation
scale_*_continuous(labels = scales::comma) # change to comma format

# COMMAND 2
#   PLOT: Geom_count 

# With default breaks
ggplot(teste_a, aes(x = col_1, y = col_2)) + 
  geom_count(aes(color = ..n.., size = ..n..)) +
  guides(color = 'legend') + 
  labs(x = "X axis", y = "Y axis", title = "X vs. Y")
  
# With manual breaks
ggplot(teste_a, aes(x = col_1, y = col_2)) + 
  geom_count(aes(color = ..n.., size = ..n..)) +
  scale_size_continuous(breaks = seq(0, 200000, by = 20000))+
  scale_colour_continuous(breaks = seq(0, 200000, by = 20000))+
  guides(colour = 'legend', size = 'legend') + 
  labs(x = "X axis", y = "Y axis", title = "X vs. Y") +
  theme(panel.background = element_rect(fill = "#a6a48a"), 
        panel.grid.major = element_line(size = 0.5, linetype = 'solid', colour = "gray")) + 
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1, size = 7))

# COMMAND 3
#   PLOT: geom_line 

# With labels on graph
ggplot(teste_b, aes(x = col_1, y = col_2, color = col_3)) +
  geom_line(size = 1) + 
  scale_y_continuous(labels = scales::comma) +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1, size = 9)) +
  labs(x = "X axis", y = "Y axis", color = "Label",
       title = "Title") +
  geom_dl(aes(label = col_3,
              color = col_3), 
          method = list(dl.combine("last.bumpup"), cex = 0.7)) +
  theme(legend.position = "none", 
        plot.margin = unit(c(1,3,1,1), "lines")) +
  scale_x_date(limits = c(min(teste_b$col_1), 
                          max(teste_b$col_1) + 120))
                          
# With labels on graph - REFINADO
ggplot(owid_covid_data, aes(x = date, y = total_cases, color = location)) +
  geom_line(size=1) + 
  scale_y_continuous(labels = scales::comma) +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1, size = 9)) +
  labs(x = "Datas", y = "Total de casos", color = "Países",
       title = "Total de casos por país") +
  theme(legend.position = "none", 
        plot.margin = unit(c(1,3,1,1), "lines")) +
  scale_x_date(limits = c(min(owid_covid_data$date), max(owid_covid_data$date) + 120)) +
  geom_text_repel(data = filter(owid_covid_data, date > '2021-11-15'), 
                  aes(label = location,
                      color = location),
                  direction = "y",
                  vjust = 1.6,
                  hjust = 0.5,
                  segment.size = 0.5,
                  segment.linetype = "solid",
                  box.padding = 0.4,
                  seed = 123)                   
                          
# With labels outside graph
ggplot(owid_covid_data_VACs, aes(x = date, y = people_vaccinated, color = location)) +
  geom_line(size=1) + 
  scale_y_continuous(labels = scales::comma) +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1, size = 9)) +
  labs(x = "Datas", y = "Total", color = "Países",
       title = "Total de pessoas vacinadas")

# COMMAND 4
#   PLOT: dygraphs time series 
#   How to export

library(htmlwidgets)
saveWidget(p, file = "teste_export.html") # 'p' é referente ao modelo de serie temporal
