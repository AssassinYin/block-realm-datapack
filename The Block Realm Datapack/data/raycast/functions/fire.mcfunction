summon marker ~ ~ ~ {Tags:["raycaster"]}

## distance = #itt * step_size = 80 * 0.25 = 20 blocks
scoreboard players set .itt raycast 80

## temporary tag to remember who fired the raycast
tag @s add this
## anchors raycast starting position to the eyes
execute anchored eyes positioned ^ ^ ^ as @e[type=marker,tag=raycaster] run function raycast:raycast
tag @s remove this

kill @e[type=marker,tag=raycaster]

