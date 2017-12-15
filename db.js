var mongoose = require('mongoose');
mongoose.connect(process.env.DB_URL, { useMongoClient: true }, function(port) {
    console.log('Database connnected successfully');
});