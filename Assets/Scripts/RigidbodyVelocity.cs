using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RigidbodyVelocity : MonoBehaviour {
    Vector3 inputVector;//Take input from update and send it to fixed update
    Rigidbody myRigidbody;
    Vector3 jump;
    public float jumpForce = 2.0f;
    public bool isGrounded;
    private void Start()
    {
        myRigidbody = GetComponent<Rigidbody>();
        jump = new Vector3(0.0f, 4f, 0.0f);
    }
    void Update () {
     
            if (Input.GetKeyDown(KeyCode.Space) && isGrounded)
            {
            //Make sure the player is grounded before they can jump again
            Jump();
                isGrounded = false;
            }
       


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
    myRigidbody.velocity = inputVector * 20f+Physics.gravity*0.3f;
    }

    void OnCollisionStay()
    {

        isGrounded = true;
    }
    void Jump()
    {
       // myRigidbody.AddForce(jump * jumpForce, ForceMode.Impulse);
        // myRigidbody.AddForce(Vector3.up * jumpForce);
        Debug.Log("Trying to jump");
       // myRigidbody.velocity+=(Vector3.up * jumpForce);
    }
}
