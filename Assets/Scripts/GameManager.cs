using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GameManager : MonoBehaviour {
    public static GameManager Instance;
    public List<Child> children;
    public GameObject childPrefab;
    public int numCaught = 0;
    public Text kidsCaught;
    int counter = 0;
    
    // Use this for initialization
    void Start () {
        Instance = this;
        children = new List<Child>();
    }
	
	// Update is called once per frame
	void Update () {
		while (counter < 9)
        {
            Child c = new Child();
            c.number = counter;
            c.yCoords = 1.1f;
            c.xCoords = 2f * counter;
            c.zCoords = 2f * counter;
            c.childVisual = (GameObject)Instantiate(childPrefab);
            c.childVisual.transform.position = new Vector3(c.xCoords, c.yCoords, c.zCoords);
            counter++;
            children.Add(c);
        }
        kidsCaught.text = "Kids Caught: " + numCaught;
	}
}
