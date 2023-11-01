library(dplyr)

# Define a single-argument function named 'calculate_area' that calculates petal area
calculate_area <- function(data) {
  # Check if 'data' is a data frame
  if (!is.data.frame(data)) {
    stop("Input data must be a data frame.")
  }
  
  # Use mutate to calculate petal area and add it as a new column
  transformed_data <- data %>%
    mutate(Petal_Area = Petal.Length * Petal.Width)
  
  return(transformed_data)
}

# Load the built-in 'iris' dataset
data(iris)

# Use the function to calculate petal area
iris_petal_area <- calculate_area(iris)

# Print the transformed data
print(iris_petal_area)


