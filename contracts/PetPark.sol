//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;


contract PetPark {
    enum AnimalType{ None, Fish, Cat, Dof, Rabbit, Parrot }

    address owner;
    constructor() {
        owner = msg.sender;
    }

    function add(AnimalType _animalType, uint _age) public view {
        require(msg.sender == owner, "Not an owner");
    }
}