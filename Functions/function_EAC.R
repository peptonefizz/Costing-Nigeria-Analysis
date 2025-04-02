# R Script to Calculate Equivalent Annual Cost (EAC) and Create a Table

# Function to calculate Equivalent Annual Cost (EAC)
# Inputs:
#   discount_rate: Discount rate as a decimal (e.g., 0.03 for 3%)
#   asset_price: Initial price of the asset
#   ELY: Expected Life Years of the asset
# Output:
#   Equivalent Annual Cost (EAC)

calculate_eac <- function(discount_rate, asset_price, ELY) {
  # Check for valid inputs
  if (discount_rate <= 0 || asset_price <= 0 || ELY <= 0) {
    stop("All inputs must be positive values.")
  }
  
  # Calculate the Equivalent Annual Cost (EAC)
  EAC <- (asset_price * discount_rate) / (1 - (1 + discount_rate)^-ELY)
  
  return(EAC)
}