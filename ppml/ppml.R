# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Poisson Pseudo Maximum Likelihood (PPML) Use ppml In (With) R Software
install.packages("readxl")
install.packages("httr")
install.packages("gravity")
install.packages("dplyr")
library("httr")
library("readxl")
library("gravity")
library("dplyr")
# Import Data Excel Into R From Github Olah Data Semarang (timbulwidodostp)
github_link <- "https://github.com/timbulwidodostp/ppml/raw/main/ppml/ppml.xlsx"
temp_file <- tempfile(fileext = ".xlsx")
req <- GET(github_link, 
# authenticate using GITHUB_PAT
authenticate(Sys.getenv("GITHUB_PAT"), ""),
# write result to disk
write_disk(path = temp_file))
ppml <- readxl::read_excel(temp_file)
# Estimate Poisson Pseudo Maximum Likelihood (PPML) Use ppml In (With) R Software
ppml<-ppml(dependent_variable ="flow",distance="distw",additional_regressors=c("rta","iso_o","iso_d"),data=ppml)
summary(ppml)
# Poisson Pseudo Maximum Likelihood (PPML) Use ppml In (With) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished