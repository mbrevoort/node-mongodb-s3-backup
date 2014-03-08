var config = {
  mongodb: {
    host: process.env.MONGODB_HOST || "localhost",
    port: process.env.MONGODB_PORT || 27017,
    username: process.env.MONGODB_USERNAME || false,
    password: process.env.MONGODB_PASSWORD || false,
    db: process.env.MONGODB_DATABASE
  },
  s3: {
    key: process.env.S3_KEY,
    secret: process.env.S3_SECRET,
    bucket: process.env.S3_BUCKET,
    destination:  process.env.S3_PATH || "/"
  },
  cron: {
    crontab: process.env.CRONTAB || "0 0 * * *"
  }
}

if (!config.mongodb.db)  throw new Error('config mongodb.db required');
if (!config.s3.key)      throw new Error('config s3.key required');
if (!config.s3.secret)   throw new Error('config s3.secret required');
if (!config.s3.bucket)   throw new Error('config s3.bucket required');

module.exports = config;
