```r
# This improved code checks for the existence of columns before subsetting,
# providing an informative message if any are missing.

df <- data.frame(a = 1:3, b = 4:6, c = 7:9)
cols_to_subset <- c("a", "b", "d")

missing_cols <- setdiff(cols_to_subset, names(df))
if (length(missing_cols) > 0) {
  warning(paste("Columns not found:", paste(missing_cols, collapse = ", ")))
}

subset_df <- df[, intersect(cols_to_subset, names(df))]
print(subset_df)
```