
# Central Tendency and Range

## Mean

### Definition
The mean is the average of a set of values.

### Mathematical Formula
Mean = Σx / n

### Excel Function
=AVERAGE(range)

### Important Note
The mean is sensitive to outliers because it uses every value in the calculation. If the dataset contains an extreme value that strongly affects the mean, the median may be a better measure of central tendency.

---

## Median

### Definition
The median is the middle value when the data is arranged in ascending or descending order.

### Mathematical Formula
For an odd number of values:
Median = middle value

For an even number of values:
Median = average of the two middle values

### Excel Function
=MEDIAN(range)

### Important Note
The median is less affected by outliers because it depends on the position of the middle value rather than the actual size of every value.

---

## Mode

### Definition
The mode is the value that appears most frequently in the dataset.

### Mathematical Formula
Mode = the most frequent value

### Excel Function
=MODE.SNGL(range)

---

## Range

### Definition
The range is the difference between the maximum and minimum values.

### Mathematical Formula
Range = Maximum − Minimum

### Excel Function
=MAX(range)-MIN(range)

## Choosing Between Mean and Median

When the data does not contain influential outliers, the mean can be used to represent the center of the data.

When the data contains influential outliers, the median is often more appropriate because it is less affected by extreme values.

Outliers should be identified using statistical methods such as the IQR method, while also considering the context and nature of the data.
