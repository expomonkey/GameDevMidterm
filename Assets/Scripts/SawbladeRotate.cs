﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SawbladeRotate : MonoBehaviour {

	// Update is called once per frame
	void Update () {
        this.transform.Rotate(Vector3.down*300f * Time.deltaTime);//Rotates the sawblade
	}
}
