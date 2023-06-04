# Factions Plus
A mod for Project Zomboid

Add several functions to server be more factions style

Features:
- Fast Vegetables/Fruits grow (Obs: needs in sandbox to be the fastest option)
- Sell the Vegetables/Fruits to earn points (recomended 2 points per hour in server points mod)
- New drops to zombies like foods, bandage, etc
- Key system, can create a key if you are the owner of house
- Pills heal 10% porcentage of life

How to add the Fac Money in the Server Shop?

Add this code to the Zomboid/Lua/ServerPointsListings.ini

Remember if this is not the last section of Server Points you need to add a comma in last key "},"

```
Factions = {
  {
    type = "ITEM",
    target = "Base.FacMoney",
    price = 1
  },
}
```

Dependencies Mods

![image](https://github.com/LeandroTheDev/factions_plus/assets/106118473/b7d6b793-212d-4987-890c-5033dd813338)

Can i change something and upload in workshop?

Yes but set the visibility to hidden
