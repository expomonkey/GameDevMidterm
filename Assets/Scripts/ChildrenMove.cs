using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChildrenMove : MonoBehaviour {
    public Material[] materials;
    Rigidbody childBody;
    Renderer rend;
    Vector3 inputVector;
    int shouldTurn;
    float horizontalInput, verticalInput;
    float childMaxSpeed, childMinSpeed;
    public bool canMove, carried;
   public  AudioSource audioSource;
   public  AudioClip[] childSounds=new AudioClip[2];
    private void Start()
    {
       // audioSource = this.GetComponent<AudioSource>();
        setVariables();        
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
        if(collision.gameObject.name=="Win Platform")//If it is in the cabin
        {
            if (rend.sharedMaterial != materials[0])//MAke sure it isnt dead
            {
                audioSource.clip = childSounds[1];//Play good sound
                audioSource.Play();
                this.canMove = false;//Not allow it to move
                GameManager.Instance.numCaught++;//Increase number caught
                rend.sharedMaterial = materials[2];//Turn it green
            }
        }
        if (collision.gameObject.tag == "Death Cube")//If it hits a death cube, turn it red and dont let it move
        {
            if (rend.sharedMaterial == materials[1]) {
                audioSource.clip = childSounds[0];//Play death sound
                audioSource.Play();
                canMove = false;
            GameManager.Instance.numDead++;
            rend.sharedMaterial = materials[0];
        }
        }
    }
    public void OnCollisionExit(Collision collision)
    {
        if (collision.gameObject.name == "Win Platform")//If it gets picked up from the cabin
        {
            if (rend.sharedMaterial != materials[0])//If it isnt dead
            {              
                GameManager.Instance.numCaught--;//subtract 1 from amount caught
                rend.sharedMaterial = materials[1];//Turn it back to its orignal color
                canMove = true;//Allow it to move
            }
           
        }
    }

    public void setVariables()//Sets the variables to thier starting values. This is here purely for asthetic reasons
    {
        childBody = this.GetComponent<Rigidbody>();
        rend = GetComponent<Renderer>();
        rend.enabled = true;
        shouldTurn = 50;
        childMaxSpeed = 0.8f;
        childMinSpeed = 0.3f;
        canMove = true;
    }


    }
