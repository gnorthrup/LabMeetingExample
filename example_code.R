setwd("~/Desktop/berkeley/Boots Lab/LabMeetingExample")

NUMSAMPLES <- 1000000 #total number of samples
DICESIZE <- 20

set.seed(1) #set your seed

#####################
#Do the dice rolling#
#####################

first_roll <- sample(1:DICESIZE, NUMSAMPLES, replace=T) #roll the dice
second_roll <- sample(1:DICESIZE, NUMSAMPLES, replace=T)
advantage <- c() #initialize the vector to store the higher rolls
for (i in 1:NUMSAMPLES){ #get the higher of the two rolls
  advantage[i] <- max(first_roll[i],second_roll[i])
}

###############
#Make the plot#
###############
time <- Sys.time()
png(filename = paste("plots/Histogram of advantage,",time))
hist(advantage,main=paste("Histogram of advantage,",time))#plot them
dev.off()

