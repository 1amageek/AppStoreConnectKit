

create-api generate openjson --config-option module=API --output API
cp -r ./API/Sources ./Sources/AppStoreConnectKit/API
rm -rf ./Sources/AppStoreConnectKit/API/Sources
find . -type f -exec sed -i 's/API//g' {} \;
find . -type f -exec sed -i 's/import NaiveDate//g' {} \;
find . -type f -exec sed -i 's/import Get//g' {} \;
find . -type f -exec sed -i 's/NaiveDate/Date/g' {} \;
