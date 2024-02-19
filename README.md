# ps-inventory
Project-Sloth's FiveM Inventory System Redesigned to Look Like and Feel like NoPixel 4.0

I removed the item images for my own sanity while uploading the changes. So please use your own item images

# Preview
![image](https://github.com/i-kulgu/ps-inventory/assets/29943243/40320442-1df9-41e1-9a60-160f877492c0)


# Credit where Credit is Due

# Thanks to loljoshie for originally creating the lj-inventory we've all come to love.
# Thanks to ok1ez and the project sloth dev team for continuing lj-inventory's existence with keeping it up to date and maintaining it as ps-inventory.
# Thanks to root_ for making the items actually droppable with their respective props. 
# Thanks to the Project Sloth Community. Without the support on the first version this release wouldn't be possible.

# Importing
If you've downloaded the previous version, I've included descriptions / tags above all the UI Changes i've made so you can easily convert over but below will be certain snippets if you'd like to add things yourself without inspecting the code.

# Personal Information Snippet

-- Client-Side LUA --

QBCore.Functions.TriggerCallback('inventory:server:ConvertQuality', function(data)
  inventory = data.inventory
  other = data.other
  SendNUIMessage({
  action = "open",
  inventory = inventory,
  slots = Config.MaxInventorySlots,
  other = other,
  maxweight = Config.MaxInventoryWeight,
  Ammo = PlayerAmmo,
  maxammo = Config.MaximumAmmoValues,
  Name = PlayerData.charinfo.firstname .." ".. PlayerData.charinfo.lastname .." - [".. GetPlayerServerId(PlayerId()) .."]", 
  pName = PlayerData.charinfo.firstname .. PlayerData.charinfo.lastname, 
  pNumber = PlayerData.charinfo.phone,
  pCID = PlayerData.citizenid,
  pID = GetPlayerServerId(PlayerId()),
})

QBCore.Functions.TriggerCallback('inventory:server:ConvertQuality', function(data)
  inventory = data.inventory
  other = data.other
  SendNUIMessage({
  action = "open",
  inventory = inventory,
  slots = Config.MaxInventorySlots,
  other = other,
  maxweight = Config.MaxInventoryWeight,
  Ammo = PlayerAmmo,
  maxammo = Config.MaximumAmmoValues,
  Name = PlayerData.charinfo.firstname .." ".. PlayerData.charinfo.lastname .." - [".. GetPlayerServerId(PlayerId()) .."]", 
  pName = PlayerData.charinfo.firstname .. PlayerData.charinfo.lastname, 
  pNumber = PlayerData.charinfo.phone,
  pCID = PlayerData.citizenid,
  pID = GetPlayerServerId(PlayerId()),
})

-- HTML --

<div class="player-name-title"> <span class="name-info-title">Name : </span></div>
<div class="player-name"> <span class="name-info">Player-Name</span></div>
<div class="phone-number-title"> <span class="phone-number-info">Phone Number : </span></div>
<div class="phone-number"> <span class="phone-number">Player-Phone-Number</span></div>
<div class="player-id-title"> <span class="player-id-info">State ID : </span></div>
<div class="player-id"> <span class="player-id">Player-State-ID</span></div>
<div class="citizen-id-title"> <span class="citizen-id-info">Citizen ID : </span></div>
<div class="citizen-id"> <span class="citizen-id">Player-Citizen-ID</span></div>
<div class="ply-number-line"></div>
<div class="phone-number-line"></div>
<div class="player-id-line"></div>
<div class="citizen-id-line"></div>

-- JS --

$(".player-name-title").html('Name');
$(".player-name").html(data.pName);
$(".phone-number-title").html('Phone Number');
$(".phone-number").html(data.pNumber);
$(".player-id-title").html('State ID');
$(".player-id").html(data.pID);
$(".citizen-id-title").html('Citizen ID');
$(".citizen-id").html(data.pCID);

-- CSS --

.ply-number-line {
  overflow: hidden;
  position: absolute;
  font-family: 'Oswald', sans-serif;
  background-color: rgb(137, 245, 169) !important;
  border: 1px solid rgba(55, 55, 55, 1);
  box-shadow: 0 0 1vh rgba(0, 0, 0, 0.3);
  top: 75%;
  margin-left: 6%;
  height: 5.6vh;
  width: 0.7vh;
}

.player-name-title {
  overflow: hidden;
  position: absolute;
    font-family: 'Oswald', sans-serif;
  padding: 1%;
  font-size: 1.6vh;
  color: rgb(160, 160, 160);
  top: 73.5%;
  margin-left: 6%;
  font-weight: 300;
}

.player-name {
  overflow: hidden;
  position: absolute;
    font-family: 'Oswald', sans-serif;
  padding: 1%;
  font-size: 1.95vh;
  color: white;
  top: 75%;
  margin-left: 6%;
  font-weight: 300;
}

.phone-number-line {
  overflow: hidden;
  position: absolute;
  font-family: 'Oswald', sans-serif;
  background-color: rgb(214, 137, 245) !important;
  border: 1px solid rgba(55, 55, 55, 1);
  box-shadow: 0 0 1vh rgba(0, 0, 0, 0.3);
  top: 75%;
  margin-left: 17.5%;
  height: 5.6vh;
  width: 0.7vh;
}

.phone-number-title {
  overflow: hidden;
  position: absolute;
  font-family: 'Oswald', sans-serif;
  padding: 1%;
  font-size: 1.6vh;
  color: rgb(160, 160, 160);
  top: 73.5%;
  margin-left: 17.5%;
  font-weight: 300;
}

.phone-number {
  overflow: hidden;
  position: absolute;
  font-family: 'Oswald', sans-serif;
  padding: 1%;
  font-size: 1.95vh;
  color: white;
  top: 75%;
  margin-left: 17.5%;
  font-weight: 300;
}

.player-id-line {
  overflow: hidden;
  position: absolute;
  font-family: 'Oswald', sans-serif;
  background-color: rgb(137, 232, 245) !important;
  border: 1px solid rgba(55, 55, 55, 1);
  box-shadow: 0 0 1vh rgba(0, 0, 0, 0.3);
  top: 85%;
  margin-left: 6%;
  height: 5.6vh;
  width: 0.7vh;
}

.player-id-title {
  overflow: hidden;
  position: absolute;
  font-family: 'Oswald', sans-serif;
  padding: 1%;
  font-size: 1.6vh;
  color: rgb(160, 160, 160);
  top: 83.5%;
  margin-left: 6%;
  font-weight: 300;
}

.player-id {
  overflow: hidden;
  position: absolute;
  font-family: 'Oswald', sans-serif;
  padding: 1%;
  font-size: 1.95vh;
  color: white;
  top: 85%;
  margin-left: 6%;
  font-weight: 300;
}

.citizen-id-line {
  overflow: hidden;
  position: absolute;
  font-family: 'Oswald', sans-serif;
  background-color: rgb(245, 207, 137) !important;
  border: 1px solid rgba(55, 55, 55, 1);
  box-shadow: 0 0 1vh rgba(0, 0, 0, 0.3);
  top: 85%;
  margin-left: 17.5%;
  height: 5.6vh;
  width: 0.7vh;
}

.citizen-id-title {
  overflow: hidden;
  position: absolute;
  font-family: 'Oswald', sans-serif;
  padding: 1%;
  font-size: 1.6vh;
  color: rgb(160, 160, 160);
  top: 83.5%;
  margin-left: 17.5%;
  font-weight: 300;
}

.citizen-id {
  overflow: hidden;
  position: absolute;
  font-family: 'Oswald', sans-serif;
  padding: 1%;
  font-size: 1.95vh;
  color: white;
  top: 85%;
  margin-left: 17.5%;
  font-weight: 300;
}

# Basic Damage / Health Snippet

-- Client-Side LUA --

local stress = 0

RegisterNetEvent('hud:client:UpdateStress', function(newStress) -- Add this event with adding stress elsewhere
    stress = newStress
end)

QBCore.Functions.TriggerCallback('inventory:server:ConvertQuality', function(data)
  inventory = data.inventory
  other = data.other
  SendNUIMessage({
  action = "open",
  inventory = inventory,
  slots = Config.MaxInventorySlots,
  other = other,
  maxweight = Config.MaxInventoryWeight,
  Ammo = PlayerAmmo,
  maxammo = Config.MaximumAmmoValues,
  Name = PlayerData.charinfo.firstname .." ".. PlayerData.charinfo.lastname .." - [".. GetPlayerServerId(PlayerId()) .."]", 
  pName = PlayerData.charinfo.firstname .. PlayerData.charinfo.lastname, 
  pNumber = PlayerData.charinfo.phone,
  pCID = PlayerData.citizenid,
  pID = GetPlayerServerId(PlayerId()),
  pStress =  stress,
  pHealth = 200 - GetEntityHealth(PlayerPedId()),
})

QBCore.Functions.TriggerCallback('inventory:server:ConvertQuality', function(data)
  inventory = data.inventory
  other = data.other
  SendNUIMessage({
  action = "open",
  inventory = inventory,
  slots = Config.MaxInventorySlots,
  other = other,
  maxweight = Config.MaxInventoryWeight,
  Ammo = PlayerAmmo,
  maxammo = Config.MaximumAmmoValues,
  Name = PlayerData.charinfo.firstname .." ".. PlayerData.charinfo.lastname .." - [".. GetPlayerServerId(PlayerId()) .."]", 
  pName = PlayerData.charinfo.firstname .. PlayerData.charinfo.lastname, 
  pNumber = PlayerData.charinfo.phone,
  pCID = PlayerData.citizenid,
  pID = GetPlayerServerId(PlayerId()),
  pStress =  stress,
  pHealth = 200 - GetEntityHealth(PlayerPedId()),
})

-- JS --
$(".skull-damage").html('Stress : ');
$(".skull-damage-title").html(data.pStress);

$(".body-damage").html('Damage : ');
$(".body-damage-title").html(data.pDamage + "%");

-- HTML --

<!-- Player Body Image -->
<div class="player-body-container">
<div class="player-body">
<img src="./inventory_images/body.png" alt="player-body" style="width:198px;height:428px;">
</div>
</div>

<!-- Player Damage-->
<div class="skull-damage-container">
<div class="skull-damage"></div>
<div class="skull-damage-title"></div>
<div class="skull-damage-line"></div>
</div>
                
<div class="body-damage-container">
<div class="body-damage"></div>
<div class="body-damage-title"></div>
<div class="body-damage-line"></div>
</div>

-- CSS --

/* Player Body */
.player-body-container {
	position: absolute;
	bottom: 27.8%;
	margin: 0 auto;
	left: -65%;
	right: 0;
	text-align: center;
	width: 15%;
	height: 55%;
	padding: 10%;
}

.player-body {
	position: absolute;
	bottom: 48%;
	margin: 0 auto;
	left: -23%;
	right: 0;
	text-align: center;
	width: 15%;
	height: 45%;
}

 /* Player Body & Health */
#player-damage-container {
    position: absolute;
    display: none;
    user-select: none;
    width: 100%;
    height: 100%;
}
  
  .skull-damage-title {
    overflow: hidden;
    position: absolute;
	  font-family: 'Oswald', sans-serif;
    padding: 1%;
    font-size: 1.35vh;
    color: white;
    top: 20.5%;
    margin-left: 22%;
    font-weight: 300;
    opacity: 0; 
    transition: opacity 0.5s; 
    z-index: 1; 
}

.skull-damage {
    overflow: hidden;
    position: absolute;
	  font-family: 'Oswald', sans-serif;
    padding: 1%;
    font-size: 1.35vh;
    color: white;
    top: 20.5%;
    margin-left: 20%;
    font-weight: 300;
    opacity: 0; 
    transition: opacity 0.5s; 
    z-index: 1; 
}

.skull-damage-line {
    overflow: hidden;
    position: absolute;
	  font-family: 'Oswald', sans-serif;
    background-color: rgb(255, 255, 255) !important;
	  border: 1px solid rgba(55, 55, 55, 1);
    box-shadow: 0 0 1vh rgba(0, 0, 0, 0.3);
    top: 20.5%;
    margin-left: 23%;
    height: 7.6vh;
    width: 0.2vh;
    rotate: 90deg;
    opacity: 0; 
    transition: opacity 0.5s; 
    z-index: 1; 
}

.skull-damage-container:hover .skull-damage,
.skull-damage-container:hover .skull-damage-title,
.skull-damage-container:hover .skull-damage-line {
    opacity: 1;
}

.body-damage-title {
    overflow: hidden;
    position: absolute;
	  font-family: 'Oswald', sans-serif;
    padding: 1%;
    font-size: 1.35vh;
    color: white;
    top: 28%;
    margin-left: 13%;
    font-weight: 300;
    opacity: 0; 
    transition: opacity 0.5s; 
    z-index: 1; 
}

.body-damage {
    overflow: hidden;
    position: absolute;
	  font-family: 'Oswald', sans-serif;
    padding: 1%;
    font-size: 1.35vh;
    color: white;
    top: 28%;
    margin-left: 10.5%;
    font-weight: 300;
    opacity: 0; 
    transition: opacity 0.5s; 
    z-index: 1; 
}

.body-damage-line {
    overflow: hidden;
    position: absolute;
	  font-family: 'Oswald', sans-serif;
    background-color: rgb(255, 255, 255) !important;
	  border: 1px solid rgba(55, 55, 55, 1);
    box-shadow: 0 0 1vh rgba(0, 0, 0, 0.3);
    top: 28%;
    margin-left: 13.5%;
    height: 7.6vh;
    width: 0.2vh;
    rotate: 90deg;
    opacity: 0; 
    transition: opacity 0.5s; 
    z-index: 1; 
}

.body-damage-container:hover .body-damage,
.body-damage-container:hover .body-damage-title,
.body-damage-container:hover .body-damage-line {
    opacity: 1;
}
