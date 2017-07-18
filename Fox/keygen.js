const crypto = require('crypto');
let key = crypto.createHash('sha1').update('ion').digest('hex').toUpperCase();
console.log(key);
