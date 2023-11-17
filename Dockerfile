FROM quay.io/souravkl11/rgnk-v3:latest

RUN git clone https://github.com/Hnoshmns/raganork-md /railway/Raganork
WORKDIR /railway/Raganork
ENV TZ=Asia/Colombo
RUN yarn install --network-concurrency 1
CMD ["rm -rf node_modules && npm install && node", "index.js"]
