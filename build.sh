npx @rose-pine/build -f hex -t rose-pine.css -o ./temp

mkdir -p rose-pine rose-pine-moon rose-pine-dawn
cp -r ./template/. rose-pine/.
cp -r ./template/. rose-pine-moon/.
cp -r ./template/. rose-pine-dawn/.

mv ./temp/rose-pine.css ./rose-pine/rose-pine.css
mv ./temp/rose-pine-moon.css ./rose-pine-moon/rose-pine.css
mv ./temp/rose-pine-dawn.css ./rose-pine-dawn/rose-pine.css
npx del-cli ./temp

npx @rose-pine/build -f hex -t manifest.json -o ./temp

mv ./temp/rose-pine.json ./rose-pine/manifest.json
mv ./temp/rose-pine-moon.json ./rose-pine-moon/manifest.json
mv ./temp/rose-pine-dawn.json ./rose-pine-dawn/manifest.json
npx del-cli ./temp
