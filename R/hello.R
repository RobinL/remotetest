# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

hello <- function() {
  dat <- jsonlite::fromJSON('[
    {"a": "A","b": 28}, {"a": "B","b": 55}, {"a": "C","b": 43},
    {"a": "D","b": 91}, {"a": "E","b": 81}, {"a": "F","b": 53},
    {"a": "G","b": 19}, {"a": "H","b": 87}, {"a": "I","b": 52}
  ]')

  vl <- vegalite::vegalite()

  vl <- vegalite::add_data(vl, dat)
  vl <- vegalite::encode_x(vl, "a", "ordinal")
  vl <- vegalite::encode_y(vl, "b", "quantitative")
  vl <- vegalite::mark_bar(vl)

  vl
}
