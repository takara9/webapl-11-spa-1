FROM node:14.16.1-alpine3.12

ADD vite_app2  /app

RUN addgroup -S app && adduser -S app -G app
RUN chown -R app:app /app
WORKDIR /app
USER app:app

RUN npm install
#RUN npm run build

CMD ["npm", "run", "dev"]