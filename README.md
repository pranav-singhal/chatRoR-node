# chatRoR-node
a chat app running on both rails and node
simply go to MyChatApp/app/views/chats/index.html.erb 
under the script written right below the <title>Hello Chat </title>, change "http://10.114.4.239:3002/socket.io/socket.io.js"
to "http://<you local ip>:3002/socket.io/socket.io.js"
also change "http://10.114.4.239:3002/?username=" to "http://<your local ip>:3002/?username=".
if you plan to run it on just your machine, instead of <your local ip> simply write "localhost"

then run the rails s -b 0.0.0.0 in the MyChatApp folder
and node app.js 0.0.0.0 in the chat folder




enjoy!!!
