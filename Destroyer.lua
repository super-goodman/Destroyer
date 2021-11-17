items = {[30809]=true,[6256]=true,[9333]=true,[9334]=true,[9332]=true,[1645]=true,[4599]=true}

local b1 = CreateFrame("Button", "Destroyer", GuildRosterFrame, "UIPanelButtonTemplate")
b1:SetSize(120 ,18)
b1:SetText("摧毁者：无钱")
b1:SetPoint("TOPRIGHT",-390,-26)
b1:SetScript("OnClick", function() 
      for b=0,4,1 do 
         for s =1,32,1 do 
            local id=select(10,GetContainerItemInfo(b,s)) 
            if items[id] then 
               PickupContainerItem(b,s) 
               DeleteCursorItem() 
            end 
         end 
      end
end)