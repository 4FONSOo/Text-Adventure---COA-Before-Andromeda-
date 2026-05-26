"Before Andromeda: The Sky Breaks" by Saturnio Games

The story headline is "Episode 1 - The Sky Breaks".
The story description is "A science fiction text adventure set on an alien world on the eve of first contact."
Use scoring.
The maximum score is 20.

[==========================================================]
[  Volume 1 - World State Variables                        ]
[==========================================================]

Helped Xilar is a truth state that varies. Helped Xilar is false.
Humans alerted is a truth state that varies. Humans alerted is false.
Telepathy used is a truth state that varies. Telepathy used is false.
Siege begun is a truth state that varies. Siege begun is false.

[==========================================================]
[  Volume 2 - Locations                                    ]
[==========================================================]

The Bioluminescent Forest is a room.
The description of Bioluminescent Forest is "A vast forest where every plant pulses with soft blue and green light. Bioluminescent spores drift like slow snow between towering trees, and the air hums with quiet, ancient life.[paragraph break]A massive fallen tree blocks the northern path to the Ghanrion Camp. To the EAST the ground drops away toward the Ravine, and to the WEST a rocky path climbs toward the Observation Rock."

The Ravine is east of Bioluminescent Forest.
The description of Ravine is "A deep, rocky ravine. The walls are jagged and the air is cold and damp. Somewhere beneath the fallen debris you can hear faint, pained breathing.[paragraph break]To the WEST the glow of the forest beckons. Below you, darkness hints at underground tunnels -- go DOWN to explore them."

The Ghanrion Camp is north of Bioluminescent Forest.
The description of Ghanrion Camp is "A living settlement woven among ancient trees. Bioluminescent lanterns sway between branches, casting the settlement in warm, shifting light. The elder Vael moves with quiet authority between the shelters.[paragraph break]To the SOUTH lies the Bioluminescent Forest."

The Observation Rock is west of Bioluminescent Forest.
The description of Observation Rock is "A high cliff with a sweeping view of the entire forest. The bioluminescent canopy stretches endlessly to the east and north. To the WEST, a column of black smoke rises against the sky -- something has crashed on your world.[paragraph break]To the EAST, the path descends back into the forest."

The Underground Tunnels is a room.
Underground Tunnels is below the Ravine.
The description of Underground Tunnels is "Dark tunnels lit by faint glowing plants embedded in the walls. The passages twist and turn but remain navigable. The air smells of earth and something sharp and chemical -- a smell you do not recognise.[paragraph break]The Ravine is above you -- go UP to return."

The Human Crash Site is a room.
Human Crash Site is west of Observation Rock.
The description of Human Crash Site is "A burning crash site filled with alien wreckage. Twisted metal debris is scattered across scorched earth. The acrid smell of burning fuel fills the air. Human soldiers in heavy armour move cautiously through the wreckage, scanning the tree line with bright beams of light."

[-- Scenery --]

The Fallen Tree is scenery in Bioluminescent Forest.
The description of Fallen Tree is "A massive ancient tree, fallen across the northern path. Its roots have been torn clean from the earth. It would take considerable strength to move, or knowledge of the forest's hidden paths to circumvent."

[-- Blocked north path (cleared once Xilar is freed) --]

Instead of going north from Bioluminescent Forest when Helped Xilar is false:
	say "The fallen tree completely blocks the path to the Ghanrion Camp. Perhaps someone who knows these forests well could show you a hidden way around it.[paragraph break]HINT: Speak to the characters you meet -- try TALK TO ZARB."

[==========================================================]
[  Volume 3 - Characters                                   ]
[==========================================================]

Zarb is a man in Bioluminescent Forest.
The description of Zarb is "Is a young Ghanrion, his skin faintly luminescent like the forest around him. His wide eyes carry both fear and urgent curiosity. He seems eager to communicate."

Xilar is a man in Ravine.
The description of Xilar is "A Ghanrion warrior, currently trapped beneath a heavy piece of debris. Despite his injuries, his eyes are sharp and alert. He needs your help -- type HELP XILAR to attempt to free him."

