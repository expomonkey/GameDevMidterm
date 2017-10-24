using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour {
    public static GameManager Instance;
    public List<Child> children;
    public GameObject childPrefab;
    public Text kidsCaught, kidsKilled, kidsRunning, win, lose, numKidsText;
    public int numCaught, numDead, maxKids, counter, xCounter, zCounter, numKids;
    public bool canPickUp = false, canWin=true, canLose=true;
    public GameObject[] spawnCorners;
    public float timeTillEnd;
    public AudioSource audioSource;
    public AudioClip[] audioClips = new AudioClip[2];
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
        timeTillEnd = 5.0f;
        numKids = 12;
        numCaught = 0;
        counter = 0;
        while (counter < numKids)
        {
            zCounter = counter;
            //Create the new child
            Child c = new Child();
            c.number = counter;

            //So im trying to spawn the kids in a square around the cabin. To do that I have created a game object at each of the corners of that square
            //The kids start spawning at what I have called the top side of the sqaure. The algorithm takes into account the x and z coords of the square 
            //on the left side of the edge it is spawning on. It also takes into account the length of that edge and how many children it is trying to spawn
            //it then spawns the kids with the interval of: (length of the edge/kids it is trying to spawn) between each of the kids. It does this for each of
            //the edges until the last one, in which it spawns all the rest.
            int turnPoint =(int) Mathf.Floor(numKids / 4);//Amount of kids it should spawn on each of the edges
            if (counter <= turnPoint)//First edge
            {
               
                c.xCoords = spawnCorners[0].transform.position.x - (counter * ((spawnCorners[0].transform.position.x - spawnCorners[1].transform.position.x) /( turnPoint)));//Gets the distance each kid should move when it spawn so it move along the side of a square
                c.zCoords = spawnCorners[0].transform.position.z;
            }
            if (counter > turnPoint)//Second edge
            {
                c.xCoords = spawnCorners[1].transform.position.x;
             
                c.zCoords = spawnCorners[1].transform.position.z - (counter - turnPoint) * ((spawnCorners[1].transform.position.z - spawnCorners[2].transform.position.z) /( turnPoint));

            }
            if (counter > turnPoint * 2)//Third edge
            {
                c.zCoords = spawnCorners[2].transform.position.z;
                c.xCoords= spawnCorners[2].transform.position.x - (counter - turnPoint*2) * ((spawnCorners[2].transform.position.x - spawnCorners[3].transform.position.x) / (turnPoint));
            }
            if(counter>turnPoint*3)//Last edge
            {
                c.xCoords = spawnCorners[3].transform.position.x;
                c.zCoords = spawnCorners[3].transform.position.z - (counter - turnPoint * 3) * ((spawnCorners[3].transform.position.z - spawnCorners[0].transform.position.z) / (numKids-turnPoint*3));//Notice how it spawns all the kids left
            }
            c.yCoords = 1.176397f;
            
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
        numKidsText.text = "Total kids: " + numKids;
        if (numCaught < (maxKids / 2))
        {
            win.text = "";
            canWin = true;
        }
            kidsCaught.text = "Kids Caught: " + numCaught;
        kidsRunning.text = "Kids Running: " + (numKids - numCaught - numDead);

        if (numDead > 0) { kidsKilled.text = "Kids Injured: " + numDead; }
        if (numDead > Mathf.Floor((numKids/2)))//If more than half the kids get hurt
        {
            if (canLose)//And you can still lose (Meaning you havent won yet)
            {
                audioSource.clip = audioClips[1];//Play lose sound
                if (!audioSource.isPlaying)
                {
                    audioSource.Play();
                }
                canWin = false;//You can no longer win
                lose.text = "YOU LOSE!";
                BetweenRounds(ref timeTillEnd);//Start the countdown to go back to the main menu
            }
        }
       
        if (numCaught >= (numKids/2))//If you have caught at least half the kids
        {
            if (canWin)//And you can still win (Meaning you haven't lost yet)
            {
                audioSource.clip = audioClips[0];//Play win sound
                if (!audioSource.isPlaying)
                {
                    audioSource.Play();
                }
                kidsCaught.text = "You caught enough kids!";
                win.text = "YOU WIN!";
                canLose = false;//You can no longer lose
                BetweenRounds(ref timeTillEnd);//Start the countdown to exiting to the main menu
            }
        }
        if (timeTillEnd <= 0)//If the timer has run out
        {
            Cursor.visible = true;
            Cursor.lockState = CursorLockMode.None;
            SceneManager.LoadScene("Start");                //Go back to start menu
        }
    }
    public void BetweenRounds(ref float time)//Timer between the rounds
    {
        time -= Time.deltaTime;
    }

    public void setVariables()//Sets the variables to thier starting values. This is here purely for asthetic reasons
    {
        maxKids = 10;
        numCaught = 0;
        numDead = 0;
        maxKids = 10;
        counter = 0;
        xCounter = 4;
        zCounter = 0;
        numKids = 12;
        timeTillEnd = 5.0f;
    }
}
