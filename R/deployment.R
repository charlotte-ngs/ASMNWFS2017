###
###
###
###   Purpose:   Deployment of course material
###   started:   2017/02/19 (pvr)
###
### ############################################# ###

#' Deployment of course material
#' 
deploy <- function(psSrcFile, psDeployDir){
  ### # check: source file to be deployed must exist
  if (!file.exists((psSrcFile)))
    stop("### ERROR: Cannot find source file: ", psSrcFile)
  ### # if deployment directory does not exist, create it
  if (!dir.exists(psDeployDir))
    dir.create(path = psDeployDir, recursive = TRUE)
  ### # deploy sourcefile to deployment directory 
  file.copy(from = psSrcFile, to = psDeployDir)
}