!!!REQUIRES COUNTER-STRIKE:SOURCE!!!
!!!RECOMMENDED MAXIMUM AMOUNT OF PLAYERS FOR A SINGLE SERVER IS 12-16!!!

This gamemode is similar to TTT in terms of the gamemode type, but is different in almost every aspect.

TL;DR: TTT but much more focused on espionage and is not a massacre simulator.

Long version:

The first thing you'll notice is that the gamemode is not a town murder simulator.
Out of all players 3 are chosen, 2 of which are Agent A and Agent B, and the 3rd person is the VIP.
Everyone else will get their role set to Civilian, who are sworn to protect the VIP.

Agents have to kill each other AND the VIP to win the round, while the VIP has to either kill the agents or wait for the round to end.
Each player is able to examine players, which, if he succeeds, will notify the player that the examined person is trusted/suspicious/dangerous.
Agents are great at examining players and have a boost in examining people, everyone else do not have this boost, but can buy a "manual" from the
buy menu and get the boost.

How it works: Every weapon you carry and body armor you have equipped increases your "weight" value and when it exceeds a certain number, then upon examination
the player will be notified that you might have something concealed.

Agents are also much more experienced with firearms than the VIP and the Civilians are. (less recoil, less spread)

Upon round start, the VIP gets a VIP ID card, which he can show to people to ensure them that he is the VIP and have them as his bodyguards.
Agents can buy forged VIP ID cards, which they can use the same way the VIP does, but to cause confusion and to make people believe that he is
the VIP. However, the forgery can be noticed by an opposing Agent and the VIP, which will automatically mark the impostor as an Agent on their
side.

There's also a bunch more shit that's different from TTT and it would take me a wall of text to write all the differences and shit like that.

