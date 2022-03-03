pragma solidity 0.6.0;

contract AttendanceRegister {

    struct Student{
        string name;
        uint class;
        uint joiningDate;
    }

    address public teacher;
    uint rollNumber;

    event Added(string name, uint class, uint time);

    mapping(uint => Student) public register;

    modifier isTeacher {
        require(msg.sender == teacher,"Only teacher can add student");
        _;
    }
    constructor() public{
        teacher = msg.sender;
        rollNumber = 0;
    }
    function add(string memory name, uint class, uint joiningDate) public isTeacher{
        require(class > 0 && class <= 12, "Invalid class");
        Student memory s = Student(name, class, joiningDate);
        rollNumber++;
        register[rollNumber] = s;
        emit Added(name, class, now);
    }
}