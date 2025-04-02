library(rmarkdown)
library(here)
library(ggplot2)

# Patch ggsave to auto-create directories
unlockBinding("ggsave", as.environment("package:ggplot2"))
assign("ggsave", function(filename, ...) {
  dir.create(dirname(filename), recursive = TRUE, showWarnings = FALSE)
  ggplot2::ggsave(filename, ...)
}, envir = as.environment("package:ggplot2"))
lockBinding("ggsave", as.environment("package:ggplot2"))

rmd_files <- c(
  "1.Costing Nigeria analysis.Rmd",
  "2.Costing Nigeria analysis_with clinicaldx.Rmd",
  "3.Costing Nigeria analysis_viz.Rmd",
  "4.Costing Nigeria analysis_viz_clinicaldx.Rmd",
  "5.Costing Nigeria analysis_subclinicalTB.Rmd",
  "6.Costing Nigeria analysis_sensitivity.Rmd"
)

for (file in rmd_files) {
  rmd_path <- here("Scripts", file)
  message("Running: ", rmd_path)
  
  render(
    input = rmd_path,
    output_format = "all",
    output_file = tempfile(),
    clean = TRUE,
    envir = new.env()
  )
}
