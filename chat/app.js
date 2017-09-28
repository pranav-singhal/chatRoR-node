var app = require('express')();
var http = require('http').Server(app);
var io = require('socket.io')(http);
var Client = require('node-rest-client').Client;



// app.get('/', function(req,res){
//     res.sendFile(__dirname+"/index.html")
// });

io.use(function(socket,next){

    console.log(socket.handshake);

    console.log("middle ware calleds");

    // db call

    // socket << userdetails
    socket.username = socket.handshake.query.username;


    // var userInt = parseInt(socket.username);
    // console.log(userInt);
    // if(userInt > 500){
    //
    //     console.log("disconnect user");
    //     socket.disconnect();
    // }


    next();
});

io.on('connection', function(socket){
   console.log("a connection was made");


   socket.on('message', function (data) {
     console.log(data);
     var client = new Client();
     var args={
       data:{message: data.message,
            username: socket.username},
        headers:{"Content-Type": "application/json" }
     }
     client.post("http://localhost:3000/chat",args, function(data,response){
      //  console.log(data);
      //  console.log(response);
     });
        console.log(data);
        var new_message = { username: socket.username, message: data.message};
        io.emit('message', new_message);

   });
});


http.listen(3002,process.argv[2]);
console.log("m here");
console.log(process.argv[2]);
