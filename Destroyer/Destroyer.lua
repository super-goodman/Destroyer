--设置保留所有等于对应ID的物品
containItems = {[6948]=true,[21929]=true}
--设置保留所有该稀有度的物品1(目前为绿色)
containItemQualitySet1 = "Uncommon"
--设置保留所有该稀有度的物品2(目前为无)
containItemQualitySet2 = "Heirloom"
--设置必须删除的物品
mustDeleteItem = {[23117]=true,[23077]=true,}


 --灰色，白色，绿色，紫色，传奇，史诗，制造物，XXXX,XXX
itemQuality =  {["Poor"] = 0,["Common"] = 1,["Uncommon"] = 2,["Rare"] = 3,["Epic"] = 4,["Legendary"] = 5,["Artifact"] = 6,["Heirloom"] = 7,["WoWToken"] = 8}


className,classFilename, classId  = UnitClass("player")
if classId == 8 then --只有法师可以加载
     
   local b1 = CreateFrame("Button", "Destroyer", GuildRosterFrame, "UIPanelButtonTemplate")
   b1:SetSize(120 ,18)
   b1:SetText("鎽ф瘉鑰咃細鏃犻挶")
   b1:SetPoint("TOPRIGHT",-390,-26)
   b1:SetScript("OnClick", function() 
         for b=0,4,1 do 
            for s =1,32,1 do 
               repeat
               local id=select(10,GetContainerItemInfo(b,s)) 
               local quality = select(4,GetContainerItemInfo(b,s)) 
               --print("ID = ",id)
               --print("quality = ",quality)
               if mustDeleteItem[id] == true then
                  PickupContainerItem(b,s) 
                  DeleteCursorItem() 
                  break
               end
               if containItems[id] == true or itemQuality[containItemQualitySet] == quality or itemQuality[containItemQualitySet2] == quality then 
                  --print(id)
                  break
               end 
               PickupContainerItem(b,s) 
               DeleteCursorItem() 
               until true
            end 
         end
         --print("qualitySet = ",itemQuality[containItemQualitySet])
   end)

end

