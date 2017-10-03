using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Child : MonoBehaviour {
   // public float horizontalMove, verticalMove;
    public float xCoords, yCoords, zCoords;
    public GameObject childVisual;
    public int number;


    int shouldTurn = 101;
    float horizontalInput;
    float verticalInput;
    Vector3 inputVector;

    public Child() { }

    /*void Update()
    {
        if (shouldTurn > 100)
        {
            ChangeDirection();
        }
        inputVector = transform.right * horizontalInput + transform.forward * verticalInput;
        if (inputVector.magnitude > 1f)
        {
            inputVector = Vector3.Normalize(inputVector);
        }

    }
    void FixedUpdate()
    {
        GetComponent<Rigidbody>().velocity = inputVector * 10f + Physics.gravity * 0.3f;
        shouldTurn++;
    }
    void ChangeDirection()
    {
        Debug.Log("TURN");
        shouldTurn = 0;
        float turnCheck1 = Random.Range(-1.0f, 1.0f);
        float turnCheck2 = Random.Range(-1.0f, 1.0f);
        if (turnCheck1 > 0)
        {
            horizontalInput = Random.Range(-1.0f, -0.5f);
        }
        if (turnCheck1 < 0)
        {
            horizontalInput = Random.Range(0.5f, 1.0f);
        }
        if (turnCheck2 > 0)
        {
            verticalInput = Random.Range(-1.0f, -0.5f);
        }
        if (turnCheck2 < 0)
        {
            verticalInput = Random.Range(0.5f, 1.0f);
        }

    }*/
}

