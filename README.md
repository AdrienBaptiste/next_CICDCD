Install dependencies and build the app for production
```
npm install
npm run build
npm run start
```

Build the image and run as container
```
docker build -t next_cicdcd .
docker run --name next_cicdcd_container -p 3000:3000 next_cicdcd
```