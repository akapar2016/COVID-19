let csvToJson = require('convert-csv-to-json');
 
let confirmCsv = 'csse_covid_19_data/csse_covid_19_time_series/time_series_19-covid-Confirmed.csv'; 
let confirmJson = 'csse_covid_19_data/csse_covid_19_time_series/time_series_19-covid-Confirmed.json';

let deadCsv = 'csse_covid_19_data/csse_covid_19_time_series/time_series_19-covid-Deaths.csv'; 
let deadJson = 'csse_covid_19_data/csse_covid_19_time_series/time_series_19-covid-Deaths.json';

let recoverCsv = 'csse_covid_19_data/csse_covid_19_time_series/time_series_19-covid-Recovered.csv'; 
let recoverJson = 'csse_covid_19_data/csse_covid_19_time_series/time_series_19-covid-Recovered.json';
 
csvToJson.generateJsonFileFromCsv(confirmCsv,confirmJson);
csvToJson.generateJsonFileFromCsv(deadCsv,deadJson);
csvToJson.generateJsonFileFromCsv(recoverCsv,recoverJson);