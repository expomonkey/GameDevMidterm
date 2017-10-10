using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MouseLook : MonoBehaviour {
    float verticalLookAngle = 0f;
    public float dpi = 200f;
    bool carrying;
    Vector3 holdingVector;
    GameObject child;
    float clampAngle = 60f;
   // Camera camera;
    // Update is called once per frame
    private void Start()
    {
        holdingVector =  Vector3.down;
    }
    void Update () {
        GameManager.Instance.canPickUp = false;
        Ray mouseRay = Camera.main.ScreenPointToRay(Input.mousePosition);

        float maxRayDist =5f;

        Debug.DrawRay(mouseRay.origin, mouseRay.direction * maxRayDist, Color.yellow);
        RaycastHit mouseRayHit = new RaycastHit();//empty, to be filled later

        if (Physics.Raycast(mouseRay, out mouseRayHit, maxRayDist))
        {
            if (Input.GetMouseButtonDown(0))
            {
                if (!carrying)
                {
                    GameManager.Instance.canPickUp = true;
                    child = mouseRayHit.rigidbody.gameObject;
                    child.transform.parent = this.transform.parent.transform;
                    child.transform.localPosition = new Vector3(0.53f, -0.06999999f, 0.7f);
                    Rigidbody childRigid = child.GetComponent<Rigidbody>();
                    childRigid.isKinematic = true;
                    ChildrenMove ChildMoveScript = child.GetComponent<ChildrenMove>();
                    ChildMoveScript.canMove = false;
                    if (!ChildMoveScript.carried)
                    {
                        ChildMoveScript.carried = true;
                    }
                    carrying = true;
                    holdingVector = this.transform.position - child.transform.position;
                    Input.ResetInputAxes();
                }
            }
        }
        if (child != null)
        {
            holdingVector = child.transform.position- this.transform.position;
        }
        Ray holdingRay = new Ray(this.transform.position, holdingVector);
        float holdingRayDist = 1.5f;
        Debug.DrawRay(holdingRay.origin, holdingRay.direction * holdingRayDist, Color.green);
        if (Physics.Raycast(holdingRay, holdingRayDist))
        {
            if (Input.GetMouseButtonDown(0))
            {
                if (carrying)
                {
                    child.transform.parent = null;
                    Rigidbody childRigid = child.GetComponent<Rigidbody>();
                    childRigid.isKinematic = false;
                    ChildrenMove ChildMoveScript = child.GetComponent<ChildrenMove>();
                    child = null;
                    carrying = false;
                }
            }
        }
        






        float mousex = Input.GetAxis("Mouse X")*Time.deltaTime*dpi;
        float mousey = Input.GetAxis("Mouse Y") * Time.deltaTime*dpi;
        //transform.Rotate(-mousey, mousex, 0f);
        transform.parent.Rotate(0f, mousex, 0f);

        //New looking up and down code
        verticalLookAngle -= mousey;
        verticalLookAngle = Mathf.Clamp(verticalLookAngle, -clampAngle, clampAngle);//Doesnt let the look go above or below a certain point

        //correction pass: unroll the camera
        //transform.localEulerAngles.z = 0f;
        transform.localEulerAngles = new Vector3
            (verticalLookAngle,//Overrideding the x angle with vertica look angle
            transform.localEulerAngles.y, 
            0f);//unrolls the camera


        if (Input.GetKeyDown(KeyCode.Escape))
        {
            Cursor.visible = true;
            Cursor.lockState = CursorLockMode.None;
        }
    }
}
