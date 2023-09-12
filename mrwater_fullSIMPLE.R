# Load required packages
library(mrwater)
library(magpiesets)
library(stringr)

setConfig(outputfolder = "/p/projects/magpie/users/beier/mrwater4SIMPLE/outputs/SIMPLEopt_2023_09_04")
setConfig(extramappings = "clustermapping.csv")
options(magclass_sizeLimit = 1e+12)

mrwater::fullSIMPLE(transDist = 100, fossilGW = TRUE, allocationrule = "optimization", rankmethod = "USD_m3:GLO:TRUE")

setConfig(outputfolder = "/p/projects/magpie/users/beier/mrwater4SIMPLE/outputs/SIMPLEup_2023_09_04")
mrwater::fullSIMPLE(transDist = 100, fossilGW = TRUE, allocationrule = "upstreamfirst", rankmethod = "USD_m3:GLO:TRUE")
