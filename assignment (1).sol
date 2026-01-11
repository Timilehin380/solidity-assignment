//SPDX-License-Identifier: MIT
pragma solidity ^0.8.31;

contract Assignment {
uint private number;

function setNumber(uint _newNumber) public {
    number = _newNumber;
}
function getNumber() public view returns (uint) {
    return number;
}





// 2. to do list
struct Todo {
    string task;
    bool completed;
}

Todo[] public todos;
function addTodo(string memory _task) public {
    todos.push(Todo(_task, false));
}
function getTodo(uint _index) public view returns (string memory, bool) {
    Todo storage todo = todos[_index];
    return (todo.task, todo.completed);

}
function completeTodo(uint _index)public {
    todos[_index].completed = true;
}

// 3. struct and mappings

// struct is like a form with many properties or functionalities

struct Student {
    string name;
    uint age;
    Student public Student1 = Student("Timi", 24, "economics");
    
    //mappings is like a list

mapping (uint = string) public StudentNames;

StudentNames[1] = "Timi";
StudentNames[2] = "David";
StudentNames[3] = "Akinbinu"
}
}