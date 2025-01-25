#Install Required  R packages
install.packages("tidyverse")
install.packages("openxlsx")
install.packages("naniar")
install.packages("ggpubr")


#Install Required  Bioconductor packages




if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install(version = "3.20")
BiocManager::install(c("AIRway","TCGAbiolinks"))
BiocManager::install("airway")
BiocManager::install("DESeq2")
BiocManager::install("GEOquery")
# Load Required Packages
library(tidyverse)
library(GEOquery)
library(ggpubr)
library(openxlsx)
library(naniar)
#data manipulation


#Get metadata
res <- getGEO(GEO = "GSE21942", GSEMatrix = T)

#Metadata

metadata <- pData(phenoData(res[[1]]))