Vael is a man in Ghanrion Camp.
The description of Vael is "The elder of the Ghanrion tribe. His face is lined with age and hard-won wisdom. He watches you with calm, searching eyes."

Captain Jack is a man. 
Captain Jack is nowhere.
The description of Captain Jack is "A human military officer in worn combat gear. His expression is alert and deeply suspicious."

[==========================================================]
[  Volume 4 - Talking to NPCs                              ]
[==========================================================]

[-- Define the 'talking to' action --]

Talking to is an action applying to one visible thing.
Understand "talk to [someone]" as talking to.
Understand "speak to [someone]" as talking to.
Understand "speak with [someone]" as talking to.

Instead of talking to someone:
	say "[The noun] seems absorbed in thought and does not respond."

[-- Zarb --]

Instead of talking to Zarb:
	say "Zarb communicates through a series of soft bioluminescent pulses and deliberate gestures. Somehow, you understand every word.[paragraph break]'Something fell from the sky -- to the west. It burns, and it brought soldiers with it. They will push deeper into the forest. We must warn the camp, but the elder will not act on my word alone. Xilar carries the elder's trust.'[paragraph break]He pauses, his skin flickering with anxious light.[paragraph break]'Xilar was scouting the Ravine when the debris came down on him. Please -- free him first. Go EAST to find him. Type HELP XILAR when you reach him.'"

[-- Xilar (different dialogue before and after rescue) --]

Instead of talking to Xilar:
	if Helped Xilar is true:
		say "Xilar nods with quiet, steady gratitude.[paragraph break]'I owe you a debt I will not forget. These forests hold no secrets from me. The fallen tree across the north path is no obstacle -- I know every hidden trail. Walk with me and I will guide you safely to the camp.'[paragraph break]He glances north. 'You can go NORTH now from the forest.'";
	otherwise:
		say "Xilar winces in pain but holds your gaze with clear, determined eyes.[paragraph break]'The debris... I cannot shift it alone. Free me, and I will lead you past the fallen tree to the camp. The elder must be warned before the humans reach the treeline.'[paragraph break]He glances at the rubble pressing down on him.[paragraph break]Type [bold type]HELP XILAR[roman type] to attempt to free him."

[-- Vael (different dialogue before and after siege begins) --]

Instead of talking to Vael:
	if Siege begun is false:
		say "Vael turns his calm gaze upon you.[paragraph break]'You are not of our kind, and yet the forest did not reject you. That speaks more than words ever could. The lights in the sky last night were not stars. Something comes -- something that does not understand silence or patience.'[paragraph break]He pauses, listening to the distant canopy rustle.[paragraph break]'Stay close. I suspect your choices will matter greatly before this is over.'";
	otherwise:
		say "Vael's expression is grave but utterly composed.[paragraph break]'There is no more time for words. The soldiers are here. You must decide what kind of person you are.'[paragraph break]He meets your eyes steadily.[paragraph break]Your three choices are:[paragraph break]  [bold type]HELP VAEL[roman type] -- Stand beside the elder and face the soldiers together.[paragraph break]  [bold type]GUIDE YOUNG[roman type] -- Lead the children and elders through the hidden tunnels to safety.[paragraph break]  [bold type]OBSERVE[roman type] -- Pull back into the shadows and bear witness."

[-- Captain Jack --]

Instead of talking to Captain Jack:
	say "Captain Jack levels a hard, professional stare at you. One hand drifts toward the radio clipped to his belt.[paragraph break]'Stand down. Identify yourself immediately. This area is under Terran Military Authority jurisdiction. Any non-compliance will be treated as a hostile act.'[paragraph break]He doesn't look like he is bluffing."

[==========================================================]
[  Volume 5 - Player Actions                               ]
[==========================================================]

[-- Universal Help Command (Improved for better Inform 7 logic) --]

Helping is an action applying to one visible thing.
Understand "help [someone]" as helping.
Understand "free [someone]" as helping.
Understand "rescue [someone]" as helping.

Instead of helping someone:
	say "You don't need to help [the noun] right now."

