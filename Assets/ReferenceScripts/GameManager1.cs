/*using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour {
    public static GameManager Instance;//Initializes an instance of the GameManager class
    public TextMesh roundNumber;//Displays the rounds number, round timer, and lose message
    public TextMesh zombieKillsText;//Displays zombies killed
    public int zombieKills;//Stores number of zombies killed
    public GameObject enemyPrefab;//Stores the visual of the zombie
    public int round;//Stores the round number
    public int playerKills;//Stores the number of zombies killed by the player each round
    public List<Zombie> enemies;//The list of zombies
    public int counter;//Counter for multiple uses
    public int zombieNumber;//Stores number of zombies created each round
    public int totalZombies;//Zombies created each round
    public int roundCounter;//Counts up to the current round number, for enemy generation
    public int loseCondition;
    public float timeBetweenRounds;//Stores the time between rounds
    public int canShoot;//Determines whether the player can shoot

    void Start() {
        Instance = this;//Creates the instance of the GameManager class
        enemies = new List<Zombie>();
        round = 0;
        loseCondition=0;
    }

    public void Init()
    {
        timeBetweenRounds = 5;
        roundCounter=1;
        playerKills = 0;
        round++;
        canShoot = 1;//Player can shoot at the start of each round
        totalZombies = 7 * round;
        while (roundCounter < (round + 1))     //Create one column of zombie for every round elapsed   
        {                                       
            counter = 0;
            while (counter < 7)//Create one column of zombies
            {
                Zombie z = new Zombie(); //Initialize one zombie       
                z.number = counter;//Set it's variables
                z.speed = .01f;
                z.health = roundCounter * 4;
                z.yCoords = 4.5f - (1.5f * counter);//Stagger thier position down
                z.xCoords = 10.2f - (1.5f * (roundCounter - 1));//And if rounds >1, stagger them left as well
                z.enemyVisual = (GameObject)Instantiate(enemyPrefab);//Set the visual
                z.enemyVisual.transform.position = new Vector3(z.xCoords, z.yCoords);//Set the position
                counter++;
                enemies.Add(z);//Add the zombie to the list of zombies
            }
            roundCounter++;
        }
        counter = 0;
    }

	void Update () {
        if (loseCondition == 0)//While the player hasn't lost, keep playing
        {
            roundNumber.text = ("Round: " + round);
        }
        else
        {
            roundNumber.text = ("YOU LOSE!");//If the player has lost, display you lose
        }
        zombieKillsText.text = ("Zombie's Killed: " + zombieKills);
        zombieNumber = enemies.Count;
        if (playerKills==totalZombies)           //If the player has killed all the zombies for that round
        {                                        //
            BetweenRounds(ref timeBetweenRounds);//Start the timer for the next round
        }
        if (timeBetweenRounds <= 0)//If the timer has run out
        {                          //
            Init();                //Start the next round
        }		
	}

    public void BetweenRounds(ref float time)//Timer between the rounds
    {      
            roundNumber.text = ("Time Until Next\n   Round: " + timeBetweenRounds.ToString("F2"));
            timeBetweenRounds -= Time.deltaTime;
            canShoot = 0;        //Player can not shoot between rounds (To get rid of all leftover bullets)
    }
}*/
