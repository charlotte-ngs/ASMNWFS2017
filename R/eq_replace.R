### 
###
###
###   Purpose:   Replace equations
###   started:   2017/03/10 (pvr)
###

### # file name
sRmdFn <- file.path("cn", "02-linreg.Rmd")
conRmd <- file(description = sRmdFn)
vecRmd <- readLines(con = conRmd)
close(con = conRmd)

### # vector of lines where replacement should be done, first entry is ommitted
vecReplaceIdx <- grep(pattern = "^[$]{2}", vecRmd)[2:27]

### # define replacement function
set.eq.env <- function(x) paste0("\\begin{equation}", unlist(strsplit(x,split = "$", fixed = TRUE))[3],"\\end{equation}")

### # final replacement
vecRmd[vecReplaceIdx] <- sapply(vecRmd[vecReplaceIdx],set.eq.env, USE.NAMES = FALSE)

### # output
cat(paste(vecRmd, collapse = "\n"), "\n", file = sRmdFn)

