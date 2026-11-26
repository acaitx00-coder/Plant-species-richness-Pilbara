# Run from the project folder. Writes a new snapshot so the original is preserved.
library(ausplotsR)
meta <- get_ausplots(site_info=TRUE, veg.vouchers=FALSE, veg.PI=FALSE)
wa <- subset(meta$site.info, state=="WA")
ids <- unique(wa$site_location_name[wa$bioregion_name %in% "PIL"])
stopifnot(length(ids)>0)
pil <- get_ausplots(my.Plot_IDs=ids, site_info=TRUE, veg.vouchers=TRUE, veg.PI=TRUE)
cols <- c("site_unique","standardised_name","rank","genus_species","herbarium_determination")
snapshot <- list(
  wa=wa[,c("site_unique","site_location_name","bioregion_name")],
  info=pil$site.info[,c("site_unique","site_location_name","visit_start_date","latitude","longitude","plot_dimensions")],
  vouchers=pil$veg.vouch[,cols],
  points=pil$veg.PI[,c(cols,"hits_unique","dead","in_canopy_sky")],
  citation=pil$citation
)
dir.create("data", showWarnings=FALSE)
saveRDS(snapshot, file.path("data",paste0("pilbara-",Sys.Date(),".rds")),compress="xz")
