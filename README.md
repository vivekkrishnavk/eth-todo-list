# eth-todo-list
Truffle based Todo List app that uses truffle based smart contracts written in solidity to create &amp; complete todo list items

To Run the app

1. Run Ganache at localhost:7545
2. clone the project 
3. cd eth-todo-list/
4. run npm install
5. run truffle compile
6. run truffle migrate --reset
7. Open the eth-todo-list/build/contracts/TodoList.json file
8. Scroll down to the bottom of the file and file the `address` key and copy the address value. 
9. The frontend of this DApp is build with react, it is in a separate repo -> https://github.com/vivekkrishnavk/todolist
10. Follow the instructions in the react app repo to build and deploy the frontend app
