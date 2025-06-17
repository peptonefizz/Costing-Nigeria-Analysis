# Cost-effectiveness of CXR and AI for TB screening in Nigeria 

This repository contains the code, data inputs, and outputs for a Tcost-effectiveness analysis of a TB screening intervention.

### 📄 Associated Publications
**Implementation costs and cost-effectiveness of ultraportable chest X-ray with artificial intelligence in active case finding for tuberculosis in Nigeria**  
_T.Garg, S.John et al._  
Published in *PLOS Digital Health* (2025)  
📄 [Read the full paper here](https://doi.org/10.1371/journal.pdig.0000894)

**Comparing tuberculosis symptom screening to chest X-ray with artificial intelligence in an active case finding campaign in Northeast Nigeria**  
_S.John, S.Abdulkarim et al._  
Published in *BMC Global and Public Health* (2023)  
📄 [Read the full paper here](https://doi.org/10.1186/s44263-023-00017-2)

---

## 📁 Repository Structure

```
Costing-Nigeria-Analysis/
├── Data/                                                # Input data files
│   ├── cost_input.xlsx                                  # Cost data
│   ├── cost_input_sensitivity_analysis.xlsx             # Cost data with CXR and AI options
│   ├── tb_clinical.xlsx                                 # Proportion of clinically dx TB in Nigeria
│   ├── PaperTable3.xlsx                                 # Outcome data from Table 3 of main paper
│   └── PaperTable3_subclinical.xlsx                     # Outcome data from Table 3 with subclinical TB
├── Output/                                              # Output tables and figures
├── Scripts/                                             # R Markdown analysis files
│   ├── 0.batch_run_all_analyses.R                       # Batch script to run all Rmd files in sequence
│   ├── 1.Costing Nigeria analysis.Rmd                   # Base case cost analysis
│   ├── 2.Costing Nigeria analysis_with clinicaldx.Rmd   # Includes clinical diagnosis scenario
│   ├── 3.Costing Nigeria analysis_viz.Rmd               # Visualization of base case results
│   ├── 4.Costing Nigeria analysis_viz_clinicaldx.Rmd    # Visualization for clinical diagnosis scenario
│   ├── 5.Costing Nigeria analysis_subclinicalTB.Rmd     # Subclinical TB-focused costing analysis
│   └── 6.Costing Nigeria analysis_sensitivity.Rmd       # Sensitivity analysis using different AI and CXR
├── README.md
└── LICENSE
```

---

## 🚀 Running the Analysis

To reproduce the entire analysis:

1. Clone the repository
2. Open RStudio in the project root.
3. Run the batch script:`Scripts/batch_run_all_analyses.R`
4. Outputs will be saved in the `Output/` folder.

---
