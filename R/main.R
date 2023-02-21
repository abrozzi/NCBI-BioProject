library(rjson)

bioprj <- fromJSON(file = "bioproject.json")
save(bioprj, file="bioproject.Rda")
