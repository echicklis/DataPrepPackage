
```r
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

save(parkinsons_updrs_data, file = "parkinsons_data.rda")

sessinfo=sessionInfo()
sessinfo
```

```
## R version 3.4.0 (2017-04-21)
## Platform: x86_64-w64-mingw32/x64 (64-bit)
## Running under: Windows >= 8 x64 (build 9200)
## 
## Matrix products: default
## 
## locale:
## [1] LC_COLLATE=English_United States.1252 
## [2] LC_CTYPE=English_United States.1252   
## [3] LC_MONETARY=English_United States.1252
## [4] LC_NUMERIC=C                          
## [5] LC_TIME=English_United States.1252    
## 
## attached base packages:
## [1] stats     graphics  grDevices utils     datasets  methods   base     
## 
## other attached packages:
## [1] knitr_1.19
## 
## loaded via a namespace (and not attached):
## [1] compiler_3.4.0 magrittr_1.5   tools_3.4.0    stringi_1.1.5 
## [5] stringr_1.2.0  evaluate_0.10
```

```r
save(sessinfo, file= "sessinfo.rda")

dirvec=dir()

library(tools)

checksums=sapply(dirvec, function(x){as.character(md5sum(x))})
#md5sum creates a 128-bit summary of file contents w/ 32 hexadecimal digits
#unique fingerprint for files; checks that all packages unpacked correctly and nothing was subsequently modified
checksums
```

```
##                         dataprep.R                       dataprep.Rmd 
## "99f7f2e9139e337548504ce06c16da3b" "219566da8873c4b995947dd626baba97" 
##                parkinsons_data.rda          parkinsons_updrs.data.txt 
## "c08132fbac1fb8794930f9b997887d20" "4f97310e2c9fbeedb72e8a37822fee45" 
##                       sessinfo.rda 
## "c5b51eab63c0cc5cab14e82384c5be1d"
```

```r
save(checksums, file= "checksums.rda")
```

