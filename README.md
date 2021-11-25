# Destroyer
安装方法：
打开压缩文件,将Destroyer文件夹解压进\World of Warcraft\_classic_\Interface\AddOns目录下
（不是Destroyer-main文件夹）

用途：魔兽世界自动摧毁物品插件，不在列表中的一切都会被摧毁

添加摧毁物品方法：
``` lua
--现在是摧毁一切，除了炉石，绿色品质的所有物品。如果，ID物品为[23117],[23077]的物品也不会被删除
--设置保留所有等于对应ID的物品
containItems = {[6948]=true}
--设置保留所有该稀有度的物品1(目前为绿色)
containItemQualitySet1 = "Uncommon"
--设置保留所有该稀有度的物品2(目前为无)
containItemQualitySet2 = "Heirloom"
--设置必须删除的物品
mustDeleteItem = {[23117]=true,[23077]=true,}
```
添加一个物品ID为21929的物品，我们不想摧毁它，只需在其中加入[21929]=true
``` lua
items = {[6948]=true,[21929]=true}
``` 

保留所有品质为白色的物品
``` lua
containItemQualitySet1 = "Common"
``` 

保留所有品质为白色和绿色的物品
``` lua
--设置保留所有该稀有度的物品1(目前为白色)
containItemQualitySet1 = "Common"
--设置保留所有该稀有度的物品2(目前为绿色)
containItemQualitySet2 = "Uncommon"
``` 

保留特定ID的物品
``` lua
mustDeleteItem = {[23117]=true,[23077]=true}
``` 
