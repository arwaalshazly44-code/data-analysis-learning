# Variability Measures

## Variance

### Definition
Variance measures how spread out the data values are from the mean.

### Mathematical Formula

For a sample:

s² = Σ(x - x̄)² / (n - 1)

For a population:

σ² = Σ(x - μ)² / N

### Excel Functions

For a sample:
=VAR.S(range)

For a population:
=VAR.P(range)

### Interpretation
A larger variance means that the data values are more spread out from the mean.

---

## Standard Deviation

### Definition
Standard deviation measures how far the data values are spread out from the mean.

### Mathematical Formula

For a sample:

s = √[Σ(x - x̄)² / (n - 1)]

For a population:

σ = √[Σ(x - μ)² / N]

### Excel Functions

For a sample:
=STDEV.S(range)

For a population:
=STDEV.P(range)

### Interpretation
A larger standard deviation means that the data values are more spread out from the mean.

---

## IQR (Interquartile Range)

### Definition
IQR measures the spread of the middle 50% of the data.

### Quartiles

- Q1 (First Quartile): The value below which 25% of the data falls.
- Q2 (Second Quartile): The median, which divides the data into two equal parts.
- Q3 (Third Quartile): The value below which 75% of the data falls.

### Mathematical Formula

IQR = Q3 - Q1

### Excel Functions

Q1:
=QUARTILE.INC(range,1)

Q2:
=QUARTILE.INC(range,2)

Q3:
=QUARTILE.INC(range,3)

IQR:
=QUARTILE.INC(range,3)-QUARTILE.INC(range,1)

### Middle 50% Interval

The middle 50% of the data lies between Q1 and Q3.

Middle 50% interval = [Q1, Q3]

### Interpretation

A larger IQR means that the middle 50% of the data is more spread out.

A smaller IQR means that the middle 50% of the data is more concentrated.

### Outliers

IQR can be used to identify possible outliers.

#### Lower Fence

Lower Fence = Q1 - 1.5 × IQR

#### Upper Fence

Upper Fence = Q3 + 1.5 × IQR

Values below the Lower Fence or above the Upper Fence are considered possible outliers.

### Important Note

IQR is less affected by outliers because it focuses on the middle 50% of the data.
