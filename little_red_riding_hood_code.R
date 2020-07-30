# Loading packages

library(writexl)

# Creating an empty data frame

data = data.frame(code = character(),
                   speaker = character(), 
                   origin = character(), 
                   sentences = character()) 

# Importing each text individually

raw_text = readLines(paste("textfiles",   
                           "1.txt",                      #name of the file to be read (there's one file per participant)
                           sep = "/"))
raw_text

# Splitting the imported text into sentences

new_text = raw_text[-c(1, 2, 3, 4, 25)] %>%              #removing non-text lines manually
  paste0(collapse = " ") %>%
  strsplit(". ", fixed = TRUE)

# Adding the information to the data frame

raw_df = as.data.frame(new_text)
names(raw_df)[1] = "sentences"
raw_df$code = "001"                                      #participant's code
raw_df$speaker = NA                                      #type of speaker
raw_df$origin = NA                                       #participant's country of origin
final_df = raw_df[,c(3,2,4,1)]
data = bind_rows(data, final_df)

# Generating an Excel file from the data frame

write_xlsx(data, "data.xlsx")

