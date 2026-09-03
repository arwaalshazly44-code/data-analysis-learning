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

---

## Lookup & Reference Functions

### VLOOKUP

**Purpose:**  
Looks for a value in the first column of a table and returns a related value from another column in the same row.

**Syntax:**  
=VLOOKUP(lookup_value, table_array, col_index_num, [range_lookup])

**Example:**  
=VLOOKUP(A2,$F$2:$H$20,3,FALSE)

**Important Notes:**
- The lookup value must be in the first column of the selected table.
- VLOOKUP searches vertically.
- FALSE is used for an exact match.
- TRUE is used for an approximate match.


### HLOOKUP

**Purpose:**  
Looks for a value in the first row of a table and returns a related value from another row in the same column.

**Syntax:**  
=HLOOKUP(lookup_value, table_array, row_index_num, [range_lookup])

**Example:**  
=HLOOKUP(B1,$B$5:$H$8,3,FALSE)

**Important Notes:**
- HLOOKUP searches horizontally.
- The lookup value must be in the first row of the selected table.
- FALSE is used for an exact match.


### XLOOKUP

**Purpose:**  
Searches for a value in one range and returns the corresponding value from another range.

**Syntax:**  
=XLOOKUP(lookup_value, lookup_array, return_array, [if_not_found], [match_mode], [search_mode])

**Example:**  
=XLOOKUP(A2,F2:F20,H2:H20,"Not Found")

**Important Notes:**
- XLOOKUP can search vertically or horizontally.
- The lookup range and return range are specified separately.
- It can return a custom result when the value is not found.
- It is more flexible than VLOOKUP and HLOOKUP.


### MATCH

**Purpose:**  
Returns the position of a value within a range.

**Syntax:**  
=MATCH(lookup_value, lookup_array, [match_type])

**Example:**  
=MATCH(A2,F2:F20,0)

**Important Notes:**
- MATCH returns a position, not the actual value.
- 0 is used for an exact match.


### INDEX

**Purpose:**  
Returns the value from a specific position in a range.

**Syntax:**  
=INDEX(array, row_num, [column_num])

**Example:**  
=INDEX(H2:H20,5)

**Important Notes:**
- INDEX returns a value based on its position.
- INDEX and MATCH can be combined to perform flexible lookups.


### INDEX + MATCH

**Purpose:**  
INDEX and MATCH can be combined to look up a value without depending on the lookup column being the first column.

**Syntax:**  
=INDEX(return_range,MATCH(lookup_value,lookup_range,0))

**Example:**  
=INDEX(H2:H20,MATCH(A2,F2:F20,0))

**How It Works:**

1. MATCH finds the position of the lookup value.
2. INDEX uses that position to return the corresponding value.

**Important Note:**  
INDEX + MATCH is more flexible than traditional VLOOKUP because the lookup range and return range can be in different columns.


---

# Excel Functions

## Date & Time Functions

### DATE

**Purpose:** Creates a date from year, month, and day.

**Syntax:**
`=DATE(year, month, day)`

**Important Note:** Used to create a valid Excel date.

---

### TIME

**Purpose:** Creates a time from hour, minute, and second.

**Syntax:**
`=TIME(hour, minute, second)`

**Important Note:** Used to create a valid Excel time.

---

### DAY

**Purpose:** Extracts the day number from a date.

**Syntax:**
`=DAY(serial_number)`

**Returns:** A number from 1 to 31.

---

### MONTH

**Purpose:** Extracts the month number from a date.

**Syntax:**
`=MONTH(serial_number)`

**Returns:** A number from 1 to 12.

---

### YEAR

**Purpose:** Extracts the year from a date.

**Syntax:**
`=YEAR(serial_number)`

---

### SECOND

**Purpose:** Extracts the seconds from a time.

**Syntax:**
`=SECOND(serial_number)`

**Returns:** A number from 0 to 59.

---

### MINUTE

**Purpose:** Extracts the minutes from a time.

**Syntax:**
`=MINUTE(serial_number)`

**Returns:** A number from 0 to 59.

---

### NOW

**Purpose:** Returns the current date and time.

**Syntax:**
`=NOW()`

**Important Note:** The result updates when Excel recalculates.

---

### TODAY

**Purpose:** Returns the current date.

**Syntax:**
`=TODAY()`

