--���ñ������е��ڶ�ӦID����Ʒ
containItems = {[6948]=true,[21929]=true}
--���ñ������и�ϡ�жȵ���Ʒ1(ĿǰΪ��ɫ)
containItemQualitySet1 = "Uncommon"
--���ñ������и�ϡ�жȵ���Ʒ2(ĿǰΪ��)
containItemQualitySet2 = "Heirloom"
--���ñ���ɾ������Ʒ
mustDeleteItem = {[23117]=true,[23077]=true,}


 --��ɫ����ɫ����ɫ����ɫ�����棬ʷʫ�������XXXX,XXX
itemQuality =  {["Poor"] = 0,["Common"] = 1,["Uncommon"] = 2,["Rare"] = 3,["Epic"] = 4,["Legendary"] = 5,["Artifact"] = 6,["Heirloom"] = 7,["WoWToken"] = 8}


className,classFilename, classId  = UnitClass("player")
if classId == 8 then --ֻ�з�ʦ���Լ���
     
   local b1 = CreateFrame("Button", "Destroyer", GuildRosterFrame, "UIPanelButtonTemplate")
   b1:SetSize(120 ,18)
   b1:SetText("摧毁者：无钱")
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

