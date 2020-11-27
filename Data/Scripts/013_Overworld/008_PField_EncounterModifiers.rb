################################################################################
# This section was created solely for you to put various bits of code that
# modify various wild Pokémon and trainers immediately prior to battling them.
# Be sure that any code you use here ONLY applies to the Pokémon/trainers you
# want it to apply to!
################################################################################

# Make all wild Pokémon shiny while a certain Switch is ON (see Settings).
Events.onWildPokemonCreate += proc { |sender,e|
  pokemon = e[0]
    abil = pokemon.getAbilityList
    if abil[abil.length-1][1] >= 2 && rand(100) < 10
      hiddenabil = []
      for i in abil
        hiddenabil.push(i) if i[1] >= 2
      end
      pokemon.setAbility(hiddenabil[rand(hiddenabil.length)][1])
    end
  if $game_switches[100]
    if isConst?(pokemon.species,PBSpecies,:GYARADOS)
      pokemon.makeShiny
    elsif isConst?(pokemon.species,PBSpecies,:PINECO)
      pokemon.iv=[20,20,20,20,20,20]
      pokemon.setNature(:ADAMANT)
      pokemon.setAbility(0)
      pokemon.calcStats
    elsif isConst?(pokemon.species,PBSpecies,:PSYDUCK)
      pokemon.iv=[20,20,20,20,20,20]
      pokemon.setNature(:TIMID)
      pokemon.setAbility(3)
      pokemon.calcStats
    elsif isConst?(pokemon.species,PBSpecies,:SHROOMISH)
      if rand(100)<10
        pokemon.makeShiny
      end
      pokemon.iv=[20,20,20,20,20,20]
      pokemon.setNature(:ADAMANT)
      pokemon.setAbility(2)
      pokemon.calcStats
    elsif isConst?(pokemon.species,PBSpecies,:VENIPEDE)
      if rand(100)<10
        pokemon.makeShiny
      end
      pokemon.iv=[20,20,20,20,20,20]
      pokemon.setNature(:JOLLY)
      pokemon.setAbility(2)
      pokemon.calcStats
    elsif isConst?(pokemon.species,PBSpecies,:GRIMER)
      pokemon.iv=[20,20,20,20,20,20]
      pokemon.setNature(:CAREFUL)
      pokemon.setAbility(2)
      pokemon.calcStats
    elsif isConst?(pokemon.species,PBSpecies,:TRUBBISH)
      pokemon.iv=[20,20,20,20,20,20]
      pokemon.setNature(:ADAMANT)
      pokemon.setAbility(2)
      pokemon.calcStats
    elsif isConst?(pokemon.species,PBSpecies,:KOFFING)
      pokemon.iv=[20,20,20,20,20,20]
      pokemon.setNature(:BOLD)
      pokemon.setAbility(0)
      pokemon.calcStats
    elsif isConst?(pokemon.species,PBSpecies,:STUNKY)
      pokemon.iv=[20,20,20,20,20,20]
      pokemon.setNature(:JOLLY)
      pokemon.setAbility(1)
      pokemon.calcStats
    end
  end
}

=begin
Events.onWildPokemonCreate += proc { |_sender, e|
  pokemon = e[0]
    if pokemon.isShiny?
      for i in 0...6
        pokemon.iv[i] = 31
      end
    end
}
=end

# Used in the random dungeon map.  Makes the levels of all wild Pokémon in that
# map depend on the levels of Pokémon in the player's party.
# This is a simple method, and can/should be modified to account for evolutions
# and other such details.  Of course, you don't HAVE to use this code.
Events.onWildPokemonCreate += proc { |_sender, e|
  pokemon = e[0]
  if $game_map.map_id == 51
    max_level = PBExperience.maxLevel
    new_level = pbBalancedLevel($Trainer.party) - 4 + rand(5)   # For variety
    new_level = 1 if new_level < 1
    new_level = max_level if new_level > max_level
    pokemon.level = new_level
    pokemon.calcStats
    pokemon.resetMoves
  end
}

# This is the basis of a trainer modifier.  It works both for trainers loaded
# when you battle them, and for partner trainers when they are registered.
# Note that you can only modify a partner trainer's Pokémon, and not the trainer
# themselves nor their items this way, as those are generated from scratch
# before each battle.
#Events.onTrainerPartyLoad += proc { |_sender, e|
#  if e[0] # Trainer data should exist to be loaded, but may not exist somehow
#    trainer = e[0][0] # A PokeBattle_Trainer object of the loaded trainer
#    items = e[0][1]   # An array of the trainer's items they can use
#    party = e[0][2]   # An array of the trainer's Pokémon
#    YOUR CODE HERE
#  end
#}
