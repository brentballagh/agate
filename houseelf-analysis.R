#this analysis is intended to drive anyone crazy mad who works on it

library(stringr)
library(dplyr)
library(dbplyr)

houself_earlength_dna_data_1 <- read.csv("./data/houseelf_earlength_dna_data.csv")

gc_contentelf <- function(gc_content_elf){
  gself <- str_count(gc_content_elf, "G")
  cself <- str_count(gc_content_elf, "C")
  gc_contentelf <- (gself + cself) / str_length(gc_content_elf) * 100
  return(gc_contentelf)
}

gc_contentelf(houself_earlength_dna_data_1$dnaseq[2])

#for loop

for (i in 1:length(houself_earlength_dna_data_1 $dnaseq)) {
  houself_earlength_dna_data_1$gc_content[i] <- gc_contentelf(houself_earlength_dna_data_1$dnaseq[i])
}













get_size_class <- function(ear_length){
   # Calculate the size class for one or more earth lengths
   ear_lengths <- ifelse(ear_length > 10, "large", "small")
   return(ear_lengths)
}
