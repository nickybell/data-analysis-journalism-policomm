# based on https://github.com/r-causal/causal-inference-in-R/blob/main/R/setup.R
status <- function(type) {
  status <- switch(
    type,
    unstarted = "is unstarted, but don't worry, it's on our roadmap",
    polishing = "has its foundations written but is still undergoing changes",
    wip = "is actively undergoing work and may be restructured or changed. It may also be incomplete",
    complete = "is mostly complete, but we might make small tweaks or copyedits",
    stop("Invalid `type`", call. = FALSE)
  )
  
  class <- switch(
    type,
    complete = ,
    polishing = "callout-note",
    wip = "callout-warning",
    unstarted = "callout-warning"
  )
  
  knitr::asis_output(paste0(
    "::: ",
    class,
    "\n",
    "## Work-in-progress 🚧\n",
    "You are reading the work-in-progress first edition of *Causal Inference in R*. ",
    "This chapter ",
    status,
    ". \n",
    ":::\n"
  ))
}