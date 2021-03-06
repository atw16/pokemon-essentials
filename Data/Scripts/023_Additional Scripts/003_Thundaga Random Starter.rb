#==============================================================================#
#                            Randomized Starters                               #
#                                by Thundaga                                   #
#==============================================================================#

# Picks one Pokemon at random from the array and give it to the player
# at the level specified
def pbGrantRandomPokemon(pokemonArray,level)
  pokemon = pokemonArray[rand(pokemonArray.length())]
  pbAddPokemon(pokemon,level)
end

# Returns a random Pokemon from the specified array
def pbGetRandomPokemon(pokemonArray)
  pokemon = pokemonArray[rand(pokemonArray.length())]
  return pokemon
end

# Arrays of Pokemon. Make more to be able to pull from more random pools.
RANDOM_GRASS = [
:BULBASAUR,
:CHIKORITA,
:TREECKO,
:TURTWIG,
:SNIVY,
:CHESPIN]

RANDOM_FIRE = [
:CHARMANDER,
:CYNDAQUIL,
:TORCHIC,
:CHIMCHAR,
:TEPIG,
:FENNEKIN]

RANDOM_WATER = [
:SQUIRTLE,
:TOTODILE,
:MUDKIP,
:PIPLUP,
:OSHAWOTT,
:FROAKIE]

RANDOM_LEGENDS = [
:ARTICUNO,:ZAPDOS,:MOLTRES,:MEWTWO,
:RAIKOU,:ENTEI,:SUICUNE,:LUGIA,:HOOH,
:REGIROCK,:REGICE,:REGISTEEL,:LATIAS,:LATIOS,:KYOGRE,:GROUDON,:RAYQUAZA,
:UXIE,:MESPRIT,:AZELF,:DIALGA,:PALKIA,:HEATRAN,:REGIGAS,:GIRATINA,:CRESSELIA,
:COBALION,:TERRAKION,:VIRIZION,:TORNADUS,:THUNDURUS,:RESHIRAM,:ZEKROM,
:LANDORUS,:KYUREM
]

