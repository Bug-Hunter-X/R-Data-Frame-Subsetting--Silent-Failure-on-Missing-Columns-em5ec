# R Data Frame Subsetting Bug

This repository demonstrates a subtle bug in R related to subsetting data frames using character vectors of column names.  When the specified column names do not exist in the data frame, the subsetting operation fails silently, omitting the missing columns without any warnings or errors. This can lead to unexpected behavior and difficult-to-debug issues.

The `bug.r` file contains the problematic code, and `bugSolution.r` provides a corrected version that handles missing columns gracefully.

## Problem Description

The issue arises when you try to subset a data frame using `[` with a character vector that contains column names not present in the data frame. The standard subsetting operation silently ignores any missing columns and proceeds without generating an error or warning.