const environment = process.env.NODE_ENV || 'development';
const config = require(`./config/webpack.${environment}.js`);

module.exports = config;
