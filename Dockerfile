# Node Base Image
FROM node:12.2.0-alpine



#Working Directry
WORKDIR /node



#Copy the Code
COPY . .



#Install the dependecies
RUN npm install

EXPOSE 9000



#Run the code
CMD ["node","app.js"]
