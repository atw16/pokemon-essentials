module PokeBattle_BattleCommon
  def pbStorePokemon(pokemon)
    if !(pokemon.isShadow? rescue false)
      if pbDisplayConfirm(_INTL("Would you like to give a nickname to {1}?",pokemon.name))
        species=PBSpecies.getName(pokemon.species)
        nickname=@scene.pbNameEntry(_INTL("{1}'s nickname?",species),pokemon)
        pokemon.name=nickname if nickname!=""
      end
    end
    if self.pbPlayer.party.length<6
      self.pbPlayer.party[self.pbPlayer.party.length]=pokemon
      return
    else
      pokemon2 = -1
      if pbDisplayConfirm(_INTL("Would you like to keep {1} in your party?",pokemon.name))
        pbDisplayPaused(_INTL("Please select a Pokémon to swap from your party."))
        pbChoosePokemon(1,2)
        poke = pbGet(1)
      if poke != -1
        pokemon2 = pokemon
        pokemon = self.pbPlayer.party[poke]
        pbRemovePokemonAt(poke)
        self.pbPlayer.party[self.pbPlayer.party.length]=pokemon2
      end
    end
      oldcurbox=@peer.pbCurrentBox()
      storedbox=@peer.pbStorePokemon(self.pbPlayer,pokemon) 
      creator=@peer.pbGetStorageCreator()
      return if storedbox<0
      curboxname=@peer.pbBoxName(oldcurbox)
      boxname=@peer.pbBoxName(storedbox)
      if storedbox!=oldcurbox
        if creator
          pbDisplayPaused(_INTL("Box \"{1}\" on {2}'s PC was full.",curboxname,creator))
        else
          pbDisplayPaused(_INTL("Box \"{1}\" on someone's PC was full.",curboxname))
        end
          pbDisplayPaused(_INTL("{1} was transferred to box \"{2}\".",pokemon.name,boxname))
      else
        if creator
          pbDisplayPaused(_INTL("{1} was transferred to {2}'s PC.",pokemon.name,creator))
        else
          pbDisplayPaused(_INTL("{1} was transferred to someone's PC.",pokemon.name))
        end
          pbDisplayPaused(_INTL("It was stored in box \"{1}\".",boxname))
      end
      if pokemon2 != -1
        pbMEPlay("BWLevelUp")
        pbDisplayPaused(_INTL("{2} has been added to {1}'s party!",$Trainer.name,pokemon2.name))
      end
    end
  end
end


def pbStorePokemon(pokemon)
  if pbBoxesFull?
    pbMessage(_INTL("There's no more room for Pokémon!\1"))
    pbMessage(_INTL("The Pokémon Boxes are full and can't accept any more!"))
    return
  end
  pokemon.pbRecordFirstMoves
  if $Trainer.party.length<6
    $Trainer.party[$Trainer.party.length] = pokemon
  else
    pokemon2 = -1
    if pbConfirmMessage(_INTL("Would you like to keep {1} in your party?",pokemon.name))
      pbMessage(_INTL("Please select a Pokémon to swap from your party."))
      pbChoosePokemon(1,2)
      poke = pbGet(1)
      if poke != -1
        pokemon2 = pokemon
        pokemon = $Trainer.party[poke]
        pbRemovePokemonAt(poke)
        $Trainer.party[$Trainer.party.length] = pokemon2
      end
    end
    oldcurbox = $PokemonStorage.currentBox
    storedbox = $PokemonStorage.pbStoreCaught(pokemon)
    curboxname = $PokemonStorage[oldcurbox].name
    boxname = $PokemonStorage[storedbox].name
    creator = nil
    creator = pbGetStorageCreator if $PokemonGlobal.seenStorageCreator
    if storedbox!=oldcurbox
      if creator
        pbMessage(_INTL("Box \"{1}\" on {2}'s PC was full.\1",curboxname,creator))
      else
        pbMessage(_INTL("Box \"{1}\" on someone's PC was full.\1",curboxname))
      end
        pbMessage(_INTL("{1} was transferred to box \"{2}.\"",pokemon.name,boxname))
    else
      if creator
        pbMessage(_INTL("{1} was transferred to {2}'s PC.\1",pokemon.name,creator))
      else
        pbMessage(_INTL("{1} was transferred to someone's PC.\1",pokemon.name))
      end
        pbMessage(_INTL("It was stored in box \"{1}.\"",boxname))
    end
    if pokemon2 != -1
      pbMEPlay("BWLevelUp")
      pbMessage(_INTL("{2} has been added to {1}'s party!",$Trainer.name,pokemon2.name))
    end
  end
end
