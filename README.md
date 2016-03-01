copydat
=======

What is it?
-----------

`copydat` lets you copy a **data.frame** to the clipboard. 

Just highlight --- in your RStudio source console --- the name of the `data.frame` you want to copy (like `iris` or `mtcars`). 

Click `Addins > Copy data`, and you're done. Paste away!

Supported formats:

- TSV (to paste into a spreadsheet)
- RTF (to paste into a document or an email)

It's a work in progress. TODO: 

- Support for platforms other than OS X. Just fix `Copy()`. Easy! :-D
- Easy attribution/provenance (`comment()` --> table caption?)
- More formats

**Thanks to** @Rstudio and @kevinushey for RStudio Addins and the great [examples](https://github.com/rstudio/addinexamples). And thanks to @schaffman5 for the [rtf package](https://github.com/cran/rtf/)!

Installation
------------

```
if (!requireNamespace("devtools", quietly = TRUE))
  install.packages("devtools")

devtools::install_github("BAAQMD/copydat")
```
