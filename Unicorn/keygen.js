const crypto = require('crypto');
let hash = crypto.createHash('md5').update('ion+unicorn').digest('hex');
let upper = hash.toUpperCase();
let key = upper.substring(0, 20);
console.log(key);
