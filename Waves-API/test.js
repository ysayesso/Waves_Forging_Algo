var Promise = require('promise');
var rp = require('request-promise');
var fs = require('fs');



var stream = fs.createWriteStream("/Users/ayoubessourni/Documents/Waves_Forging_Algo/signatures.txt", {flags:'w+'});

[...Array(400000)].forEach( function (item,index) {
    stream.write(index + "\n");


stream.end();





var promise = new Promise(function (resolve, reject) {
 get('http://www.google.com', function (err, res) {
   if (err) reject(err);
   else resolve(res);
 });
});