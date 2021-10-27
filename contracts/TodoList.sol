pragma solidity ^0.5.0;

 // this contract is there to keep track of the number of tasks in the TodoList
contract TodoList {

    // this function will run only once when the contract is created and deployed in the blockchain
    constructor() public {
        createTask("This is the first task");
    }
    
    // taskCount is a state variable that keeps track of the number of items in the TodoList
    // taskCount is a special variable that uses the blockchain for storage
    // scope of this variable is the entire contract
    // 0 is the default value
    uint public taskCount = 0;

    // this will serve as our Task variable to track tasks
    struct Task {
        uint id;
        string content;
        bool completed;
    }

    event TaskCreated(
        uint id,
        string content,
        bool completed
    );

    event TaskCompleted(
        uint id,
        bool completed
    );


    // we're creating a tasks state variable which will use 
    // id as the key and the actual Task as the value
    // we're also naming it tasks
    mapping(uint => Task) public tasks;

    // this function is used to create new tasks
    // args - take the content as input and persist it in the memory 
    // then increment the task count by 1 and then create a new task with the provided content
    function createTask(string memory _content) public {
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false);
        emit TaskCreated(taskCount, _content, false);
    }

    // this function is used to complete a task 
    // check mark on the task triggers this function
    // args - takes the task id as input and 
    // it flips the boolean completed variable of that particular task
    function toggleCompleted(uint _id) public {
        Task memory _task = tasks[_id];
        _task.completed = !_task.completed;
        tasks[_id] = _task;
        emit TaskCompleted(_id, _task.completed);
    }
}