Instead of helping Xilar:
	if Helped Xilar is true:
		say "Xilar is already free. He is ready to guide you north." instead;
	now Xilar is in Bioluminescent Forest;
	now Helped Xilar is true;
	increase the score by 5;
	say "You brace yourself and drag the heavy debris aside piece by piece. It takes every ounce of your strength.[paragraph break]Xilar pulls himself free with a sharp exhale, checks his injuries with practised calm, and rises to his feet.[paragraph break]'Thank you,' he says simply. 'The camp -- now. Follow me back WEST. I know a way around the fallen tree.'[paragraph break]The northern path to the Ghanrion Camp is now accessible -- return WEST to the forest, and then go NORTH."

[-- Telepathy --]

Telepathy is an action applying to nothing.
Understand "telepathy" as telepathy.
Understand "use telepathy" as telepathy.

Carry out telepathy:
	if Telepathy used is true:
		say "You have already sent the signal. A faint mental echo still lingers at the edge of your awareness.";
	otherwise:
		now Telepathy used is true;
		increase the score by 2;
		say "You close your eyes and push a weak telepathic signal outward through the forest network.[paragraph break]For a moment, nothing. Then a tremor moves through the bioluminescent light all around you -- the plants respond like a living relay, carrying your signal through root and spore and branch.";
		if Zarb is visible:
			say "[paragraph break]Zarb spins toward you, eyes wide.[paragraph break]'You... you sent that?' His skin flashes bright white with shock.";
		say "[paragraph break]The forest hums softly in reply."

[==========================================================]
[  Volume 6 - Human Crash Site Encounter                   ]
[==========================================================]

Instead of going west from Observation Rock:
	if Helped Xilar is true:
		if Humans alerted is false:
			increase the score by 3;
		now Humans alerted is true;
		now Captain Jack is in Human Crash Site;
		say "You move toward the open ridge, but before you can step into the light, Xilar's hand closes firmly around your arm.[paragraph break]'Not yet. They are still searching the crash site. If they see us now, they will follow us straight back to the camp.'[paragraph break]He draws you back into the shadow of the rocks. You return to the Observation Rock.";
	otherwise:
		now Humans alerted is true;
		now Captain Jack is in Human Crash Site;
		say "You step out from the treeline toward the wreckage.[paragraph break]A sweep of white searchlight catches you immediately.[paragraph break]'CONTACT -- northeast perimeter!' a soldier shouts.[paragraph break]Boots hammer the ground. You have no time to run, and no ally to protect you.[paragraph break]";
		end the story saying "Captured by Humans -- You approached the crash site alone and were detected. Return to the forest, find Xilar in the Ravine, and free him first."

[==========================================================]
[  Volume 7 - Final Sequence: The Camp Siege               ]
[==========================================================]

The Camp Siege is a scene.
Camp Siege begins when the player is in Ghanrion Camp and Helped Xilar is true.

When Camp Siege begins:
	now Siege begun is true;
	increase the score by 5;
	say "The moment you arrive at the camp, the ground shakes with the deep percussion of approaching footsteps.[paragraph break]Human soldiers emerge from the southern treeline, weapons raised, visors reflecting the bioluminescent light. The entire camp falls utterly silent.[paragraph break]Vael steps forward alone. His arms are wide, his palms open. His voice is very low.[paragraph break]'They are afraid. And fear, more than hatred, makes them dangerous.'[paragraph break]He turns to you.[paragraph break]'What will you do?'[paragraph break][paragraph break][bold type]You have three choices:[roman type][paragraph break]  [bold type]HELP VAEL[roman type] -- Step forward and stand beside the elder.[paragraph break]  [bold type]GUIDE YOUNG[roman type] -- Lead the children and elders through the underground tunnels to safety.[paragraph break]  [bold type]OBSERVE[roman type] -- Pull back into the shadows and bear witness."

[-- Choice 1: Help Vael --]

