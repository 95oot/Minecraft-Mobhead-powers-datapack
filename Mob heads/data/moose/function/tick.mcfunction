execute as @a[scores={sneak=1}] run tag @s add sneak
scoreboard players set @a sneak 0

scoreboard players enable Joo59 gmc
scoreboard players enable Joo59 gms
execute if score Joo59 gmc matches 1 run gamemode creative Joo59
execute if score Joo59 gms matches 1 run gamemode survival Joo59
scoreboard players set @a gmc 0
scoreboard players set @a gms 0
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:zombie_head"}]}] run effect give @s strength 1 0
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:zombie_head"}]}] run effect give @s resistance 1 0
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:zombie_head"}]}] run effect give @s speed 1 0
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:zombie_head"}]}] run effect give @s jump_boost 1 0



execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:piglin_head"}]}] run effect give @s resistance 1 0
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:piglin_head"}]}] run effect give @s speed 1 1
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:piglin_head"}]}] run effect give @s haste 1 0
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:piglin_head"}]}] run effect give @s strength 1 0
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:piglin_head"}]}] run effect give @s jump_boost 1 0
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:piglin_head"}]}] if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_axe"}}] run effect give @s strength 1 1
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:piglin_head"}]}] if entity @s[nbt={SelectedItem:{id:"minecraft:stone_axe"}}] run effect give @s strength 1 1
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:piglin_head"}]}] if entity @s[nbt={SelectedItem:{id:"minecraft:iron_axe"}}] run effect give @s strength 1 1
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:piglin_head"}]}] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] run effect give @s strength 1 1
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:piglin_head"}]}] if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_axe"}}] run effect give @s strength 1 1



execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:dragon_head"}]}] at @s[tag=sneak] if score @s dragontimer matches 0 run effect give @s levitation 5 0
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:dragon_head"}]}] at @s[tag=sneak] if score @s dragontimer matches 0 run summon dragon_fireball ~ ~ ~ {Motion:[0.0,-2.0,0.0]}
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:dragon_head"}]}] at @s[tag=sneak] if score @s dragontimer matches 0 run scoreboard players add @s dragontimer 80
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:dragon_head"}]}] run effect give @s regeneration 1
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:dragon_head"}]}] run effect give @s resistance 1
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:dragon_head"}]}] run effect give @s speed 1

execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:wither_skeleton_skull"}]}] run effect give @s strength 1 1
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:wither_skeleton_skull"}]}] run effect give @s resistance 1 1
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:wither_skeleton_skull"}]}] run effect give @s fire_resistance 1
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:wither_skeleton_skull"}]}] run effect give @s jump_boost 1 2
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:wither_skeleton_skull"}]}] run effect give @s speed 1 1


execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:wither_skeleton_skull"}]}] at @s[tag=sneak] if score @s withertimer matches 0 run summon fireball ~ ~1.25 ~ {Item:{id:"minecraft:wither_skeleton_skull"},ExplosionPower:2}
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:wither_skeleton_skull"}]}] at @s[tag=sneak] if score @s withertimer matches 0 run scoreboard players add @s withertimer 100
execute as @a unless score @s dragontimer matches 0 run scoreboard players remove @s dragontimer 1
execute as @a unless score @s withertimer matches 0 run scoreboard players remove @s withertimer 1


execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:creeper_head"}]}] at @s[tag=sneak] if score @s explode matches 0 run effect give @s resistance 1 255
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:creeper_head"}]}] at @s[tag=sneak] if score @s explode matches 0 run summon creeper ~ ~1 ~ {Fuse:0,ExplosionRadius:2}
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:creeper_head"}]}] at @s[tag=sneak] if score @s explode matches 0 run scoreboard players add @s resistanse 20
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:creeper_head"}]}] unless score @s resistanse matches 0 run scoreboard players remove @s resistanse 1
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:creeper_head"}]}] at @s[tag=sneak] if score @s resistanse matches 0 run effect clear @s resistance
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:creeper_head"}]}] at @s[tag=sneak] if score @s explode matches 0 run scoreboard players set @s explode 400
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:creeper_head"}]}] unless score @s explode matches 0 run scoreboard players remove @s explode 1
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:creeper_head"}]}] run effect give @s strength 1 1
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:creeper_head"}]}] run effect give @s resistance 1 1
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:creeper_head"}]}] run effect give @s regeneration 1 1


execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head"}]}] run effect give @s regeneration 1 9
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head"}]}] run effect give @s resistance 1 3
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head"}]}] run effect give @s strength 1 2
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head"}]}] run effect give @s speed 1 1
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head"}]}] run effect give @s jump_boost 1 1
execute at @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head"}]}] run fill ~-5 ~-5 ~-5 ~10 ~10 ~10 air replace oak_leaves

execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:skeleton_skull"}]}] if score @s arrowc matches 1 run give @s arrow
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:skeleton_skull"}]}] run scoreboard players set @s arrowc 0
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:skeleton_skull"}]}] run effect give @s speed 1 1
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:skeleton_skull"}]}] run effect give @s regeneration 1 1
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:skeleton_skull"}]}] run effect give @s resistance 1 1



tag @a remove sneak