**Important Note:** Returns the date without the current time.

---

### EDATE

**Purpose:** Returns a date a specified number of months before or after a starting date.

**Syntax:**
`=EDATE(start_date, months)`

**Important Note:** Positive numbers move forward; negative numbers move backward.

---

### DATEDIF

**Purpose:** Calculates the difference between two dates in years, months, or days.

**Syntax:**
`=DATEDIF(start_date, end_date, unit)`

**Common Units:**

* `"Y"` → Complete years
* `"M"` → Complete months
* `"D"` → Complete days

**Important Note:** The start date must be earlier than or equal to the end date.

---

### WORKDAY.INTL

**Purpose:** Calculates a future or past working date while allowing custom weekends and holidays.

**Syntax:**
`=WORKDAY.INTL(start_date, days, [weekend], [holidays])`

**Important Note:** Useful for calculating deadlines based on working days.

---

### NETWORKDAYS.INTL

**Purpose:** Calculates the number of working days between two dates while allowing custom weekends and holidays.

**Syntax:**
`=NETWORKDAYS.INTL(start_date, end_date, [weekend], [holidays])`

**Important Note:** Useful for calculating working days between two dates.

---

### WEEKDAY

**Purpose:** Returns the day of the week as a number.

**Syntax:**
`=WEEKDAY(serial_number, [return_type])`

**Important Note:** `return_type` determines which day is considered the first day of the week.

---

### WEEKNUM

**Purpose:** Returns the week number of a specific date.

**Syntax:**
`=WEEKNUM(serial_number, [return_type])`

**Important Note:** Useful for grouping and analyzing data by week.

---

## Text Functions

### TEXT

**Purpose:** Converts a number or date into text using a specified format.

**Syntax:**
`=TEXT(value, format_text)`

**Important Note:** The result is text, not a numeric value.

---

### TRIM

**Purpose:** Removes extra spaces from text, leaving only single spaces between words.

**Syntax:**
`=TRIM(text)`

**Important Note:** Useful for cleaning imported or manually entered data.

---

### LEN

**Purpose:** Counts the number of characters in a text string.

**Syntax:**
`=LEN(text)`

**Important Note:** Spaces are counted as characters.

---

### FIND

**Purpose:** Finds the position of one text string inside another text string.

**Syntax:**
`=FIND(find_text, within_text, [start_num])`

**Important Note:** `FIND` is case-sensitive.

---

### SUBSTITUTE

**Purpose:** Replaces specific text with new text.

**Syntax:**
`=SUBSTITUTE(text, old_text, new_text, [instance_num])`

**Important Note:** Can replace all occurrences or a specific occurrence.

---

### TEXTSPLIT

**Purpose:** Splits text into multiple cells using a delimiter.

**Syntax:**
`=TEXTSPLIT(text, col_delimiter, [row_delimiter])`

**Important Note:** Useful for separating combined text into different cells.

---

### TEXTBEFORE

**Purpose:** Returns the text that appears before a specified delimiter.

**Syntax:**
`=TEXTBEFORE(text, delimiter)`

---

### TEXTAFTER

**Purpose:** Returns the text that appears after a specified delimiter.

**Syntax:**
`=TEXTAFTER(text, delimiter)`

---

### LEFT

**Purpose:** Extracts a specified number of characters from the beginning of a text string.

**Syntax:**
`=LEFT(text, [num_chars])`

---

### RIGHT

**Purpose:** Extracts a specified number of characters from the end of a text string.

**Syntax:**
`=RIGHT(text, [num_chars])`

---

### MID

**Purpose:** Extracts a specified number of characters from the middle of a text string.

**Syntax:**
`=MID(text, start_num, num_chars)`

---

### CONCAT

**Purpose:** Combines text from multiple cells or text strings into one text string.

**Syntax:**
`=CONCAT(text1, [text2], ...)`

**Important Note:** Does not automatically add spaces or separators.

---

### UPPER

**Purpose:** Converts text to uppercase letters.

**Syntax:**
`=UPPER(text)`

---

### LOWER

**Purpose:** Converts text to lowercase letters.

**Syntax:**
`=LOWER(text)`

---

### PROPER

**Purpose:** Capitalizes the first letter of each word.

**Syntax:**
`=PROPER(text)`

**Important Note:** Useful for formatting names and text.

