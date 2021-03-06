# Creating plots from Qubit data

qbdata <- read.csv(file= "Data/QuBit2019_v4.csv", header = T, stringsAsFactors=F) 
head(qbdata)
library(ggplot2)

# Scatered plot of qubit values of all samples in relation to the number or cryptobenthic fish 
# that corresponds with the eDNA sample. This graph includes qubit values from eDNA samples
# that were collected from surface and away from coral heads or coral rubble habitats. This 
# samples would have corresponding values of CRF = 0, so a larger cloud of values may be 
# skewed towards 0 CRF values

ggplot(qbdata, aes(x = CRF_num, y = qubit_conc)) + geom_point() + stat_smooth()

# Lets do a bar graph to represent the number of samples by habitat type

ggplot(qbdata, aes(x = Habitat)) + geom_bar()

# Now, this is good information, but what I really want to plot is the DNA amount, or 
# qubit amount by habitat type.

ggplot(qbdata, aes(x=Habitat, y=qubit_conc)) +
  geom_bar(stat="identity")

# Wow! Not what I was expecting at all!! But wait, there are qubit_conc values higher
# than max value in data 124

# Calculate average qubit_conc values by habitat type






