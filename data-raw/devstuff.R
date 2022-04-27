library(devtools)
library(usethis)
library(desc)

# Remove default DESC
unlink("DESCRIPTION")
# Create and clean desc
my_desc <- description$new("!new")

# Set your package name
my_desc$set("Package", "uktrade")

#Set your name
my_desc$set("Authors@R", "person('Daniel', 'Braby', email = 'daniel.braby@forestresearch.gov.uk', role = c('cre', 'aut'))")

# Remove some author fields
my_desc$del("Maintainer")

# Set the version
my_desc$set_version("0.0.0.9000")

# The title of your package
my_desc$set(Title = "uktrade: An R package for Accessing and Analysing UK Trade data")
# The description of your package
my_desc$set(Description = "Access archival trade data from UK Official Trade info (HMRC) and easily filter and select on key categories.")
# The urls
my_desc$set("URL", "http://www.github.com/fr-dan/uktrade")
my_desc$set("BugReports", "http://www.github.com/fr-dan/uktrade/issues")
# Save everyting
my_desc$write(file = "DESCRIPTION")

# If you want to use the MIT licence, code of conduct, and lifecycle badge
use_mit_license(copyright_holder = "Daniel BRABY")
use_code_of_conduct(contact = "Daniel Braby")
use_lifecycle_badge("Experimental")
use_news_md()

# Get the dependencies
use_package("stringi")
use_package("jsonlite")
use_package("curl")
use_package("attempt")
use_package("lubridate")

# Clean your description
use_tidy_description()
