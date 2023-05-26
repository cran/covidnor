## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
# load total data (419k rows)
totaldata <- covidnor::total_b2020

# get weekly cases (confirmed) and hospitalisation for Norway
case_hosp <- totaldata[granularity_time == 'isoyearweek' &
                     granularity_geo == 'nation',
                   .(date, 
                     location_name, 
                     cases = cases_by_testdate_n, 
                     hospital_adm = hospital_admissions_main_cause_n)]
case_hosp

