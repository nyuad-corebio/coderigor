# Bad Example 
library(tidyverse)
preprocess_data <- function(input_data) {
  # Simple preprocessing:
  threshold_sepal_length <- 5.5
  cleaned_data <- input_data %>% 
    # Good practice: Chaining operations
    filter(sepal.length > threshold_sepal_length) %>% 
    mutate(dummy_value = log(sepal.length + 100))
  
  return (cleaned_data)

}

