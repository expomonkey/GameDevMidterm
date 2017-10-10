using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MouseRaycast : MonoBehaviour {

    public Transform sphere;
	// Update is called once per frame
	void Update () {
        Ray mouseRay = Camera.main.ScreenPointToRay(Input.mousePosition);

        float maxRayDist = 100f;

        Debug.DrawRay(mouseRay.origin, mouseRay.direction * maxRayDist, Color.yellow);

        //Need to know what it hit, not t or f

        RaycastHit mouseRayHit = new RaycastHit();//empty, to be filled later

        if(Physics.Raycast(mouseRay, out mouseRayHit, maxRayDist))
        {
            Debug.Log("Cursor is hovering over a collider");
            sphere.position = mouseRayHit.point;//move spehere to where raycast hit

            
        }

        if (Input.GetMouseButton(0))
        {
            Instantiate(sphere, mouseRayHit.point, Quaternion.Euler(0f, 0f, 0f));
        }
    }
}
