const log4js = require('log4js');
/**
 * 日志配置
 */
log4js.configure({
    appenders: {
        console: {
            type: 'console',
            layout: {
                type: 'pattern',
                // 日志格式
                pattern: '[%d{yyyy-MM-dd hh:mm:ss.SSS}] [%[%5.5p%]] %c - %m%n'
            }
        },
        everything: {
            type: 'dateFile',
            filename: 'logs/app-access.log',
            pattern: '.yyyy-MM-dd-hh',
            compress: true,
            layout: {
                type: 'pattern',
                pattern: '[hostName:%h] [%d{yyyy-MM-dd hh:mm:ss.SSS}] [%p] [%c] - %m'
            }
        }
    },
    categories: {
        default: {
            appenders: ['console', 'everything'],
            level: 'debug'
        }
    }
});

module.exports = log4js;