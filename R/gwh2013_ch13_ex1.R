###
###
###
###   Purpose:   Test Example 1 in Chapter 13 of GWH2013
###   started:   2017/04/13 (pvr)
###
###

#' Compute Snp Allele frequency characteristis from Genotype-Matrix
#' 
getSnpAlleleInfo <- function(pmatSnp){
  sumpq <- 0
  freq <- NULL
  P <- NULL
  for(i in 1:ncol(pmatSnp)){
    (freq[i] <- ((mean(pmatSnp[,i])/2)))
    (P[i] <- (2*(freq[i]-0.5)))
    (sumpq <- sumpq+(freq[i]*(1-freq[i])))
  }
  return(list(freq=freq, P=P, sumpq=sumpq))
}