Instead of helping Vael:
	if Siege begun is false:
		say "Vael stands quietly. He does not need your help right now.";
	otherwise:
		increase the score by 5;
		say "You walk forward and stand beside Vael.[paragraph break]The soldiers freeze.[paragraph break]Something about the image -- the ancient elder and a being they cannot categorise, standing together without weapons, without aggression, without fear -- fractures their certainty. Training accounts for hostility. It does not account for this.[paragraph break]A long silence stretches across the camp. The wind moves through the luminescent leaves.[paragraph break]Slowly, one soldier lowers his weapon. Then another. Then all of them.[paragraph break]Vael places a hand on your shoulder and says nothing. He does not need to.[paragraph break]Behind you, the camp exhales.[paragraph break]";
		end the story finally saying "A Fragile Peace -- You stood with the Ghanrion and turned fear into stillness. The first step toward understanding has been taken."

[-- Choice 2: Guide Young --]

Guiding young is an action applying to nothing.
Understand "guide young" as guiding young.

Check guiding young:
	if Siege begun is false:
		say "There is nothing requiring that action yet." instead.

Carry out guiding young:
	increase the score by 3;
	say "You move quickly and without a word, gathering the young Ghanrion with calm, urgent gestures. Through the tunnels beneath the Ravine -- tunnels you now know well -- you lead them in single file through the glowing dark.[paragraph break]Behind you, voices rise. Tense and confused. But no pursuit comes.[paragraph break]The children emerge into the far forest, blinking in the cold air. One of the youngest looks back at you, her luminescent eyes wide and full of something that might be gratitude, or wonder, or both.[paragraph break]Above ground, the standoff continues. You have saved some. The rest remains unwritten.[paragraph break]";
	end the story finally saying "Partial Escape -- The young were saved. The fate of the camp is still unwritten. Perhaps that is enough for now."

[-- Choice 3: Observe --]

Observing situation is an action applying to nothing.
Understand "observe" as observing situation.

Check observing situation:
	if Siege begun is false:
		say "There is nothing particularly demanding your observation right now." instead.

Carry out observing situation:
	say "You step back into the deep shadow of the trees and become very still.[paragraph break]Vael speaks to the soldiers in slow, measured tones. They cannot understand his words, but his absolute calm is a language of its own -- one that transcends species and training and fear.[paragraph break]The standoff holds. Neither side advances. Neither side fires.[paragraph break]Hours pass. Eventually the soldiers withdraw toward the crash site. Vael watches them go, unmoving, until the last footstep fades.[paragraph break]He does not look for you. But as he finally turns back toward the camp, you have the quiet sense that he always knew you were there.[paragraph break]You wonder, in the long silence that follows, what your presence beside him might have changed.[paragraph break]";
	end the story finally saying "The Silent Witness -- You watched, but did not act. Some choices are made by not choosing. The forest will remember."

[==========================================================]
[  Volume 8 - Look Map Command                             ]
[==========================================================]

Looking at map is an action applying to nothing.
Understand "look map" as looking at map.
Understand "map" as looking at map.
Understand "show map" as looking at map.

