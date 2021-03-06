#===============================================================================
#  New animated and modular Title Screen for Pokemon Essentials
#    by Luka S.J.
#
#  ONLY FOR Essentials v17.x
# ----------------
#  Configuration constants for the script. All the various constants have been
#  commented to label what each of them does. Please make sure to read what
#  they do, and how to use them. Most of this script is just green text.
#
#  A lot of time and effort went into making this an extensive and comprehensive
#  resource. So please be kind enough to give credit when using it.
#===============================================================================
=begin
--------------------------------------------------------------------------------
                        LIST OF AVAILABLE MODIFIERS
--------------------------------------------------------------------------------

    most visuals (excluding backgrounds and overlays) can be positioned around
    the screen by appending a _xN and _yN to their symbol name, where the N
    denotes the numeric value of their respective coordinate
    some visuals will also allow you to append _zN to their symbol name, where
    N denotes the numeric value of item's Z positioning
    (effects usually default to 30, while overlay and misc items default to 100
     keep it under 900 in order for the visuals of the intro animations to
     function properly)

    underscores are NOT allowed in file names!

<<  BACKGROUNDS >> (not additive)

    defaults to Graphics/Titles/ModularTS/Backgrounds/background if no
    background is added as a modifier
    backgrounds will always appear as the bottom most layer
    only one background can be selected at a time

    "background1"   -> "Digital" style
    "background2"   -> Ultra Wormhole style
    "background3"   -> Space Dust
    "background4"   -> X/Y Gradient
    "background5"   -> Rainbow Gradient
    "background6"   -> Outdoor Panorama
    "background7"   -> Mother Beast Lusamine VS BG
    "background8"   -> Gen 5 Evolution BG
    "background9"   -> Z-Move-like BG
    "background10"  -> Silhouette ala D/P/Pt
    "background11"  -> Simple Scrolling background
    "background12"  -> Crystal Formation

    "background:XXX"  -> to use a static background image, do not add any of the
                         specific modifiers and replace XXX with a valid
                         filename stored in
                         Graphics/Titles/ModularTS/Backgrounds/
                         (do NOT specify the full path)