RANDOM_ALL = [
:BULBASAUR,:IVYSAUR,:VENUSAUR,
:CHARMANDER,:CHARMELEON,:CHARIZARD,
:SQUIRTLE,:WARTORTLE,:BLASTOISE,
:CATERPIE,:METAPOD,:BUTTERFREE,
:WEEDLE,:KAKUNA,:BEEDRILL,
:PIDGEY,:PIDGEOTTO,:PIDGEOT,
:RATTATA,:RATICATE,
:SPEAROW,:FEAROW,
:EKANS,:ARBOK,
:PIKACHU,:RAICHU,
:SANDSHREW,:SANDSLASH,
:NIDORANfE,:NIDORINA,:NIDOQUEEN,
:NIDORANmA,:NIDORINO,:NIDOKING,
:CLEFAIRY,:CLEFABLE,
:VULPIX,:NINETALES,
:JIGGLYPUFF,:WIGGLYTUFF,
:ZUBAT,:GOLBAT,
:ODDISH,:GLOOM,:VILEPLUME,
:PARAS,:PARASECT,
:VENONAT,:VENOMOTH,
:DIGLETT,:DUGTRIO,
:MEOWTH,:PERSIAN,
:PSYDUCK,:GOLDUCK,
:MANKEY,:PRIMEAPE,
:GROWLITHE,:ARCANINE,
:POLIWAG,:POLIWHIRL,:POLIWRATH,
:ABRA,:KADABRA,:ALAKAZAM,
:MACHOP,:MACHOKE,:MACHAMP,
:BELLSPROUT,:WEEPINBELL,:VICTREEBEL,
:TENTACOOL,:TENTACRUEL,
:GEODUDE,:GRAVELER,:GOLEM,
:PONYTA,:RAPIDASH,
:SLOWPOKE,:SLOWBRO,
:MAGNEMITE,:MAGNETON,
:FARFETCHD,
:DODUO,:DODRIO,
:SEEL,:DEWGONG,
:GRIMER,:MUK,
:SHELLDER,:CLOYSTER,
:GASTLY,:HAUNTER,:GENGAR,
:ONIX,
:DROWZEE,:HYPNO,
:KRABBY,:KINGLER,
:VOLTORB,:ELECTRODE,
:EXEGGCUTE,:EXEGGUTOR,
:CUBONE,:MAROWAK,
:HITMONLEE,
:HITMONCHAN,
:LICKITUNG,
:KOFFING,:WEEZING,
:RHYHORN,:RHYDON,
:CHANSEY,
:TANGELA,
:KANGASKHAN,
:HORSEA,:SEADRA,
:GOLDEEN,:SEAKING,
:STARYU,:STARMIE,
:MRMIME,
:SCYTHER,
:JYNX,
:ELECTABUZZ,
:MAGMAR,
:PINSIR,
:TAUROS,
:MAGIKARP,:GYARADOS,
:LAPRAS,
:DITTO,
:EEVEE,:VAPOREON,:JOLTEON,:FLAREON,
:PORYGON,
:OMANYTE,:OMASTAR,
:KABUTO,:KABUTOPS,
:AERODACTYL,
:SNORLAX,
:ARTICUNO,
:ZAPDOS,
:MOLTRES,
:DRATINI,:DRAGONAIR,:DRAGONITE,
:MEWTWO,
:MEW,
:CHIKORITA,:BAYLEEF,:MEGANIUM,
:CYNDAQUIL,:QUILAVA,:TYPHLOSION,
:TOTODILE,:CROCONAW,:FERALIGATR,
:SENTRET,:FURRET,
:HOOTHOOT,:NOCTOWL,
:LEDYBA,:LEDIAN,
:SPINARAK,:ARIADOS,
:CROBAT,
:CHINCHOU,:LANTURN,
:PICHU,
:CLEFFA,
:IGGLYBUFF,
:TOGEPI,:TOGETIC,
:NATU,:XATU,
:MAREEP,:FLAAFFY,:AMPHAROS,
:BELLOSSOM,
:MARILL,:AZUMARILL,
:SUDOWOODO,
:POLITOED,
:HOPPIP,:SKIPLOOM,:JUMPLUFF,
:AIPOM,
:SUNKERN,:SUNFLORA,
:YANMA,
:WOOPER,:QUAGSIRE,
:ESPEON,
:UMBREON,
:MURKROW,
:SLOWKING,
:MISDREAVUS,
:UNOWN,
:WOBBUFFET,
:GIRAFARIG,
:PINECO,:FORRETRESS,
:DUNSPARCE,
:GLIGAR,
:STEELIX,
:SNUBBULL,:GRANBULL,
:QWILFISH,
:SCIZOR,
:SHUCKLE,
:HERACROSS,
:SNEASEL,
:TEDDIURSA,:URSARING,
:SLUGMA,:MAGCARGO,
:SWINUB,:PILOSWINE,
:CORSOLA,
:REMORAID,:OCTILLERY,
:DELIBIRD,
:MANTINE,
:SKARMORY,
:HOUNDOUR,:HOUNDOOM,
:KINGDRA,
:PHANPY,:DONPHAN,
:PORYGON2,
:STANTLER,
:SMEARGLE,
:TYROGUE,:HITMONTOP,
:SMOOCHUM,
:ELEKID,
:MAGBY,
:MILTANK,
:BLISSEY,
:RAIKOU,
:ENTEI,
:SUICUNE,
:LARVITAR,:PUPITAR,:TYRANITAR,
:LUGIA,
:HOOH,
:CELEBI,
:TREECKO,:GROVYLE,:SCEPTILE,
:TORCHIC,:COMBUSKEN,:BLAZIKEN,
:MUDKIP,:MARSHTOMP,:SWAMPERT,
:POOCHYENA,:MIGHTYENA,
:ZIGZAGOON,:LINOONE,
:WURMPLE,:SILCOON,:BEAUTIFLY,:CASCOON,:DUSTOX,
:LOTAD,:LOMBRE,:LUDICOLO,
:SEEDOT,:NUZLEAF,:SHIFTRY,
:TAILLOW,:SWELLOW,
:WINGULL,:PELIPPER,
:RALTS,:KIRLIA,:GARDEVOIR,
:SURSKIT,:MASQUERAIN,
:SHROOMISH,:BRELOOM,
:SLAKOTH,:VIGOROTH,:SLAKING,
:NINCADA,:NINJASK,:SHEDINJA,
:WHISMUR,:LOUDRED,:EXPLOUD,
:MAKUHITA,:HARIYAMA,
:AZURILL,
:NOSEPASS,
:SKITTY,:DELCATTY,
:SABLEYE,
:MAWILE,
:ARON,:LAIRON,:AGGRON,
:MEDITITE,:MEDICHAM,
:ELECTRIKE,:MANECTRIC,
:PLUSLE,
:MINUN,
:VOLBEAT,
:ILLUMISE,
:ROSELIA,
:GULPIN,:SWALOT,
:CARVANHA,:SHARPEDO,
:WAILMER,:WAILORD,
:NUMEL,:CAMERUPT,
:TORKOAL,
:SPOINK,:GRUMPIG,
:SPINDA,
:TRAPINCH,:VIBRAVA,:FLYGON,
:CACNEA,:CACTURNE,
:SWABLU,:ALTARIA,
:ZANGOOSE,
:SEVIPER,
:LUNATONE,
:SOLROCK,
:BARBOACH,:WHISCASH,
:CORPHISH,:CRAWDAUNT,
:BALTOY,:CLAYDOL,
:LILEEP,:CRADILY,
:ANORITH,:ARMALDO,
:FEEBAS,:MILOTIC,
:CASTFORM,
:KECLEON,
:SHUPPET,:BANETTE,
:DUSKULL,:DUSCLOPS,
:TROPIUS,
:CHIMECHO,
:ABSOL,
:WYNAUT,
:SNORUNT,:GLALIE,
:SPHEAL,:SEALEO,:WALREIN,
:CLAMPERL,:HUNTAIL,:GOREBYSS,
:RELICANTH,
:LUVDISC,
:BAGON,:SHELGON,:SALAMENCE,
:BELDUM,:METANG,:METAGROSS,
:REGIROCK,
:REGICE,
:REGISTEEL,
:LATIAS,
:LATIOS,
:KYOGRE,
:GROUDON,
:RAYQUAZA,
:JIRACHI,
:DEOXYS,
:TURTWIG,:GROTLE,:TORTERRA,
:CHIMCHAR,:MONFERNO,:INFERNAPE,
:PIPLUP,:PRINPLUP,:EMPOLEON,
:STARLY,:STARAVIA,:STARAPTOR,
:BIDOOF,:BIBAREL,
:KRICKETOT,:KRICKETUNE,
:SHINX,:LUXIO,:LUXRAY,
:BUDEW,:ROSERADE,
:CRANIDOS,:RAMPARDOS,
:SHIELDON,:BASTIODON,
:BURMY,:WORMADAM,:MOTHIM,
:COMBEE,:VESPIQUEN,
:PACHIRISU,
:BUIZEL,:FLOATZEL,
:CHERUBI,:CHERRIM,
:SHELLOS,:GASTRODON,
:AMBIPOM,
:DRIFLOON,:DRIFBLIM,
:BUNEARY,:LOPUNNY,
:MISMAGIUS,
:HONCHKROW,
:GLAMEOW,:PURUGLY,
:CHINGLING,
:STUNKY,:SKUNTANK,
:BRONZOR,:BRONZONG,
:BONSLY,
:MIMEJR,
:HAPPINY,
:CHATOT,
:SPIRITOMB,
:GIBLE,:GABITE,:GARCHOMP,
:MUNCHLAX,
:RIOLU,:LUCARIO,
:HIPPOPOTAS,:HIPPOWDON,
:SKORUPI,:DRAPION,
:CROAGUNK,:TOXICROAK,
:CARNIVINE,
:FINNEON,:LUMINEON,
:MANTYKE,
:SNOVER,:ABOMASNOW,
:WEAVILE,
:MAGNEZONE,
:LICKILICKY,
:RHYPERIOR,
:TANGROWTH,
:ELECTIVIRE,
:MAGMORTAR,
:TOGEKISS,
:YANMEGA,
:LEAFEON,
:GLACEON,
:GLISCOR,
:MAMOSWINE,
:PORYGONZ,
:GALLADE,
:PROBOPASS,
:DUSKNOIR,
:FROSLASS,
:ROTOM,
:UXIE,
:MESPRIT,
:AZELF,
:DIALGA,
:PALKIA,
:HEATRAN,
:REGIGIGAS,
:GIRATINA,
:CRESSELIA,
:PHIONE,
:MANAPHY,
:DARKRAI,
:SHAYMIN,
:ARCEUS,
:VICTINI,
:SNIVY,:SERVINE,:SERPERIOR,
:TEPIG,:PIGNITE,:EMBOAR,
:OSHAWOTT,:DEWOTT,:SAMUROTT,
:PATRAT,:WATCHOG,
:LILLIPUP,:HERDIER,:STOUTLAND,
:PURRLOIN,:LIEPARD,
:PANSAGE,:SIMISAGE,
:PANSEAR,:SIMISEAR,
:PANPOUR,:SIMIPOUR,
:MUNNA,:MUSHARNA,
:PIDOVE,:TRANQUILL,:UNFEZANT,
:BLITZLE,:ZEBSTRIKA,
:ROGGENROLA,:BOLDORE,:GIGALITH,
:WOOBAT,:SWOOBAT,
:DRILBUR,:EXCADRILL,
:AUDINO,
:TIMBURR,:GURDURR,:CONKELDURR,
:TYMPOLE,:PALPITOAD,:SEISMITOAD,
:THROH,
:SAWK,
:SEWADDLE,:SWADLOON,:LEAVANNY,
:VENIPEDE,:WHIRLIPEDE,:SCOLIPEDE,
:COTTONEE,:WHIMSICOTT,
:PETILIL,:LILLIGANT,
:BASCULIN,
:SANDILE,:KROKOROK,:KROOKODILE,
:DARUMAKA,:DARMANITAN,
:MARACTUS,
:DWEBBLE,:CRUSTLE,
:SCRAGGY,:SCRAFTY,
:SIGILYPH,
:YAMASK,:COFAGRIGUS,
:TIRTOUGA,:CARRACOSTA,
:ARCHEN,:ARCHEOPS,
:TRUBBISH,:GARBODOR,
:ZORUA,:ZOROARK,
:MINCCINO,:CINCCINO,
:GOTHITA,:GOTHORITA,:GOTHITELLE,
:SOLOSIS,:DUOSION,:REUNICLUS,
:DUCKLETT,:SWANNA,
:VANILLITE,:VANILLISH,:VANILLUXE,
:DEERLING,:SAWSBUCK,
:EMOLGA,
:KARRABLAST,:ESCAVALIER,
:FOONGUS,:AMOONGUSS,
:FRILLISH,:JELLICENT,
:ALOMOMOLA,
:JOLTIK,:GALVANTULA,
:FERROSEED,:FERROTHORN,
:KLINK,:KLANG,:KLINKLANG,
:TYNAMO,:EELEKTRIK,:EELEKTROSS,
:ELGYEM,:BEHEEYEM,
:LITWICK,:LAMPENT,:CHANDELURE,
:AXEW,:FRAXURE,:HAXORUS,
:CUBCHOO,:BEARTIC,
:CRYOGONAL,
:SHELMET,:ACCELGOR,
:STUNFISK,
:MIENFOO,:MIENSHAO,
:DRUDDIGON,
:GOLETT,:GOLURK,
:PAWNIARD,:BISHARP,
:BOUFFALANT,
:RUFFLET,:BRAVIARY,
:VULLABY,:MANDIBUZZ,
:HEATMOR,
:DURANT,
:DEINO,:ZWEILOUS,:HYDREIGON,
:LARVESTA,:VOLCARONA,
:COBALION,
:TERRAKION,
:VIRIZION,
:TORNADUS,
:THUNDURUS,
:RESHIRAM,
:ZEKROM,
:LANDORUS,
:KYUREM,
:KELDEO,
:MELOETTA,
:GENESECT,
:CHESPIN,:QUILLADIN,:CHESNAUGHT,
:FENNEKIN,:BRAIXEN,:DELPHOX,
:FROAKIE,:FROGADIER,:GRENINJA,
:BUNNELBY,:DIGGERSBY,
:FLETCHLING,:FLETCHINDER,:TALONFLAME,
:SCATTERBUG,:SPEWPA,:VIVILLON,
:LITLEO,:PYROAR,
:FLABEBE,:FLOETTE,:FLORGES,
:SKIDDO,:GOGOAT,
:PANCHAM,:PANGORO,
:FURFROU,
:ESPURR,:MEOWSTIC,
:HONEDGE,:DOUBLADE,:AEGISLASH,
:SPRITZEE,:AROMATISSE,
:SWIRLIX,:SLURPUFF,
:INKAY,:MALAMAR,
:BINACLE,:BARBARACLE,
:SKRELP,:DRAGALGE,
:CLAUNCHER,:CLAWITZER,
:HELIOPTILE,:HELIOLISK,
:TYRUNT,:TYRANTRUM,
:AMAURA,:AURORUS,
:SYLVEON,
:HAWLUCHA,
:DEDENNE,
:CARBINK,
:GOOMY,:SLIGGOO,:GOODRA,
:KLEFKI,
:PHANTUMP,:TREVENANT,
:PUMPKABOO,:GOURGEIST,
:BERGMITE,:AVALUGG,
:NOIBAT,:NOIVERN,
:XERNEAS,
:YVELTAL,
:ZYGARDE,
:DIANCIE,
:HOOPA,
:VOLCANION
]



