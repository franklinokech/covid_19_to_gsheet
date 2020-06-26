# Attach Google Sheet
library(googlesheets4)
gs4_auth()

covid_data_url = 'https://www.ecdc.europa.eu/sites/default/files/documents/COVID-19-geographic-disbtribution-worldwide-2020-06-26.xlsx'

covid = rio::import(covid_data_url)

my_spread_sheet_url = 'https://docs.google.com/spreadsheets/d/166843I4oQs8_x6NmdnJ06M-j9bj7EBVgqCQqcilng2c/edit#gid=0'
my_spread_sheet = gs4_get(my_spread_sheet_url)
sheet_append(my_spread_sheet, covid, sheet = 1)
print('Data Import Is Successful')