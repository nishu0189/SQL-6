# SQL-6

# 📘 SQL Practice – Set Operators (UNION, INTERSECT, EXCEPT)
🔍 Overview
This script demonstrates the use of SQL Set Operators to combine or compare data horizontally (row-wise) across two tables with identical structures. It helps in understanding how UNION, INTERSECT, and EXCEPT work with duplicates, common rows, and row subtraction.

## 📚 Topics Covered

### ✅ 1. `UNION ALL`
- Combines all rows from both tables, **including duplicates**

### ✅ 2. UNION
- Combines rows from both tables but removes duplicates.

### ✅ 3. INTERSECT
- Returns only the rows that exist in both Westor and Eastor.

### ✅ 4. EXCEPT
- Returns rows that exist in the first query but not in the second.

## Summary of Set Operators
  | Operator    | Description                                   | Removes Duplicates? |
| ----------- | --------------------------------------------- | ------------------- |
| `UNION`     | Combines unique rows from both tables         | ✅ Yes               |
| `UNION ALL` | Combines all rows from both tables            | ❌ No                |
| `INTERSECT` | Returns only rows common to both tables       | ✅ Yes               |
| `EXCEPT`    | Returns rows from the first not in the second | ✅ Yes               |
