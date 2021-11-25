items = {[6948]=true,[21929]=true}

local b1 = CreateFrame("Button", "Destroyer", GuildRosterFrame, "UIPanelButtonTemplate")
b1:SetSize(120 ,18)
b1:SetText("摧毁者：无钱")
b1:SetPoint("TOPRIGHT",-390,-26)
b1:SetScript("OnClick", function() 
      for b=0,4,1 do 
         for s =1,32,1 do 
            repeat
            local id=select(10,GetContainerItemInfo(b,s)) 
            if items[id] == true then 
               print(id)
               break
            end 
            PickupContainerItem(b,s) 
            DeleteCursorItem() 
            --::continue::
            until true
         end 
      end
end)