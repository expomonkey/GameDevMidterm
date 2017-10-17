using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GameManager : MonoBehaviour {
    public static GameManager Instance;
    public List<Child> children;
    public GameObject childPrefab;
    public Text kidsCaught, kidsKilled, kidsRunning, win, lose;
    public int numCaught, numDead, maxKids, counter, xCounter, zCounter;
    public bool canPickUp = false, canWin=true;
    // Use this for initialization
    void Start ()
    {
        Instance = this;
        children = new List<Child>();
        Init();
        setVariables();
    }
	void Init()
    {
        numCaught = 0;
        counter = 0;
        while (counter < 10)
        {
            zCounter = counter;
            //Create the new child
            Child c = new Child();
            c.number = counter;         
            //Calculate the x and z coords
            if (counter >= 5) { zCounter -= 5; }
            if (counter % 5 == 0) { xCounter += 3; }  
            //Set the x y and z coords
            c.xCoords = 16f+xCounter;
            c.yCoords = 1.176397f;
            c.zCoords = 2f*zCounter-20;
            //Instantiate the child prefab and place it
            c.childVisual = (GameObject)Instantiate(childPrefab);
            c.childVisual.transform.position = new Vector3(c.xCoords, c.yCoords, c.zCoords);
            counter++;
            //Add the child to the list
            children.Add(c);
        }
    }
	// Update is called once per frame
	void Update () {
        kidsCaught.text = "Kids Caught: " + numCaught;
        kidsRunning.text = "Kids Running: " + (maxKids - numCaught - numDead);

        if (numDead > 0) { kidsKilled.text = "Kids You Let Die: " + numDead; }
        if (numDead > 4)
        {
            canWin = false;
            lose.text = "YOU LOSE!";
        }
       
        if (numCaught >= (maxKids/2))
        {
            if (canWin)
            {
                kidsCaught.text = "You caught enough kids!";
                win.text = "YOU WIN!";
            }
        }
	}

    public void setVariables()
    {
        maxKids = 10;
        numCaught = 0;
        numDead = 0;
        maxKids = 10;
        counter = 0;
        xCounter = 4;
        zCounter = 0;
    }
}
