// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Persons {

    struct Person{
        uint id;
        string name;
        uint age;
    }

    Person[] persons;
 
    function addPerson(string memory _name, uint _age) public {
        Person memory newPerson = Person(persons.length, _name, _age);
        persons.push(newPerson);
    }

    function getPersons() public view returns (Person[] memory) {
        return persons;
    }

    function getPerson (uint _index) public view returns (Person memory){
        Person memory foundPerson = persons[_index];
        return foundPerson;
    }
    
}
