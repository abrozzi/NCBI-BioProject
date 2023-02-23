# Lib

library(rjson)

# Main

res = fromJSON(file = "test/demo.json")

N   = length(res$PackageSet$Package)

ids    = c()
titles = c()
desc   = c()

for ( i in 1:N) {
  
  cat (i, "\n")
  
  ids = c(ids,
          res$PackageSet$Package[[i]]$Project$Project$ProjectID$ArchiveID$"@accession"
  )
  
  titles = c(titles,
             res$PackageSet$Package[[i]]$Project$Project$ProjectDescr$Title
  )
  
  desc  = c(desc, 
            res$PackageSet$Package[[i]]$Project$Project$ProjectDescr$Description
  )
}

df = data.frame(id = ids, title = titles, description = desc, stringsAsFactors = FALSE)

# Output

write.table(df, file = "test/demo.tsv", sep="\t", quote = FALSE)
