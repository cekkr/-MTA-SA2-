
addEventHandler("onClientPreRender", root,  -- Adds the Handler
    function ()
        if getPedTargetStart(localPlayer) then --Checks if there is a Point to start From.

        local x, y, z = getPedTargetStart(localPlayer) -- Gets the Point to start From
        local sx, sy, sz = getPedTargetEnd(localPlayer) -- Gets the Point where the Target Ends

        dxDrawLine3D(x, y, z, sx, sy, sz) -- Draws the Line

        local hit, _, _, _, hitEl, _, _, _, surface = processLineOfSight(x, y, z, sx, sy, sz)

        if hit then
            outputChatBox("Aimed "..getElementType(hitEl))

            if getElementType(hit) == 'ped' then
                
            end 
        end

    end
end
)