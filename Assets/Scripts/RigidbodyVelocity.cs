using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RigidbodyVelocity : MonoBehaviour {
    Vector3 inputVector;//Take input from update and send it to fixed update
    Rigidbody myRigidbody;
    Vector3 jump;
    public float jumpForce, jumpForceStart, jumpTimer, jumpTimerStart;
    public bool isGrounded;

    private void Start()
    {
        setVariables();
    }
    void Update () {      
            if (Input.GetKeyDown(KeyCode.Space) && isGrounded)
            {
            isGrounded = false;
            Jump();
           }
       jumpForce= Mathf.Lerp(jumpForce, 0, Time.deltaTime*3);//Lerps the force value down to zero

        float horizontalInput = Input.GetAxis("Horizontal");
        float verticalInput = Input.GetAxis("Vertical");
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
        if (Physics.Raycast(transform.position, inputVector, 10)) {
        }
        
    myRigidbody.velocity= (inputVector * 20f+Physics.gravity*0.75f+jumpForce*Vector3.up);//Jump force is zero unless the player presses space
    }

   void OnCollisionEnter(Collision collision)
    {

        if (collision.gameObject.tag == "Ground")
        {
            isGrounded = true;
        }
    }
    private void OnCollisionLeave()
    {
        isGrounded = false;
    }
    void Jump()
    {
        isGrounded = false;
        jumpForce = 20f;
    }
    public void setVariables()//Sets the variables to thier starting values. This is here purely for asthetic reasons
    {
        myRigidbody = GetComponent<Rigidbody>();
        jump = new Vector3(0.0f, 1f, 0.0f);
        jumpTimerStart = .05f;
        jumpForceStart = 25f;
       jumpForce = 0f;
        isGrounded = true;
    }
}
