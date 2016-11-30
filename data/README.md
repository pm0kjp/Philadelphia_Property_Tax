# Philadelphia Property Tax Data

The US Census Bureau allows us to look up data at the level of Census tract by state.  Here are some examples:

https://factfinder.census.gov/bkmk/table/1.0/en/ACS/10_5YR/S1101/0400000US42.14000.001
https://factfinder.census.gov/bkmk/table/1.0/en/ACS/10_5YR/DP03/0400000US42.14000.001  Economic Characteristics
https://factfinder.census.gov/bkmk/table/1.0/en/DEC/10_SF1/QTP3/0400000US42.14000.001  Race/Hispanicity


A geojson file can be found at [Philadelphia's Open Data website](https://www.opendataphilly.org/dataset/census-tracts/resource/7f62ef54-6e24-4c94-9542-cd141172580f).  Note that it is invalid geojson as it has a stray character as the first character.  A cleaned version (with the "d" invalid character removed) can be found in this repository.

Philadelphia's Open Data site also has a [large dataset of property tax deliquents]
(https://data.phila.gov/api/views/4v5pqi2q/rows.csv?accessType=DOWNLOAD&bom=true).

