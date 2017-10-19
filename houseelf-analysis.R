#this analysis is intended to drive anyone crazy mad who works on it

library(stringr)

houself_earlength_dna_data_1 <- read.csv("./data/houseelf_earlength_dna_data.csv")

gc_contentelf <- function(gc_content_elf){
  gself <- str_count(gc_content_elf, "G")
  cself <- str_count(gc_content_elf, "C")
  gc_contentelf <- (gself + cself) / str_length(gc_content_elf) * 100
  return(gc_contentelf)
}





