using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChildrenMove : MonoBehaviour { 

   
    int shouldTurn =101;
    float horizontalInput;
    float verticalInput;
    Vector3 inputVector;
    float childMaxSpeed = 0.8f;
    float childMinSpeed = 0.3f;
    bool canMove = true;
    public GameObject moveLocation;
    Rigidbody childBody;
    private void Start()
    {
        childBody = this.GetComponent<Rigidbody>();
    }
    void Update()
    {
        if (shouldTurn>100) {
            ChangeDirection();
    }
        //transform our input values based on this transforms right/forward base directions
        inputVector = transform.right * horizontalInput + transform.forward * verticalInput;

        //normalize the vector
        if (inputVector.magnitude > 1f)
        {
            inputVector = Vector3.Normalize(inputVector);
        }

    }
    void FixedUpdate()
    {
        if (canMove)
        {
            childBody.velocity = inputVector * 10f + Physics.gravity * 0.3f;
            shouldTurn++;
        }
    }
    void ChangeDirection()
    {
        shouldTurn = 0;
        float turnCheck1= Random.Range(-1.0f, 1.0f);
        float turnCheck2 = Random.Range(-1.0f, 1.0f);
        if (turnCheck1 > 0)
        {
            horizontalInput = Random.Range(-childMaxSpeed, -childMinSpeed);
        }
        if (turnCheck1 < 0)
        {
            horizontalInput = Random.Range(childMinSpeed,childMaxSpeed);
        }
        if (turnCheck2 > 0)
        {
            verticalInput = Random.Range(-childMaxSpeed, -childMinSpeed);
        }
        if (turnCheck2 < 0)
        {
            verticalInput = Random.Range(childMinSpeed, childMaxSpeed);
        }
        
    }
    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.name == "Player")
        {
            if (this.canMove)
            {
                GameManager.Instance.numCaught++;

                this.canMove = false;
                //  Vector3 pos = this.transform.position;
                childBody.velocity = new Vector3(0, 0, 0);
                // pos.x = 0;
                //  pos.z = 0;
                //  pos.y = 2.5f + GameManager.Instance.numCaught;
                this.transform.position = moveLocation.transform.position;
               // this.transform.position = pos;
            }
        }
    }
}
