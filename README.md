A fork of https://github.com/theycallmeswift/node-mongodb-s3-backup

That project wrapped in a docker image published as mbrevoort/node-mongodb-s3-backup.

Run the container like this

```
docker run -e MONGODB_HOST=<YOUR-MONGO_HOST> \
           -e MONGODB_DATABASE=<YOUR-MONGO-DATABASE> \
           -e S3_KEY=<YOUR-S3-KEY> \
           -e S3_SECRET=<YOUR-S3-SECRET> \
           -e S3_BUCKET=<YOUR-S3-BUCKET> \
           -e S3_PATH="<YOUR-S3-PATH>" \
           -e CRONTAB="0 */4 * * *"  \
           -d mbrevoort/node-mongodb-s3-backup

```
