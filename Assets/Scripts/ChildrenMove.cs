using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChildrenMove : MonoBehaviour { 
 
    int shouldTurn=50;
    float horizontalInput;
    float verticalInput;
    Vector3 inputVector;
    float childMaxSpeed = 0.8f;
    float childMinSpeed = 0.3f;
    public bool canMove = true;
    public bool carried;
    Rigidbody childBody;
    public Material[] materials;
     Renderer rend;
    private void Start()
    {
        childBody = this.GetComponent<Rigidbody>();
        rend = GetComponent<Renderer>();
        rend.enabled = true;
        rend.sharedMaterial = materials[1];
    }
    void Update()
    {
        if (shouldTurn>Random.Range(60,100)) {//Changes the direction of the child every 60-100 frames
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
            RaycastHit hitThing = new RaycastHit();
            if (Physics.Raycast(this.transform.position, this.inputVector, out hitThing, 2))//checks to see if the child
            {                                                                               // is about to hit something
                if (hitThing.transform.gameObject.tag != "Death Cube") { 
                inputVector *= -1;//If it is about to hit something that wont kill it, turn it around
            }
            }
            childBody.velocity = inputVector * 10f + Physics.gravity * 0.3f;
            shouldTurn++;
        }
    }
    void ChangeDirection()//Changes its direction
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
    public void OnCollisionEnter(Collision collision)
    {
        if(collision.gameObject.tag=="Win Platform")//If it is in the cabin
        {
            if (rend.sharedMaterial != materials[0])
            {
                GameManager.Instance.numCaught++;
                rend.sharedMaterial = materials[2];
            }
        }
        if (collision.gameObject.tag == "Death Cube")//If it hits a death cube, turn it red and dont let it move
        {
            if (rend.sharedMaterial == materials[1]) {
                canMove = false;
            GameManager.Instance.numDead++;
            rend.sharedMaterial = materials[0];
        }
        }
    }
    public void OnCollisionExit(Collision collision)
    {
        if (collision.gameObject.tag == "Win Platform")//If it gets picked up from the cabin
        {
            if (rend.sharedMaterial != materials[0])
            {
                GameManager.Instance.numCaught--;
            }
           
        }
    }


}
