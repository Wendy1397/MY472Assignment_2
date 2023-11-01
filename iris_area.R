library(dplyr)

library(dplyr)
# Define a function named 'calculate_area' that takes a single argument 'data'
calculate_area <- function(data, transformation_type) {
  # Check if 'data' is a data frame
  if (!is.data.frame(data)) {
    stop("Input data must be a data frame.")
  }
  
  # Use a conditional statement to perform different data transformations
  if (transformation_type == "petal_area") {
    # Use mutate to calculate petal area and add it as a new column
    transformed_data <- data %>%
      mutate(Petal_Area = Petal.Length * Petal.Width)
  } else if (transformation_type == "sepal_area") {
    transformed_data <- data %>%
      mutate(Sepal_Area = Sepal.Length * Sepal.Width)
  } else {
    stop("Invalid transformation_type. Use 'petal_area' or 'sepal_area'.")
  }
  
  return(transformed_data)
}  