Carry out looking at map:
	say "[bold type]============================================================[roman type][paragraph break]";
	say "[bold type]               WORLD MAP: THE GHANRION FOREST               [roman type][paragraph break]";
	say "[bold type]============================================================[roman type][paragraph break]";
	say "[paragraph break]";
	say "      <Ghanrion Camp>  GHANRION CAMP[paragraph break]";
	say "             |[paragraph break]";
	say "           NORTH[paragraph break]";
	say "             | (blocked until Xilar is freed)[paragraph break]";
	say "             |[paragraph break]";
	say "(Human Crash) -- WEST -- (Observation) -- EAST -- (Bioluminescent) -- EAST -- (Ravine)[paragraph break]";
	say "(Crash Site )            (   Rock    )            (    Forest    )            [paragraph break]";
	say "                                                                                |[paragraph break]";
	say "                                                                              DOWN[paragraph break]";
	say "                                                                                |[paragraph break]";
	say "                                                                      (Underground Tunnels)[paragraph break]";
	say "[paragraph break]";
	say "[bold type]--- LOCATION GUIDE ---[roman type][paragraph break]";
	say "[paragraph break]";
	say "[bold type]BIOLUMINESCENT FOREST[roman type]";
	if the player is in Bioluminescent Forest:
		say "  <-- YOU ARE HERE";
	say "[paragraph break]";
	say "  The central hub of the map. Your starting location and the heart[paragraph break]";
	say "  of the Ghanrion world. NPC: Zarb (young Ghanrion scout).[paragraph break]";
	say "  Exits: EAST (Ravine), WEST (Observation Rock), NORTH (Ghanrion Camp)[paragraph break]";
	say "[paragraph break]";
	say "[bold type]THE RAVINE[roman type]";
	if the player is in Ravine:
		say "  <-- YOU ARE HERE";
	say "[paragraph break]";
	say "  East of the Bioluminescent Forest. A deep rocky ravine.[paragraph break]";
	say "  NPC: Xilar (trapped Ghanrion warrior). Key action: HELP XILAR.[paragraph break]";
	say "  Exits: WEST (Bioluminescent Forest), DOWN (Underground Tunnels)[paragraph break]";
	say "[paragraph break]";
	say "[bold type]UNDERGROUND TUNNELS[roman type]";
	if the player is in Underground Tunnels:
		say "  <-- YOU ARE HERE";
	say "[paragraph break]";
	say "  Beneath the Ravine. Dark passages lit by bioluminescent plants.[paragraph break]";
	say "  A hidden escape route used in the final sequence.[paragraph break]";
	say "  Exits: UP (The Ravine)[paragraph break]";
	say "[paragraph break]";
	say "[bold type]OBSERVATION ROCK[roman type]";
	if the player is in Observation Rock:
		say "  <-- YOU ARE HERE";
	say "[paragraph break]";
	say "  West of the Bioluminescent Forest. A high vantage point.[paragraph break]";
	say "  The smoke of the crash site is visible from here.[paragraph break]";
	say "  Exits: EAST (Bioluminescent Forest), WEST (Human Crash Site -- DANGEROUS)[paragraph break]";
	say "[paragraph break]";
	say "[bold type]HUMAN CRASH SITE[roman type]";
	if the player is in Human Crash Site:
		say "  <-- YOU ARE HERE";
	say "[paragraph break]";
	say "  West of Observation Rock. A burning crash site with armed human soldiers.[paragraph break]";
	say "  WARNING: Entering without Xilar's help ends the game. NPC: Captain Jack.[paragraph break]";
	say "  Exits: EAST (Observation Rock)[paragraph break]";
	say "[paragraph break]";
	say "[bold type]GHANRION CAMP[roman type]";
	if the player is in Ghanrion Camp:
		say "  <-- YOU ARE HERE";
	say "[paragraph break]";
	say "  North of the Bioluminescent Forest. The final destination.[paragraph break]";
	say "  LOCKED until you free Xilar in the Ravine. NPC: Vael (elder).[paragraph break]";
	say "  Warning: Arriving triggers the Camp Siege finale.[paragraph break]";
	say "  Exits: SOUTH (Bioluminescent Forest)[paragraph break]";
	say "[paragraph break]";
	say "[bold type]--- RECOMMENDED PATH ---[roman type][paragraph break]";
	say "  1. Talk to Zarb (Bioluminescent Forest)[paragraph break]";
	say "  2. Go EAST -- Ravine -- free Xilar (HELP XILAR)[paragraph break]";
	say "  3. Explore freely. Try USE TELEPATHY[paragraph break]";
	say "  4. Go WEST then WEST -- visit Observation Rock and the Crash Site[paragraph break]";
	say "  5. Return and go NORTH -- Ghanrion Camp -- face the finale[paragraph break]";
	say "[paragraph break]";
	say "[bold type]============================================================[roman type]"

[==========================================================]
[  Volume 9 - Introduction (When Play Begins)              ]
[==========================================================]

