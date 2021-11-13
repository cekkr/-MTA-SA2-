addEventHandler('onPlayerJoin', root, function ()
    spawnPlayer(source, 1286.17578125, -1329.16015625, 13.55211353302)
    fadeCamera(source, true)
    setCameraTarget(source, source)
  end)

  local tempSkin;

addEventHandler( "onPlayerWasted", getRootElement( ), 
function() 
    tempSkin = getPlayerSkin ( source )
        setTimer( respawnAfterDeath, 3000, 1, source ) 
    end 
)

function respawnAfterDeath(source)

  spawnPlayer(source, 1286.17578125, -1329.16015625, 13.55211353302)
  setPlayerSkin(source, tempSkin)
  fadeCamera(source, true)
  setCameraTarget(source, source)

end