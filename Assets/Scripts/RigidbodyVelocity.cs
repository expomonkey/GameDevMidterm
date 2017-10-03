using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RigidbodyVelocity : MonoBehaviour {
    Vector3 inputVector;//Take input from update and send it to fixed update
    Rigidbody myRigidbody;
    public Vector3 jump;
    public float jumpForce = 1000.0f;
    public bool isGrounded;
    private void Start()
    {
        myRigidbody = GetComponent<Rigidbody>();
        jump = new Vector3(0.0f, 50.0f, 0.0f);
    }
    void Update () {
     
            if (Input.GetKeyDown(KeyCode.Space) && isGrounded)
            {

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
        // if (inputVector.magnitude > 0.001f)
        //{
        myRigidbody.velocity = inputVector * 20f+Physics.gravity*0.3f;
        //}
    }

    void OnCollisionStay()
    {

        isGrounded = true;
    }
    void Jump()
    {
        myRigidbody.AddForce(Vector3.up * jumpForce);
        Debug.Log("Trying to jump");
        myRigidbody.velocity+=(Vector3.up * jumpForce);
    }
}
