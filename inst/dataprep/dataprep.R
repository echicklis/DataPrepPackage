# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

save(parkinsons_updrs_data, file = "parkinsons_updrs_data.rda")

sessinfo=sessionInfo()
sessinfo
save(sessinfo, file= "sessinfo.rda")

dirvec=dir()

library(tools)

checksums=sapply(dirvec, function(x){as.character(md5sum(x))})
#md5sum creates a 128-bit summary of file contents w/ 32 hexadecimal digits
#"unique" fingerprint for files; checks that all packages unpacked correctly and nothing was subsequently modified
#(so not actually unique, just very unlikely that collisions would occur)
checksums
save(checksums, file= "checksums.rda")

#in console (not recursively in this file): spin("dataprep.R") creates .md file

