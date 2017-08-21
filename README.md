# AGmisc

## Miscellaneous functions from A. Gosiewska
A set of helper functions from A. Gosiewska.

## Installation 
To install this package, start R and enter:
```
devtools::install_github("agosiewska/AGmisc")
```

## Functionalities
* Overloading subscript operator '[' - dropping columns by names in data.frame.
```
df[ ,-c("First", "Third")]
```