Features:
- Random player selection for Agents/VIPs (essential for a gamemode like this)
- Round system (same as above)
- Various ways of tricking people as an Agent
- Money system (nothing special, really)
- Agents can pick-pocket people to find clues
- Buyable hints for Agents (a la Hitman: Blood Money)
- Uses my "Customizable Weaponry" (without the attachments part) for the firearms
- 3 armor vest types that protect only the torso of a player
- Karma system (similar to TTT, I think?)
- Dead body examination (similar to TTT)
- Round system
- Map voting system
- Pain sounds
- Limited, slow health regen
- Mail system for supported maps
- Stamina system
- Drowning (that's right, players can drown!)
- Low ledge-grabbing system to help overcome low obstacles (such as walls)
- Players can unload weapons that are lying on the floor
- Tips when dead
- Ability to break glass without having to use a weapon
- Push around props and play spooky sounds as a spectator to keep yourself entertained
- Buyable radios which allow for long-range communication and the use of a voice chat menu

HOW TO INSTALL THE GAMEMODE CONTENT PROPERLY:
Copy-paste the contents of the folder 'content' into your server's root folder (where 'materials', 'models', 'sound' folders are)
The gamemode is then installed like any other gamemode.

Here are the maps that support the gamemode:
cs_assault
cs_compound
cs_italy
cs_havana
cs_militia
cs_office
de_cbble
de_inferno
de_nuke
de_chateau
de_piranesi
de_port
de_tides

Any map that's NOT supported, will not feature the mailbox system and instead will make item buys instant.
Be sure to add them and ONLY THEM into your server's rotation, as that's where the maps for the votemap are taken from!
You can just copy-paste these maps to mapcycle.txt and it should work.

Server-side console variables:
dec_roundtime <default - 600> - time in seconds until the round ends
dec_runspeed <default - 310> - run speed for every player
dec_startmoney_civilian <default - 200> - the amount of money a civilian starts out with
dec_startmoney_agent <default - 350> - the amount of money an Agent starts out with
dec_startmoney_vip <default - 500> - the amount of money a VIP starts out with
dec_income_civ_time <default - 2> - the time it takes for a Civilian to receive the money
dec_income_civ_amount <default - 1> - the amount of money a Civilian receives
dec_income_agent_time <default - 1> - the time it takes for an Agent to receive the money
dec_income_agent_amount <default - 1> - the amount of money an Agent receives
dec_income_vip_time <default - 1> - the time it takes for the VIP to receive the money
dec_income_vip_amount <default - 2> - the amount of money the VIP receives
dec_healthregen_enabled <default - 1> - disable or enable health regen
dec_healthregen_percentage <default - 0.25> - percentage of received damage that the player won't regenerate
dec_healthregen_dmgpenalty <default - 15> - how long does the player have to wait for the health regen to start after taking damage (in seconds)
dec_healthregen_regentime <default - 2> - how long does the player have to wait for the health to regenerate (in seconds)
dec_stamina_drain_sprint_time <default - 0.6> - amount of time it takes to decrease stamina while sprinting (in seconds, applies to swimming fast too)
dec_stamina_drain_sprint_amount <default - 1> - amount of stamina you lose while sprinting (applies to swimming fast too)
dec_stamina_drain_ledgepull <default - 10> - amount of stamina you lose every time you pull yourself up
dec_stamina_drain_ledgehang_time <default - 1> - amount of time it takes to decrease stamina while hanging on a ledge (in seconds)
dec_stamina_drain_ledgehang_amount <default - 1> - amount of stamina you lose while hanging on a ledge
dec_stamina_drain_jump <default - 5> - amount of stamina you lose every time you jump
dec_stamina_drain_underwater_time <default - 0.3> - amount of time it takes to decrease stamina while underwater
dec_stamina_drain_underwater_amount <default - 1> - amount of stamina you lose when underwater
dec_stamina_regen_time <default - 0.2> - the delay between stamina regen
dec_stamina_regen_amount <default - 1> - amount of stamina to regen
dec_pickup_enabled <default - 1> - allow or disallow the ability to pick props up
dec_pickup_weight <default - 30> - the maximum weight of a prop that a player can pick up. If the prop's weight exceeds this value, the player won't be able to pick it up.
dec_chat_distance <default - 256> - the maximum distance a player can see another player use his chat
dec_mic_distance <default - 256> - the maximum distance a player can hear another player use his microphone
dec_rounds <default - 7> - amount of rounds per map
dec_max_armedkills <default - 3> - after killing this many armed Civilians, the Agent will begin to lose karma
dec_bandur <default - 60> - time in minutes that a player gets banned for having a karma that's lower than 60%
dec_noreturnfirekarmaloss <default - 1> - disable or enable karma loss for killing armed Civilians that did not return fire as an Agent
dec_karmalossmaxdamage <default - 175> - if a Civilian does more damage than this to other Civilians, then he can be killed by other Civilians without fear of losing karma
dec_confirm_agent <default - 100> - amount of money an Agent gets for confirming a dead body of an Agent
dec_confirm_vip <default - 200> - amount of money an Agent gets for confirming a dead body of the VIP
dec_maxweapons <default - 2> - amount of weapons a player can carry
dec_maxweapons_unique <default - 2> - amount of unique weapons a player can carry

Admin-only console commands:
dec_restartround - restarts the round

FAQ:

Q: I have been RDM'ed!
A: There is no such thing as RDM in this gamemode. If you have been killed it means that you were suspected of being an Agent/VIP. Stop whining.

Q: What does karma do?
A: Karma increases or decreases starting money. If your karma goes below 60%, you get kicked.

Q: I am moving my mouse wheel, but the amount of money I should give to a player does not increase.
A: The mouse wheel has to be bound to next/previous weapon selection in order to work.

Credits:
trotskygrad - ideas, HUD concept
Kogitsune - ideas
Sam6420 - ideas
Jvs - tips on how to optimize client-side stuff

P.S. I have created a thread for this gamemode on Facepunch Forums (www.facepunch.com). If you find a bug or have a suggestion, look up the thread there, and post your bug/suggestion.

Known bugs:
Crouching down with a concealed knife makes you look like you have it drawn - no idea how to fix this