# Pilbara vegetation plots


**[Read the illustrated Pilbara vegetation report](https://acaitx00-coder.github.io/Plant-species-richness-Pilbara/)**
Open index.html to read the completed report offline. Open Pilbara.Rmd in RStudio and select Knit to reproduce it. Keep data/pilbara.rds beside the report in the data directory. Rendering uses R, knitr, rmarkdown and Pandoc (bundled with RStudio). Analysis and figures use base R. The original dataset access date is 20 November 2026.

The tables directory contains the selected plot records, visit audit and species cover rankings. The report compares absolute latest and latest eligible surveys using identical taxonomic and cover rules. Ranked means include all selected plots. Species-level richness includes recognised phrase names and pools varieties and subspecies.

download.R optionally fetches a new timestamped snapshot using ausplotsR and requires internet access. To analyse it, update the readRDS path and the access date in the report and render again. The frozen extract contains the required fields from the saved project data. No saved R session is required.
