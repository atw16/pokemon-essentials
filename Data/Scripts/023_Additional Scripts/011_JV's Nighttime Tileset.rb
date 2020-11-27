###Nighttime tilseset from JV###

def pbGetTileBitmap(filename, tile_id, hue)
  if PBDayNight.isNight?(pbGetTimeNow) && pbResolveBitmap("Graphics/Tilesets/#{filename}_n")
    return BitmapCache.tileEx(filename, tile_id, hue){ |f|  
      AnimatedBitmap.new("Graphics/Tilesets/#{filename}_n").deanimate;
    }
  else
    return BitmapCache.tileEx(filename, tile_id, hue){ |f| 
      AnimatedBitmap.new("Graphics/Tilesets/"+filename).deanimate;
    }
  end
end
 
def pbGetTileset(name,hue=0)
  if PBDayNight.isNight?(pbGetTimeNow) && pbResolveBitmap("Graphics/Tilesets/#{name}_n")
    return AnimatedBitmap.new("Graphics/Tilesets/#{name}_n",hue).deanimate
  else
    return AnimatedBitmap.new("Graphics/Tilesets/"+name,hue).deanimate
  end
end

def pbGetAutotile(name,hue=0)
  if PBDayNight.isNight?(pbGetTimeNow) && pbResolveBitmap("Graphics/Autotiles/#{name}_n")
    return AnimatedBitmap.new("Graphics/Autotiles/#{name}_n",hue).deanimate
  else
    return AnimatedBitmap.new("Graphics/Autotiles/"+name,hue).deanimate
  end
end