When play begins:
	say "[bold type]============================================================[roman type][paragraph break]";
	say "[bold type]        BEFORE ANDROMEDA: THE SKY BREAKS                    [roman type][paragraph break]";
	say "[bold type]             Episode 1 -- The Sky Breaks                    [roman type][paragraph break]";
	say "[bold type]============================================================[roman type][paragraph break]";
	say "[paragraph break]";
	say "You are [bold type]Zaryn[roman type], a young Ghanrion -- a sentient being native to this[paragraph break]";
	say "bioluminescent world, gifted with weak but growing telepathic ability.[paragraph break]";
	say "Your people have lived in peaceful isolation within the forest for as[paragraph break]";
	say "long as memory reaches.[paragraph break]";
	say "[paragraph break]";
	say "Last night, something fell from the sky.[paragraph break]";
	say "[paragraph break]";
	say "Now the forest holds its breath.[paragraph break]";
	say "[paragraph break]";
	say "[bold type]============================================================[roman type][paragraph break]";
	say "[bold type]                     HOW TO PLAY                             [roman type][paragraph break]";
	say "[bold type]============================================================[roman type][paragraph break]";
	say "[paragraph break]";
	say "[bold type]Movement[roman type] -- Navigate between locations:[paragraph break]";
	say "   NORTH  /  SOUTH  /  EAST  /  WEST  /  UP  /  DOWN[paragraph break]";
	say "[paragraph break]";
	say "[bold type]Observation[roman type] -- Learn about your surroundings:[paragraph break]";
	say "   LOOK                    -- describe the current room[paragraph break]";
	say "   EXAMINE <thing>       -- inspect a character or object[paragraph break]";
	say "   MAP  or  LOOK MAP       -- display the world map and all locations[paragraph break]";
	say "[paragraph break]";
	say "[bold type]Characters[roman type] -- Speak with the people around you:[paragraph break]";
	say "   TALK TO ZARB            -- speak with the young Ghanrion scout[paragraph break]";
	say "   TALK TO XILAR           -- speak with the wounded warrior (Ravine)[paragraph break]";
	say "   TALK TO VAEL            -- speak with the tribal elder (Ghanrion Camp)[paragraph break]";
	say "   TALK TO CAPTAIN JACK    -- speak with the human officer (Crash Site)[paragraph break]";
	say "[paragraph break]";
	say "[bold type]Special Actions[roman type] -- Interact with the world:[paragraph break]";
	say "   HELP XILAR              -- attempt to free a trapped ally in the Ravine[paragraph break]";
	say "   FREE XILAR              -- same as above[paragraph break]";
	say "   USE TELEPATHY           -- broadcast a weak mental signal through the forest[paragraph break]";
	say "   LOOK MAP           -- look to all the possible directions in each location of the world[paragraph break]";
	say "[paragraph break]";
	say "[bold type]Story Choices[roman type] -- Available during the final sequence:[paragraph break]";
	say "   HELP VAEL               -- stand with the elder[paragraph break]";
	say "   GUIDE YOUNG             -- lead the children to safety[paragraph break]";
	say "   OBSERVE                 -- watch events unfold[paragraph break]";
	say "[paragraph break]";
	say "[bold type]Utility[roman type]:[paragraph break]";
	say "   SCORE                   -- check your current score (max: 20)[paragraph break]";
	say "   INVENTORY  /  I         -- check what you are carrying[paragraph break]";
	say "   AGAIN  /  G             -- repeat the last command[paragraph break]";
	say "   QUIT                    -- end the game[paragraph break]";
	say "[paragraph break]";
	say "[bold type]============================================================[roman type][paragraph break]";
	say "[bold type]                     YOUR OBJECTIVE                          [roman type][paragraph break]";
	say "[bold type]============================================================[roman type][paragraph break]";
	say "[paragraph break]";
	say "Explore the forest. Find your ally [bold type]Xilar[roman type], trapped in the Ravine[paragraph break]";
	say "to the east, and free him. Then reach the [bold type]Ghanrion Camp[roman type] to warn[paragraph break]";
	say "your people. When the moment comes, choose how your people will face[paragraph break]";
	say "the humans who have crashed on your world.[paragraph break]";
	say "[paragraph break]";
	say "Your choices will determine the ending.[paragraph break]";
	say "[paragraph break]";
	say "[bold type]TIP:[roman type] Start by talking to the character beside you. Type TALK TO ZARB.[paragraph break]";
	say "[paragraph break]";
	say "The forest glows softly around you. [bold type]Zarb[roman type] stands nearby, watching[paragraph break]";
	say "the eastern sky with restless, flickering eyes.[paragraph break]".