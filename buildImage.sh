rm -rf dist/
mkdir -p dist/

cd server
./gradlew build

cd ../
tar -xf server/build/distributions/swim-transit-3.11.0.tar -C dist/

cd ui
npm install
npm run compile && npm run bundle
mkdir -p ../dist/swim-transit-3.11.0/ui
cp -rf index.html dist ../dist/swim-transit-3.11.0/ui

cd ../

docker build ./ -f ./java.Dockerfile -t swimdatafabric/transit:1.0
