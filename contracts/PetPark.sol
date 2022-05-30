//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;


contract PetPark {
    enum AnimalType{ None, Fish, Cat, Dof, Rabbit, Parrot }
    enum Gender{ Male, Female }

    event Added(AnimalType animalType, uint _age);

    address owner;
    constructor() {
        owner = msg.sender;
    }

    function add(AnimalType _animalType, uint _age) public {
        require(msg.sender == owner, "Not an owner");
        require(_animalType != AnimalType.None, "Invalid animal");


        emit Added(_animalType, _age);
    }

    function borrow(uint _age, Gender _gender, AnimalType _animalType) public pure {
        require(_age != 0, "Invalid Age");
    }
}