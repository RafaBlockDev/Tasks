// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

// Nombre del contrato
contract TaskContract {
    // Arra: Lista de tareas: Declaraciones de variables
    uint taskCounter = 0; //Variable que empezara en 0

    struct Task { // Conjunto de tipo de datos.
        uint256 id; 
        string title; //Titulo de la tarea
        string description; // Descripcion de la tarea
        bool done; // Creacion por defecto
        uint256 createdAt; // Timestamp
    }

    mapping (uint256 => Task) public tasks;/* le damos un nombre a este mapping */ 
    // Con la flecha apunta a un objeto que tenga ciertas especificaciones
    // Mapping: Conjunto de datos que contienen cualquier tipo de valor,
    // ya sea numeros o nombres. For Eg.
    /*  dato : valor
        0: {},
        1: {},
        2: {},
        3: {},
    */
    function createTask(string memory _title, string memory _description) public {
        //¿Como accedo a la funcion? R= con el "public" o "view" pero este segundo no ejecuta, solo se es visible
        tasks[taskCounter] = Task(taskCounter, _title, _description, false, block.timestamp); // Pasando las variables
        taskCounter++;
    }
    // function toggleDone() {}

}