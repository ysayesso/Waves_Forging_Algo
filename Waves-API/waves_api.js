
// Hashing LPoS Algorithm.

// Ayoub Essourni _ Master of Informatics _ Ruhr West - University of Applied Sciences - Mülheim an der Ruhr - Germany 
// Youssef Namil _ Master of Informatics _ Ruhr West - University of Applied Sciences - Mülheim an der Ruhr - Germany 

// Supervied by: Mr. Prof. Dr. Marc Jansen

// Email: ayoub.essourni@stud.hs-ruhrwest.de
//        youssef.namil@stud.hs-ruhrwest.de



var rp = require('request-promise');
var fs = require('fs');

var stream = fs.createWriteStream("/Waves_Forging_Algo/Past30DaysSignature.txt", {flags:'w+'});

function getBlocks(i, j){
    

var options = {
    method: 'GET',
    uri: 'https://nodes.wavesnodes.com:443/blocks/headers/seq/'+i+'/'+j,
    
    headers: {
        'User-Agent': 'Request-Promise'
    }
};

rp(options)
    .then(function (repos) {
        for(var i = 0; i<JSON.parse(repos).length; i++){
            stream.write(JSON.parse(repos)[i].signature+','+JSON.parse(repos)[i].timestamp+'\n');
        }
    })
    .catch(function (err) {
        //console.log(err);
    });

}


for(i=846884 ;i<888357;i=i+100){ 
    getBlocks(i,i+99);
}