<<  OVERLAYS  >>

    overlays appear as the top most layer (aside from the game's logo)

    "overlay1"      -> Horizontally Scrolling (to the right) (scrolling001)
    "overlay2"      -> Horizontally Scrolling (to the left) (scrolling002)
    "overlay3"      -> Horizontally Scrolling Clouds (pinned bottom left) (scrolling003)
    "overlay4"      -> Vertically Scrolling (scrolling004)
    "overlay5"      -> Black Bars (with little streaks that shine)
    "overlay6"      -> Star Constellation
    "overlay7"      -> Waveforms

    "overlay:XXX"   -> Static Image, replace XXX with a valid filename
                       stored in Graphics/Titles/ModularTS/Overlays/
                       (do NOT specify the full path)

    scrolling overlays allow you to append :XXX to the overlay name to load a
    custom graphic in case you want to stack multiple different scrolling
    overlays, where XXX denotes a valid file name stored in
    Graphics/Titles/ModularTS/Overlays/
    (do NOT specify the full path)
    these also allow you to append _sN to their name in order to modify their
    scrolling speed, where N is a numeric value denoting the speed
    (higher value means higher speed; defaults to 1)

<<  EFFECTS  >>

    "effect1"       -> Thin Rays (emitted from center)
    "effect2"       -> Smoke (dispersed from center)
    "effect3"       -> Vacuum Waves
    "effect4"       -> Thick Rays (emitted from center)
    "effect5"       -> Shine Particles (dispersed from center)
    "effect6"       -> Shine Particle (glowing)
    "effect7"       -> Shine Particle (spinning)
    "effect8"       -> Sun Rays & Lens Flare (top left corner)
    "effect9"       -> Electric Beam + Sparks
    "effect10"      -> Row of Fire Particles
    "effect11"      -> Adds a slowly spinning element
    "effect12"      -> Mother Beast Lusamine VS Particles

<<  MISCELLANEOUS  >>

    "misc1"         -> Trainer Running (bottom right)
    "misc2"         -> Pokemon Running (bottom middle)
    "misc3"         -> Static Pokemon (can have glowing overlay)
    "misc4"         -> Animated Pokemon (additional config below)
                       allows for scaling by appending _sN to the symbol name
                       where N is the numeric number of the zoom
    "misc5:XXX"     -> Static Pokemon Image, replace XXX with an appropriate
                       filename stored in Graphics/Titles/ModularTS/Overlays/
                       (do NOT specify the full path)

    "bgm:XXX"       -> Specify specific BGM to use with the title screen
                       replace XXX with a valid audio filename
                       if modifier is not present, BGM defaults to whatever
                       file is defined in the RMXP system
                       (do NOT specify the full path)

    "intro:N"       -> Defines which intro animation to play with the title screen
                       replace N with a numeric value
                           :1  -  FRLG styled
                           :2  -  HGSS styled
                           :3  -  ORAS styled
                           :4  -  DPPT styled
                           :5  -  Faded Zoom
                           :6  -  XY styled
                           :7  -  Hyper Drive

<<  LOGO EFFECTS  >>

    "logoX:N"       -> Adjusts the x coordinate of the Logo position
    "logoY:N"       -> Adjusts the y coordinate of the Logo position
    "logo:bounce"   -> Adds bouncing animation to Logo
    "logo:glow"     -> Adds glowing animation to Logo
    "logo:shine"    -> Adds an animated shine overlay to Logo
    "logo:sparkle"  -> Adds sparkles to logo

  !!The order in which you add your modifiers can have an impact on their
    Z indexing!!

--------------------------------------------------------------------------------
=end
if defined?(PluginManager)
  PluginManager.register({
    :name => "Modular Title Screen",
    :version => "2.1",
    :link => "https://luka-sj.com/res/modts",
    :dependencies => [
      ["Luka's Scripting Utilities", "3.0"]
    ],
    :credits => ["Luka S.J."]
  })
else
  raise "This script is only compatible with Essentials v18.x!"
end
#-------------------------------------------------------------------------------
# Configuration constant used to style the Title Screen
# Add multiple modifiers to add visual effects to the Title Screen
# Non additive modifiers do not stack i.e. you can only use one of each type
MTS_MODIFIERS = ["background1", "logo:bounce", "effect9", "logo:shine", "intro:7", "bgm:BWTitle.ogg"
#-------------------------------------------------------------------------------
#                                  PRESETS
#-------------------------------------------------------------------------------
  # Electric Nightmare
  #"background1", "logo:bounce", "effect9", "logo:shine", "intro:4"

  # Trainer Adventure
  #"background6", "misc1", "overlay5", "effect8", "logo:glow", "bgm:title_hgss", "intro:2"

  # Enter the Ultra Wormhole
  #"background2", "effect1", "effect5", "overlay:static003", "logo:glow", "intro:7"

  # Ugly Rainbow
  #"background5", "logo:sparkle", "overlay:static004", "effect1", "intro:5"

  # Ocean Breeze
  #"background11", "intro:1", "logoY:172", "logo:sparkle", "logo:shine", "overlay:blue_z25", "misc5:blastoise_x294_y118", "effect5_y106", "effect4_y106", "bgm:title_frlg"

  # Evolution
  #"background8", "effect7_y272", "effect6_y272", "effect4_y272", "effect5_y272", "logoY:172", "misc4_y312", "overlay5", "bgm:title_rse", "intro:3"

  # Burning Red (gen 1)
  #"background:frlg", "intro:1", "effect10_y308", "overlay:frlg", "logoX:204", "logoY:164", "logo:sparkle", "misc5:charizard_x284_y142", "bgm:title_frlg"

  # Heart of Gold (gen 2)
  #"background:dawn", "intro:2", "logoY:172", "logo:glow", "misc2", "effect11_x368_y112", "effect6_x368_y112", "effect4_x368_y112", "overlay3", "bgm:title_hgss"

  # Sapphire Abyss (gen 3)
  #"background:rse", "intro:3", "misc3_x260_y236", "overlay4", "logoY:172", "logo:sparkle", "logo:shine", "effect3_y236", "bgm:title_rse"

  # Platinum Shade (gen 4)
  #"background10", "intro:4", "overlay7", "bgm:title_dppt", "logoY:172"

  # Dark Display (gen 5)
  #"background:bw", "overlay2", "logoY:172", "logo:shine", "misc4_s2_x284_y339", "effect6_y312", "bgm:title_bw"

  # Forest Sky (gen 6)
  #"background4", "intro:6", "effect4", "effect5", "effect7", "overlay:static002", "bgm:title_xy"

  # Cosmic Vibes (gen 7)
  #"background3", "intro:7", "effect5", "effect6", "overlay6", "logo:shine", "bgm:title_sm"
#-------------------------------------------------------------------------------
#                  V V     add your modifiers in here     V V
#-------------------------------------------------------------------------------


] # end of config constant
#-------------------------------------------------------------------------------
# Other config
#-------------------------------------------------------------------------------
# Config used for determining the cry of species to play, along with displaying
# a certain Pokemon sprite if applicable. Leave it as nil in order not to play
# a species cry, otherwise set as either a symbolic or numeric value
MTS_SPECIES = :PIKACHU
# Applies a form to Pokemon species
MTS_SPECIES_FORM = 0
# Applies female form
MTS_SPECIES_FEMALE = false
# Applies shiny variant
MTS_SPECIES_SHINY = false
# Applies backsprite
MTS_SPECIES_BACK = false

# Config to reposition the "Press Enter" text across the screen
# keep values at nil to keep at default position
# format is [x,y]
MTS_START_POS = [nil,nil]

#===============================================================================
# Code used to run actual scripts from the .rxdata
# DO NOT TOUCH THIS PART!!
#===============================================================================
File.runScript("Data/Plugins/MODTS.rxdata")