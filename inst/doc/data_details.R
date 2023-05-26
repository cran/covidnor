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
case_hosp[1:6,]

## -----------------------------------------------------------------------------
totaldata[date == '2021-12-10' & location_code %in% c('county_nor03', 'county_nor15'), 
          .(date, location_name, 
            cases = cases_by_testdate_n, 
            vax_1 = vax_dose_1_by_vaxdate_n, 
            vaxcum1 = vax_dose_1_by_vaxdate_sum0_999999_n)]

## -----------------------------------------------------------------------------
totaldata[calyearmonth == '2022-M04' & location_code == 'county_nor03', 
          .(date, location_name, 
            cases = cases_by_testdate_n)]

