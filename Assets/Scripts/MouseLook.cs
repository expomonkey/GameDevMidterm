using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MouseLook : MonoBehaviour {
    float verticalLookAngle = 0f;
    public float dpi = 200f;
	// Update is called once per frame
	void Update () {
        float mousex = Input.GetAxis("Mouse X")*Time.deltaTime*dpi;
        float mousey = Input.GetAxis("Mouse Y") * Time.deltaTime*dpi;
        //transform.Rotate(-mousey, mousex, 0f);
        transform.parent.Rotate(0f, mousex, 0f);

        //New looking up and down code
        verticalLookAngle -= mousey;
        verticalLookAngle = Mathf.Clamp(verticalLookAngle, -70f, 70f);//Doesnt let the look go above or below a certain point

        //correction pass: unroll the camera
        //transform.localEulerAngles.z = 0f;
        transform.localEulerAngles = new Vector3
            (verticalLookAngle,//Overrideding the x angle with vertica look angle
            transform.localEulerAngles.y, 
            0f);//unrolls the camera


        //Hide the mouse for IMMERSION
        if (Input.GetMouseButtonDown(0))//Did they left click thier mouse 0 is left, 1 is right, 2 is middle
        {
            //Cursor.visible = false;//hides mouse cursor
            Cursor.lockState = CursorLockMode.Locked;//Locks it in center of screen
        }
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            Cursor.visible = true;
            Cursor.lockState = CursorLockMode.None;
        }
    }
}
