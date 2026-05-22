# ============================================================
# STEP-BY-STEP: Build Your First R Package (regexcite)
# Follow these steps in order inside RStudio
# ============================================================


# ── PHASE 1: SETUP (do this once ever) ──────────────────────

# Step 1: Install devtools (only once)
install.packages("devtools")

# Step 2: Load devtools (every new session)
library(devtools)


# ── PHASE 2: CREATE  PACKAGE ────────────────────────────

# Step 3: Create the package skeleton

create_package("~/Desktop/regexcite")

# After this runs, RStudio opens a new window .
# Switch to that new window and run library(devtools) again:
library(devtools)

# Step 4: Set up Git (version control)
use_git()
# When asked, say YES to commit the files.
# RStudio will restart — that is normal.


# ── PHASE 3: WRITE  FIRST FUNCTION ──────────────────────

# Step 5: Create the R file for  function
library(devtools)
use_r("strsplit1")
use_r("strsplit1")
# This opens R/strsplit1.R — paste the function below into that file and SAVE it:

# --- paste this into R/strsplit1.R ---
strsplit1 <- function(x, split) {
  strsplit(x, split = split)[[1]]
}
# --- end of R/strsplit1.R content ---

# Step 6: Test your function
load_all()                                    # loads the package into memory
strsplit1("alfa,bravo,charlie", split = ",")  # should return: "alfa" "bravo" "charlie"


# ── PHASE 4: METADATA AND DOCUMENTATION ─────────────────────

# Step 7: Run check() for the first time (expect 1 warning about license)
check()

# Step 7b: Edit DESCRIPTION file manually in RStudio:
# Open the DESCRIPTION file and change:
#   Title: What the Package Does (One Line, Title Case)
#   Authors@R: person("Your", "Name", email = "you@example.com", role = c("aut", "cre"))
#   Description: A short paragraph about what the package does.

# Step 7c: Add a license
use_mit_license()

# Step 8: Add documentation to your function
# Open R/strsplit1.R and REPLACE its content with this:

# --- paste this into R/strsplit1.R (replaces old content) ---
#' Split a string into parts
#'
#' @param x A single string to split
#' @param split The character to split on
#' @returns A character vector of parts
#' @export
#'
#' @examples
#' strsplit1("a,b,c", split = ",")
strsplit1 <- function(x, split) {
  strsplit(x, split = split)[[1]]
}
# --- end of R/strsplit1.R content ---

# Then generate the help files:
document()

# Test that the help page works:
?strsplit1


# ── PHASE 5: TESTS, FINAL CHECK, AND GITHUB ─────────────────

# Step 9a: Set up testing
use_testthat()
use_test("strsplit1")

# In the test file that opens, paste this and save:

# --- paste this into tests/testthat/test-strsplit1.R ---
test_that("strsplit1 splits correctly", {
  expect_equal(strsplit1("a,b,c", ","), c("a", "b", "c"))
})
# --- end of test file content ---

# Step 9b: Run the full check (goal: 0 errors, 0 warnings, 0 notes)
check()

# Step 9c: Install your package locally
install()

# Step 9d: Push to GitHub (so your leader can see your work)
use_github()
