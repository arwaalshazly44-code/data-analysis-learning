# Excel Functions

## Conditional Functions

### IF

**Purpose:**  
Checks a condition and returns one value if the condition is TRUE and another value if the condition is FALSE.

**Syntax:**  
=IF(logical_test, value_if_true, value_if_false)

**Example:**  
=IF(B2>=50,"Pass","Fail")

**Important Note:**  
IF is useful for making decisions based on a single condition.


---

### IFS

**Purpose:**  
Checks multiple conditions and returns the value corresponding to the first condition that is TRUE.

**Syntax:**  
=IFS(logical_test1, value1, logical_test2, value2, ...)

**Example:**  
=IFS(B2>=90,"Excellent",B2>=75,"Good",B2>=50,"Pass",B2<50,"Fail")

**Important Note:**  
IFS is useful when you have multiple conditions and want to avoid using multiple nested IF functions.


---

### SUMIF

**Purpose:**  
Adds values that meet one specific condition.

**Syntax:**  
=SUMIF(range, criteria, sum_range)

**Example:**  
=SUMIF(A2:A10,"Sales",B2:B10)

**Important Note:**  
SUMIF is used when you have one condition.


---

### SUMIFS

**Purpose:**  
Adds values that meet multiple conditions.

**Syntax:**  
=SUMIFS(sum_range, criteria_range1, criteria1, criteria_range2, criteria2, ...)

**Example:**  
=SUMIFS(C2:C10,A2:A10,"Sales",B2:B10,">=5000")

**Important Note:**  
SUMIFS is useful when the calculation depends on two or more conditions.


---

### AVERAGEIF

**Purpose:**  
Calculates the average of values that meet one condition.

**Syntax:**  
=AVERAGEIF(range, criteria, average_range)

**Example:**  
=AVERAGEIF(A2:A10,"Sales",B2:B10)

**Important Note:**  
AVERAGEIF calculates the average only for values that satisfy the specified condition.


---

### AVERAGEIFS

**Purpose:**  
Calculates the average of values that meet multiple conditions.

**Syntax:**  
=AVERAGEIFS(average_range, criteria_range1, criteria1, criteria_range2, criteria2, ...)

**Example:**  
=AVERAGEIFS(C2:C10,A2:A10,"Sales",B2:B10,">=5000")

**Important Note:**  
AVERAGEIFS is useful when the average depends on multiple conditions.


---

### COUNTIF

**Purpose:**  
Counts the number of cells that meet one condition.

**Syntax:**  
=COUNTIF(range, criteria)

**Example:**  
=COUNTIF(B2:B20,">=50")

**Important Note:**  
COUNTIF counts cells based on one condition.


---

### COUNTIFS

**Purpose:**  
Counts the number of cells or records that meet multiple conditions.

**Syntax:**  
=COUNTIFS(criteria_range1, criteria1, criteria_range2, criteria2, ...)

**Example:**  
=COUNTIFS(A2:A20,"Sales",B2:B20,">=50")

**Important Note:**  
COUNTIFS is useful when multiple conditions must be satisfied at the same time.


---

### MAXIFS

**Purpose:**  
Returns the largest value that meets one or more conditions.

**Syntax:**  
=MAXIFS(max_range, criteria_range1, criteria1, ...)

**Example:**  
=MAXIFS(C2:C20,A2:A20,"Sales")

**Important Note:**  
MAXIFS helps find the maximum value within a specific group or under specific conditions.


---

### MINIFS

**Purpose:**  
Returns the smallest value that meets one or more conditions.

**Syntax:**  
=MINIFS(min_range, criteria_range1, criteria1, ...)

**Example:**  
=MINIFS(C2:C20,A2:A20,"Sales")

**Important Note:**  
MINIFS helps find the minimum value within a specific group or under specific conditions.


---

## Counting Functions

### COUNT

**Purpose:**  
Counts the number of cells that contain numbers.

**Syntax:**  
=COUNT(range)

**Example:**  
=COUNT(B2:B20)

**Important Note:**  
COUNT counts numerical values only. Text and empty cells are not counted.


---

### COUNTA

**Purpose:**  
Counts the number of non-empty cells.

**Syntax:**  
=COUNTA(range)

**Example:**  
=COUNTA(A2:A20)

**Important Note:**  
COUNTA counts cells containing numbers, text, logical values, and other non-empty values.


---

### COUNTBLANK

**Purpose:**  
Counts the number of empty cells in a range.

**Syntax:**  
=COUNTBLANK(range)

**Example:**  
=COUNTBLANK(B2:B20)

**Important Note:**  
COUNTBLANK is useful for identifying missing or empty data.


---

## Dynamic Array Functions

### UNIQUE

**Purpose:**  
Returns a list of unique values from a range or array.

**Syntax:**  
=UNIQUE(array)

**Example:**  
=UNIQUE(A2:A20)

**Important Note:**  
UNIQUE automatically returns distinct values and can spill the results into multiple cells.


---

### TRANSPOSE

**Purpose:**  
Changes data from rows to columns or from columns to rows.

**Syntax:**  
=TRANSPOSE(array)

**Example:**  
=TRANSPOSE(A2:D2)

**Important Note:**  
TRANSPOSE is useful when you need to change the orientation of your data.


---

### SEQUENCE

**Purpose:**  
Generates a sequence of numbers in an array.

**Syntax:**  
=SEQUENCE(rows, [columns], [start], [step])

**Example:**  
=SEQUENCE(10,1,1,1)

**Important Note:**  
SEQUENCE is useful for automatically generating numbered lists or sequences without manually entering each number.


---

## Formatting & Visualization

### Conditional Formatting

**Purpose:**  
Automatically changes the formatting of cells based on specified conditions.

**Common Uses:**
- Highlight values above or below a threshold.
- Identify duplicate values.
- Highlight the highest or lowest values.
- Identify missing or unusual values.
- Use color scales to visualize the distribution of values.

**Important Note:**  
Conditional Formatting helps identify patterns, trends, and important values quickly without changing the actual data.


---

### Sparklines

**Purpose:**  
Sparklines are small charts displayed inside a single cell to show trends in data.

**Common Types:**
- Line
- Column
- Win/Loss

**Common Uses:**
- Showing sales trends.
- Comparing performance over time.
- Showing changes in values across periods.

**Important Note:**  
Sparklines provide a quick visual summary while taking up very little space.