RANDOM_BASE = [
:BULBASAUR,
:CHARMANDER,
:SQUIRTLE,
:CATERPIE,
:WEEDLE,
:PIDGEY,
:RATTATA,
:SPEAROW,
:EKANS,
:SANDSHREW,
:NIDORANfE,
:NIDORANmA,
:VULPIX,
:ZUBAT,
:ODDISH,
:PARAS,
:VENONAT,
:DIGLETT,
:MEOWTH,
:PSYDUCK,
:MANKEY,
:GROWLITHE,
:POLIWAG,
:ABRA,
:MACHOP,
:BELLSPROUT,
:TENTACOOL,
:GEODUDE,
:PONYTA,
:SLOWPOKE,
:MAGNEMITE,
:FARFETCHD,
:DODUO,
:SEEL,
:GRIMER,
:SHELLDER,
:GASTLY,
:ONIX,
:DROWZEE,
:KRABBY,
:VOLTORB,
:EXEGGCUTE,
:CUBONE,
:LICKITUNG,
:KOFFING,
:RHYHORN,
:TANGELA,
:KANGASKHAN,
:HORSEA,
:GOLDEEN,
:STARYU,
:SCYTHER,
:PINSIR,
:TAUROS,
:MAGIKARP,
:LAPRAS,
:DITTO,
:EEVEE,
:PORYGON,
:OMANYTE,
:KABUTO,
:AERODACTYL,
:DRATINI,
:CHIKORITA,
:CYNDAQUIL,
:TOTODILE,
:SENTRET,
:HOOTHOOT,
:LEDYBA,
:SPINARAK,
:CHINCHOU,
:PICHU,
:CLEFFA,
:IGGLYBUFF,
:TOGEPI,
:NATU,
:MAREEP,
:HOPPIP,
:AIPOM,
:SUNKERN,
:YANMA,
:WOOPER,
:MURKROW,
:MISDREAVUS,
:UNOWN,
:GIRAFARIG,
:PINECO,
:DUNSPARCE,
:GLIGAR,
:SNUBBULL,
:QWILFISH,
:SHUCKLE,
:HERACROSS,
:SNEASEL,
:TEDDIURSA,
:SLUGMA,
:SWINUB,
:CORSOLA,
:REMORAID,
:DELIBIRD,
:SKARMORY,
:HOUNDOUR,
:PHANPY,
:STANTLER,
:SMEARGLE,
:TYROGUE,
:SMOOCHUM,
:ELEKID,
:MAGBY,
:MILTANK,
:LARVITAR,
:TREECKO,
:TORCHIC,
:MUDKIP,
:POOCHYENA,
:ZIGZAGOON,
:WURMPLE,
:LOTAD,
:SEEDOT,
:TAILLOW,
:WINGULL,
:RALTS,
:SURSKIT,
:SHROOMISH,
:SLAKOTH,
:NINCADA,
:WHISMUR,
:MAKUHITA,
:AZURILL,
:NOSEPASS,
:SKITTY,
:SABLEYE,
:MAWILE,
:ARON,
:MEDITITE,
:ELECTRIKE,
:PLUSLE,
:MINUN,
:VOLBEAT,
:ILLUMISE,
:GULPIN,
:CARVANHA,
:WAILMER,
:NUMEL,
:TORKOAL,
:SPOINK,
:SPINDA,
:TRAPINCH,
:CACNEA,
:SWABLU,
:ZANGOOSE,
:SEVIPER,
:LUNATONE,
:SOLROCK,
:BARBOACH,
:CORPHISH,
:BALTOY,
:LILEEP,
:ANORITH,
:FEEBAS,
:CASTFORM,
:KECLEON,
:SHUPPET,
:DUSKULL,
:TROPIUS,
:ABSOL,
:WYNAUT,
:SNORUNT,
:SPHEAL,
:CLAMPERL,
:RELICANTH,
:LUVDISC,
:BAGON,
:BELDUM,
:TURTWIG,
:CHIMCHAR,
:PIPLUP,
:STARLY,
:BIDOOF,
:KRICKETOT,
:SHINX,
:BUDEW,
:CRANIDOS,
:SHIELDON,
:BURMY,
:COMBEE,
:PACHIRISU,
:BUIZEL,
:CHERUBI,
:SHELLOS,
:DRIFLOON,
:BUNEARY,
:GLAMEOW,
:CHINGLING,
:STUNKY,
:BRONZOR,
:BONSLY,
:MIMEJR,
:HAPPINY,
:CHATOT,
:SPIRITOMB,
:GIBLE,
:MUNCHLAX,
:RIOLU,
:HIPPOPOTAS,
:SKORUPI,
:CROAGUNK,
:CARNIVINE,
:FINNEON,
:MANTYKE,
:SNOVER,
:SNIVY,
:TEPIG,
:OSHAWOTT,
:PATRAT,
:LILLIPUP,
:PURRLOIN,
:PANSAGE,
:PANSEAR,
:PANPOUR,
:MUNNA,
:PIDOVE,
:BLITZLE,
:ROGGENROLA,
:WOOBAT,
:DRILBUR,
:AUDINO,
:TIMBURR,
:TYMPOLE,
:THROH,
:SAWK,
:SEWADDLE,
:VENIPEDE,
:COTTONEE,
:PETILIL,
:BASCULIN,
:SANDILE,
:DARUMAKA,
:MARACTUS,
:DWEBBLE,
:SCRAGGY,
:SIGILYPH,
:YAMASK,
:TIRTOUGA,
:ARCHEN,
:TRUBBISH,
:ZORUA,
:MINCCINO,
:GOTHITA,
:SOLOSIS,
:DUCKLETT,
:VANILLITE,
:DEERLING,
:EMOLGA,
:KARRABLAST,
:FOONGUS,
:FRILLISH,
:ALOMOMOLA,
:JOLTIK,
:FERROSEED,
:KLINK,
:TYNAMO,
:ELGYEM,
:LITWICK,
:AXEW,
:CUBCHOO,
:CRYOGONAL,
:SHELMET,
:STUNFISK,
:MIENFOO,
:DRUDDIGON,
:GOLETT,
:PAWNIARD,
:BOUFFALANT,
:RUFFLET,
:VULLABY,
:HEATMOR,
:DURANT,
:DEINO,
:LARVESTA,
:CHESPIN,
:FENNEKIN,
:FROAKIE,
:BUNNELBY,
:FLETCHLING,
:SCATTERBUG,
:LITLEO,
:FLABEBE,
:SKIDDO,
:PANCHAM,
:FURFROU,
:ESPURR,
:HONEDGE,
:SPRITZEE,
:SWIRLIX,
:INKAY,
:BINACLE,
:SKRELP,
:CLAUNCHER,
:HELIOPTILE,
:TYRUNT,
:AMAURA,
:HAWLUCHA,
:DEDENNE,
:CARBINK,
:GOOMY,
:KLEFKI,
:PHANTUMP,
:PUMPKABOO,
:BERGMITE,
:NOIBAT
]

#==============================================================================#