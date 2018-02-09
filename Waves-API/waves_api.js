// var https = require('https');
// var array = new Array();
// /**
//  * HOW TO Make an HTTP Call - GET
//  */
// // options for GET
// for(var i= 845644; i<845741;i++){
    
// var optionsget = {
//     host : 'nodes.wavesnodes.com', // here only the domain name
//     // (no http/https !)
//     port : 443,
//     //path : '/blocks/address/3P2HNUd5VUPLMQkJmctTPEeeHumiPN2GkTb/500000/500050',
//     //path : '/blocks/last',845741846112
//     path : '/blocks/seq/845643/'+i,
//     method : 'GET' // do GET
// };
 
// console.info('Options prepared:');
// console.info(optionsget);
// console.info('Do the GET call');
 
// // do the GET request
// var reqGet = https.request(optionsget, function(res) {
//     console.log("statusCode: ", res.statusCode);
//     // uncomment it for header details
// //  console.log("headers: ", res.headers);
 
 
//     res.on('data', function(d) {
//         //array = d;
//         console.info('GET result:\n');
//         process.stdout.write(d.height);
//         console.info('\n\nCall completed');
//     });
 
// });
 
// reqGet.end();
// reqGet.on('error', function(e) {
//     console.error(e);
// });
// }

var rp = require('request-promise');
var fs = require('fs');
//var arr1 = new Array();

var stream = fs.createWriteStream("/Users/ayoubessourni/Documents/Waves_Forging_Algo/test.txt", {flags:'w+'});
//var stream = fs.createWriteStream("/Users/ayoubessourni/Documents/Waves_Forging_Algo/from.txt", {flags:'w+'});

function getBlocks(i, j){
    

var options = {
    method: 'GET',
    //uri: 'https://nodes.wavesnodes.com:443/blocks/seq/845643/845670', 
    //uri: 'https://nodes.wavesnodes.com:443/blocks/seq/'+i+'/'+j,
    uri: 'https://nodes.wavesnodes.com:443/blocks/headers/seq/'+i+'/'+j,
    
    headers: {
        'User-Agent': 'Request-Promise'
    }
    //json: true // Automatically parses the JSON string in the response
};

rp(options)
    .then(function (repos) {
        //var arr1 = new Array();
        

        for(var i = 0; i<JSON.parse(repos).length; i++){
            
            //arr1.push('\n'+JSON.parse(repos)[i].signature);
            stream.write(JSON.parse(repos)[i].signature+'\n');
        
        }
        //stream.write(arr1+',');       
   
})
    .catch(function (err) {
        
    });

}

//for(i=697917;i<846021;i=i+99){ 
for(i=861354  ;i<869395;i=i+100){    

getBlocks(i,i+99);
}



