using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MouseLook : MonoBehaviour {
    Vector3 holdingVector;
    GameObject child;
    float verticalLookAngle, clampAngle;
    public float dpi;
    bool carrying, isClicking;

    private void Start()
    {
        setVariables();
    }
    void Update () {
        //
        //PICKING UP CODE
        //

        GameManager.Instance.canPickUp = false;

        //Create the ray
        Ray mouseRay =new Ray(Camera.main.transform.position, Camera.main.transform.forward);
        float maxRayDist =5f;
        Debug.DrawRay(mouseRay.origin, mouseRay.direction * maxRayDist, Color.yellow);
        RaycastHit mouseRayHit = new RaycastHit();

        if (Physics.Raycast(mouseRay, out mouseRayHit, maxRayDist))
        {
            if (Input.GetMouseButtonDown(0))
            {
                
                    if (!isClicking)
                    {

                        if (!carrying)
                        {
                            isClicking = true;
                            GameManager.Instance.canPickUp = true;
                            child = mouseRayHit.rigidbody.gameObject;
                            Rigidbody childRigid = child.GetComponent<Rigidbody>();
                            //Place the child where it needs to be
                            child.transform.parent = this.transform.parent.transform;
                            child.transform.localPosition = new Vector3(0.53f, -0.06999999f, 0.7f);
                            //Stop the child from moving or hitting things
                            childRigid.isKinematic = true;
                            ChildrenMove ChildMoveScript = child.GetComponent<ChildrenMove>();
                           // ChildMoveScript.canMove = false;
                            if (!ChildMoveScript.carried) { ChildMoveScript.carried = true; }
                            carrying = true;
                            //Set the vector to check if you are holding something
                            holdingVector = this.transform.position - child.transform.position;
                            Input.ResetInputAxes();
                        }
                }
            }
        }

        if (child == null) { holdingVector = Vector3.down; }
        if (child != null) { holdingVector = child.transform.position - this.transform.position; }

        //Create the ray
        Ray holdingRay = new Ray(this.transform.position, holdingVector);
        float holdingRayDist = 2f;
        Debug.DrawRay(holdingRay.origin, holdingRay.direction * holdingRayDist, Color.red);

        if (Physics.Raycast(holdingRay, holdingRayDist))
        {
            if (Input.GetMouseButtonDown(0))
            {
                if (!isClicking)
                {
                    if (carrying)//If you are carrying something, click to drop it
                    {
                        isClicking = true;
                        //Give the child autonomy
                        child.transform.parent = null;
                        Rigidbody childRigid = child.GetComponent<Rigidbody>();
                        childRigid.isKinematic = false;
                        child = null;
                        carrying = false;
                       // ChildrenMove ChildMoveScript = child.GetComponent<ChildrenMove>();
                       // ChildMoveScript.canMove = true;
                    }
                }
            }
        }
        if (Input.GetMouseButtonUp(0)) { isClicking = false; }


        //
        //LOOKING CODE
        //

        float mousex = Input.GetAxis("Mouse X")*Time.deltaTime*dpi;
        float mousey = Input.GetAxis("Mouse Y") * Time.deltaTime*dpi;
        transform.parent.Rotate(0f, mousex, 0f);

        //New looking up and down code
        verticalLookAngle -= mousey;
        verticalLookAngle = Mathf.Clamp(verticalLookAngle, -clampAngle, clampAngle);//Doesnt let the look go above or below a certain point

        //correction pass: unroll the camera
        transform.localEulerAngles = new Vector3
            (verticalLookAngle,//Overrideding the x angle with vertica look angle
            transform.localEulerAngles.y, 
            0f);//unrolls the camera


        if (Input.GetKeyDown(KeyCode.Escape))
        {
            Cursor.visible = true;
            Cursor.lockState = CursorLockMode.None;
        }
        if (Input.GetMouseButtonDown(0))
        {
            if (Cursor.lockState ==CursorLockMode.None)
            {
                Cursor.lockState = CursorLockMode.Locked;
            }
        }
    }
    public void setVariables()
    {
        holdingVector = Vector3.down;
        verticalLookAngle = 0f;
        clampAngle = 60f;
        dpi = 200f;
        isClicking = false;
    }
}
