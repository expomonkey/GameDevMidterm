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
    public int numDead = 0;
    public Text kidsKilled;
    public Text kidsRunning;
    int counter = 0;
    float timeBetweenRounds;
    public int maxKids=10;
    public bool canPickUp = false;
    int xCounter = 4;
    int zCounter = 0;
    // Use this for initialization
    void Start () {
        Instance = this;
        children = new List<Child>();
        Init();
        maxKids = 10;
        Cursor.lockState = CursorLockMode.Locked;
    }
	void Init()
    {
        timeBetweenRounds = 5f;
        numCaught = 0;
        counter = 0;
        while (counter < 10)
        {
            Child c = new Child();
            c.number = counter;
            c.yCoords = 1.4f;
            
           
            
            if (counter%5==0)
            {
                zCounter++;
            }
           
            c.xCoords = 2f *xCounter*2f;
            c.zCoords = 2f * zCounter-20;
            c.childVisual = (GameObject)Instantiate(childPrefab);
            c.childVisual.transform.position = new Vector3(c.xCoords, c.yCoords, c.zCoords);
            counter++;
            children.Add(c);
        }
    }
	// Update is called once per frame
	void Update () {
        if (numDead > 0)
        {
            kidsKilled.text = "Kids You Let Die: " + numDead;
        }
        kidsCaught.text = "Kids Caught: " + numCaught;
        kidsRunning.text = "Kids Running: " + (maxKids - numCaught - numDead);
        if (numCaught >= (maxKids/2))
        {
            kidsCaught.text = "You caught all the kids!"; 
        }
	}

    public void BetweenRounds(ref float time)//Timer between the rounds
    {
        kidsCaught.text = ("Time Until Next\n   Round: " + timeBetweenRounds.ToString("F2"));
        timeBetweenRounds -= Time.deltaTime;
    }
}
