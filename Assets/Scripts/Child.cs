using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Child : MonoBehaviour {
   // public float horizontalMove, verticalMove;
    public float xCoords, yCoords, zCoords;//Coords for the child
    public GameObject childVisual;//Prefab that represents the child object
    public int number;


    int shouldTurn = 101;//Interval at which the child will change direction
    float horizontalInput;//Controls where the child will move, input is determined by rng
    float verticalInput;
    Vector3 inputVector;

    public Child() { }

   
}

