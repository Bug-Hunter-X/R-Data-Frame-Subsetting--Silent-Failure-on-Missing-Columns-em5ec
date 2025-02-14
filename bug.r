```r
# This code attempts to subset a data frame using a character vector of column names,
# but it fails silently if any of the specified column names are not present.

df <- data.frame(a = 1:3, b = 4:6, c = 7:9)
cols_to_subset <- c("a", "b", "d")
subset_df <- df[, cols_to_subset]
print(subset_df)
# The output will only include columns 'a' and 'b', omitting 'd' without warning.
```