
addEventHandler("onClientPreRender", root,  -- Adds the Handler
    function ()
        if getPedTargetStart(localPlayer) then --Checks if there is a Point to start From.

        --local x, y, z = getPedTargetStart(localPlayer) -- Gets the Point to start From
        local x, y, z = getPedBonePosition (localPlayer,25)
        local sx, sy, sz = getPedTargetEnd(localPlayer) -- Gets the Point where the Target Ends

        -- for testing mor space
        local agg = 0.1
        --x = x + agg
        --y = y + agg
        --z = z + agg
        --sx = sx - agg
        --sy = sy - agg
        --sz = sz - agg

        dxDrawLine3D(x, y, z, sx, sy, sz) -- Draws the Line

        local hit, _, _, _, hitEl, _, _, _, surface = processLineOfSight(x, y, z, sx, sy, sz)

        if hitEl then
            local elType = getElementType(hitEl)

            if elType then
                outputChatBox("Aimed "..elType)

                if elType == 'ped' then
                    
                end 
            end
        end

    end
end
)