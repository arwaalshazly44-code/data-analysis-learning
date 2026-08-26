# Correlation

## Definition

Correlation measures the strength and direction of the linear relationship between two numerical variables.

The correlation coefficient is represented by r.

## Range of r

- -1 ≤ r ≤ +1

The value of r tells us two things:

1. The direction of the relationship.
2. The strength of the relationship.

---

## Direction of Correlation

### Positive Correlation

When one variable increases, the other variable tends to increase.

r > 0

### Negative Correlation

When one variable increases, the other variable tends to decrease.

r < 0

### No Linear Correlation

When there is no clear linear relationship between the variables.

r ≈ 0

---

## Strength of Correlation

The absolute value of r (|r|) is used to determine the strength of the relationship.

- |r| close to 0 → Weak
- |r| around the middle → Moderate
- |r| close to 1 → Strong

The closer |r| is to 1, the stronger the linear relationship.

---

## Mathematical Formula

Pearson correlation coefficient:

r = Σ[(x - x̄)(y - ȳ)] / √[Σ(x - x̄)² × Σ(y - ȳ)²]

---

## Excel Function

=CORREL(range1, range2)

or

=PEARSON(range1, range2)

Both functions calculate the Pearson correlation coefficient.

---

## Scatter Plot

A scatter plot is used to visually show the relationship between two numerical variables.

### How to Interpret a Scatter Plot

- Points generally moving upward from left to right → Positive correlation.
- Points generally moving downward from left to right → Negative correlation.
- Points widely scattered with no clear direction → Weak or no linear correlation.
- Points close to a straight-line pattern → Strong correlation.

### Important Note

A scatter plot helps visualize the direction and strength of a relationship, while the correlation coefficient (r) gives a numerical measure of the linear relationship.

---

## Example of Interpretation

If:

r = 0.9986

Then:

- Direction → Positive
- Strength → Strong

Interpretation:

There is a very strong positive linear correlation between the two variables.

---

## Important Note

Correlation does not imply causation.

A strong correlation between two variables does not necessarily mean that one variable causes the other.
