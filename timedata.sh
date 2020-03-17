commit_message="$1"

echo pull remote git 
git fetch upstream
git checkout master
git merge upstream/master

echo remove old json files
rm csse_covid_19_data/csse_covid_19_time_series/time_series_19-covid-Confirmed.json
rm csse_covid_19_data/csse_covid_19_time_series/time_series_19-covid-Deaths.json
rm csse_covid_19_data/csse_covid_19_time_series/time_series_19-covid-Recovered.json

echo make new json files
csvtojson csse_covid_19_data/csse_covid_19_time_series/time_series_19-covid-Confirmed.csv > csse_covid_19_data/csse_covid_19_time_series/time_series_19-covid-Confirmed.json
csvtojson csse_covid_19_data/csse_covid_19_time_series/time_series_19-covid-Deaths.csv > csse_covid_19_data/csse_covid_19_time_series/time_series_19-covid-Deaths.json
csvtojson csse_covid_19_data/csse_covid_19_time_series/time_series_19-covid-Recovered.csv > csse_covid_19_data/csse_covid_19_time_series/time_series_19-covid-Recovered.json


echo add json to git
git add csse_covid_19_data/csse_covid_19_time_series/time_series_19-covid-Confirmed.json
git add csse_covid_19_data/csse_covid_19_time_series/time_series_19-covid-Deaths.json
git add csse_covid_19_data/csse_covid_19_time_series/time_series_19-covid-Recovered.json

git commit -m "$commit_message"
git push