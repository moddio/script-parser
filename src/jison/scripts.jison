%{var funcs:any = 

{"getItemInFrontOfUnit":"a#{return {\"function\":\"getItemInFrontOfUnit\",entity:a}}","selectedProjectile":"{return {\"function\":\"selectedProjectile\"}}","getAttributeTypeOfAttribute":"a#{return {\"function\":\"getAttributeTypeOfAttribute\",entity:a}}","playAdForPlayer":"a#{return {\"function\":\"playAdForPlayer\",entity:a}}","randNumber":"a#b#{return {\"function\":\"getRandomNumberBetween\",min:a,max:b}}","setTimeOut":"a#{return {\"function\":\"setTimeOut\",duration:a}}","facingAngle":"a#{return {\"function\":\"unitsFacingAngle\",unit:a}}","getMapHeight":"{return {\"function\":\"getMapHeight\"}}","getEntityType":"a#{return {\"function\":\"getEntityType\",entity:a}}","getSelectedEntity":"{return {\"function\":\"getSelectedEntity\"}}","rotateEntityToFacePosition":"a#b#{return {\"function\":\"rotateEntityToFacePosition\",entity:a,position:b}}","destroyEntity":"a#{return {\"function\":\"destroyEntity\",entity:a}}","setEntityDepth":"a#b#{return {\"function\":\"setEntityDepth\",entity:a,value:b}}","getItemAtSlot":"a#b#{return {\"function\":\"getItemAtSlot\",slot:a,unit:b}}","hideUnitFromPlayer":"a#b#{return {\"function\":\"hideUnitFromPlayer\",entity:a,player:b}}","showUnitToPlayer":"a#b#{return {\"function\":\"showUnitToPlayer\",entity:a,player:b}}","entitiesCollidingWithLastRaycast":"{return {\"function\":\"entitiesCollidingWithLastRaycast\"}}","getLastPurchasedUnit":"{return {\"function\":\"getLastPurchasedUnit\"}}","sendChatMessage":"a#{return {\"function\":\"sendChatMessage\",message:a}}","playSoundAtPosition":"a#b#{return {\"function\":\"playSoundAtPosition\",sound:a,position:b}}","pos":"a#b#{return {\"function\":\"xyCoordinate\",x:a,y:b}}","toFixed":"a#b#{return {\"function\":\"toFixed\",value:a,precision:b}}","getEntityState":"a#{return {\"function\":\"getEntityState\",entity:a}}","dropItemAtPosition":"a#b#{return {\"function\":\"dropItemAtPosition\",item:a,position:b}}","applyForceOnEntityAngle":"a#b#c#{return {\"function\":\"applyForceOnEntityAngle\",force:a,entity:b,angle:c}}","showInputModalToPlayer":"a#b#{return {\"function\":\"showInputModalToPlayer\",player:a,inputLabel:b}}","getItemQuantity":"a#{return {\"function\":\"getItemQuantity\",item:a}}","isPlayerLoggedIn":"a#{return {\"function\":\"isPlayerLoggedIn\",player:a}}","openDialogueForPlayer":"a#b#{return {\"function\":\"openDialogueForPlayer\",dialogue:a,player:b}}","continue":"{return {\"function\":\"continue\"}}","openWebsiteForPlayer":"a#b#{return {\"function\":\"openWebsiteForPlayer\",string:a,player:b}}","setEntityLifeSpan":"a#b#{return {\"function\":\"setEntityLifeSpan\",entity:a,lifeSpan:b}}","selectedItem":"{return {\"function\":\"selectedItem\"}}","hideUnitNameLabel":"a#{return {\"function\":\"hideUnitNameLabel\",entity:a}}","setTriggeringUnit":"a#{return {\"function\":\"setTriggeringUnit\",entity:a}}","createUnitAtPosition":"a#b#c#d#{return {\"function\":\"createUnitAtPosition\",unitType:a,entity:b,position:c,angle:d}}","hideUiTextForEveryone":"a#{return {\"function\":\"hideUiTextForEveryone\",target:a}}","playersAreFriendly":"a#b#{return {\"function\":\"playersAreFriendly\",playerA:a,playerB:b}}","hideGameSuggestionsForPlayer":"a#{return {\"function\":\"hideGameSuggestionsForPlayer\",player:a}}","cos":"a#{return {\"function\":\"cos\",angle:a}}","transformRegionDimensions":"a#b#c#d#e#{return {\"function\":\"transformRegionDimensions\",region:a,x:b,y:c,width:d,height:e}}","makeUnitInvisibleToFriendlyPlayers":"a#{return {\"function\":\"makeUnitInvisibleToFriendlyPlayers\",entity:a}}","setEntityAttributeMin":"a#b#c#{return {\"function\":\"setEntityAttributeMin\",attribute:a,entity:b,value:c}}","entityHeight":"a#{return {\"function\":\"entityHeight\",entity:a}}","allUnitsOwnedByPlayer":"a#{return {\"function\":\"allUnitsOwnedByPlayer\",player:a}}","showInviteFriendsModal":"a#{return {\"function\":\"showInviteFriendsModal\",player:a}}","showCustomModalToPlayer":"a#b#{return {\"function\":\"showCustomModalToPlayer\",htmlContent:a,player:b}}","getLastPlayerSelectingDialogueOption":"{return {\"function\":\"getLastPlayerSelectingDialogueOption\"}}","playerAttributeMax":"a#b#{return {\"function\":\"playerAttributeMax\",attribute:a,entity:b}}","getTriggeringItem":"{return {\"function\":\"getTriggeringItem\"}}","getItemParticle":"a#b#{return {\"function\":\"getItemParticle\",particleType:a,entity:b}}","allProjectilesAttachedToUnit":"a#{return {\"function\":\"allProjectilesAttachedToUnit\",entity:a}}","showUiTextForEveryone":"a#{return {\"function\":\"showUiTextForEveryone\",target:a}}","forAllItems":"a#{return {\"function\":\"forAllItems\",itemGroup:a}}","removePlayerFromPlayerGroup":"a#b#{return {\"function\":\"removePlayerFromPlayerGroup\",player:a,playerGroup:b}}","getPlayerAttribute":"a#b#{return {\"function\":\"getPlayerAttribute\",attribute:a,entity:b}}","playerIsControlledByHuman":"a#{return {\"function\":\"playerIsControlledByHuman\",player:a}}","setUnitOwner":"a#b#{return {\"function\":\"setUnitOwner\",unit:a,player:b}}","getMapWidth":"{return {\"function\":\"getMapWidth\"}}","updateItemQuantity":"a#b#{return {\"function\":\"updateItemQuantity\",entity:a,quantity:b}}","applyForceOnEntityAngleLT":"a#b#c#{return {\"function\":\"applyForceOnEntityAngleLT\",force:a,entity:b,angle:c}}","setEntityState":"a#b#{return {\"function\":\"setEntityState\",entity:a,state:b}}","entityWidth":"a#{return {\"function\":\"entityWidth\",entity:a}}","hideUnitInPlayerMinimap":"a#b#{return {\"function\":\"hideUnitInPlayerMinimap\",unit:a,player:b}}","selectedItemType":"{return {\"function\":\"selectedItemType\"}}","getPlayerCount":"{return {\"function\":\"getPlayerCount\"}}","getItemCurrentlyHeldByUnit":"a#{return {\"function\":\"getItemCurrentlyHeldByUnit\",entity:a}}","allItemsDroppedOnGround":"{return {\"function\":\"allItemsDroppedOnGround\"}}","return":"{return {\"function\":\"return\"}}","runScript":"a#{return {\"function\":\"runScript\",scriptName:a}}","addUnitToUnitGroup":"a#b#{return {\"function\":\"addUnitToUnitGroup\",unit:a,unitGroup:b}}","humanPlayers":"{return {\"function\":\"humanPlayers\"}}","lastUsedItem":"{return {\"function\":\"lastUsedItem\"}}","playerCustomInput":"a#{return {\"function\":\"playerCustomInput\",player:a}}","arctan":"a#{return {\"function\":\"arctan\",number:a}}","concat":"a#b#{return {\"function\":\"concat\",textA:a,textB:b}}","getPlayerName":"a#{return {\"function\":\"getPlayerName\",entity:a}}","getSourceItemOfProjectile":"a#{return {\"function\":\"getSourceItemOfProjectile\",entity:a}}","type":"a#{return {\"function\":\"getRandomUnitTypeFromUnitTypeGroup\",unitTypeGroup:a}}","getTriggeringRegion":"{return {\"function\":\"getTriggeringRegion\"}}","playerCameraSetZoom":"a#b#{return {\"function\":\"playerCameraSetZoom\",player:a,zoom:b}}","floor":"a#{return {\"function\":\"mathFloor\",value:a}}","setUnitNameLabel":"a#b#{return {\"function\":\"setUnitNameLabel\",unit:a,name:b}}","getUnitTypeName":"a#{return {\"function\":\"getUnitTypeName\",unitType:a}}","openShopForPlayer":"a#b#{return {\"function\":\"openShopForPlayer\",shop:a,player:b}}","y":"a#{a.function === 'xyCoordinate'?{\"function\":\"getPositionY\",position:a}: {\"function\":\"getYCoordinateOfRegion\",position:a}}","sqrt":"a#{return {\"function\":\"squareRoot\",number:a}}","closeDialogueForPlayer":"a#{return {\"function\":\"closeDialogueForPlayer\",player:a}}","comment":"{return {\"function\":\"comment\"}}","createEntityAtPositionWithDimensions":"a#b#c#d#e#f#{return {\"function\":\"createEntityAtPositionWithDimensions\",entity:a,position:b,player:c,height:d,width:e,angle:f}}","increaseVariableByNumber":"a#b#{return {\"function\":\"increaseVariableByNumber\",variable:a,number:b}}","getMouseCursorPosition":"a#{return {\"function\":\"getMouseCursorPosition\",player:a}}","getLastOverlappingUnit":"{return {\"function\":\"getLastOverlappingUnit\"}}","allItems":"{return {\"function\":\"allItems\"}}","allItemsAttachedToUnit":"a#{return {\"function\":\"allItemsAttachedToUnit\",entity:a}}","getEntireMapRegion":"{return {\"function\":\"getEntireMapRegion\"}}","playerCameraTrackUnit":"a#b#{return {\"function\":\"playerCameraTrackUnit\",player:a,unit:b}}","castAbility":"a#b#{return {\"function\":\"castAbility\",entity:a,abilityName:b}}","playersAreHostile":"a#b#{return {\"function\":\"playersAreHostile\",playerA:a,playerB:b}}","allItemsOwnedByUnit":"a#{return {\"function\":\"allItemsOwnedByUnit\",entity:a}}","computerPlayers":"{return {\"function\":\"computerPlayers\"}}","playEntityAnimation":"a#b#{return {\"function\":\"playEntityAnimation\",entity:a,animation:b}}","while":"a#{return {\"function\":\"while\",conditions:a}}","allEntities":"{return {\"function\":\"allEntities\"}}","lastPurchasedUnitTypetId":"{return {\"function\":\"lastPurchasedUnitTypetId\"}}","applyForceOnEntityXY":"a#b#c#{return {\"function\":\"applyForceOnEntityXY\",force.x:a,force.y:b,entity:c}}","showUnitInPlayerMinimap":"a#b#c#{return {\"function\":\"showUnitInPlayerMinimap\",unit:a,color:b,player:c}}","savePlayerData":"a#{return {\"function\":\"savePlayerData\",player:a}}","hideUnitNameLabelFromPlayer":"a#b#{return {\"function\":\"hideUnitNameLabelFromPlayer\",entity:a,player:b}}","regionOverlapsWithRegion":"a#b#{return {\"function\":\"regionOverlapsWithRegion\",regionA:a,regionB:b}}","allItemTypesInGame":"{return {\"function\":\"allItemTypesInGame\"}}","getTriggeringPlayer":"{return {\"function\":\"getTriggeringPlayer\"}}","getProjectileTypeOfProjectile":"a#{return {\"function\":\"getProjectileTypeOfProjectile\",entity:a}}","allPlayers":"{return {\"function\":\"allPlayers\"}}","setPlayerAttribute":"a#b#c#{return {\"function\":\"setPlayerAttribute\",attribute:a,entity:b,value:c}}","updateUiTextForPlayer":"a#b#c#{return {\"function\":\"updateUiTextForPlayer\",target:a,value:b,entity:c}}","showUnitNameLabel":"a#{return {\"function\":\"showUnitNameLabel\",entity:a}}","closeShopForPlayer":"a#{return {\"function\":\"closeShopForPlayer\",player:a}}","repeat":"a#{return {\"function\":\"repeat\",count:a}}","stopMusic":"{return {\"function\":\"stopMusic\"}}","setVelocityOfEntityXY":"a#b#c#{return {\"function\":\"setVelocityOfEntityXY\",velocity.x:a,velocity.y:b,entity:c}}","selectedRegion":"{return {\"function\":\"selectedRegion\"}}","showUnitNameLabelToPlayer":"a#b#{return {\"function\":\"showUnitNameLabelToPlayer\",entity:a,player:b}}","spawnItem":"a#b#{return {\"function\":\"spawnItem\",itemType:a,position:b}}","createItemWithMaxQuantityAtPosition":"a#b#{return {\"function\":\"createItemWithMaxQuantityAtPosition\",itemType:a,position:b}}","randItemType":"a#{return {\"function\":\"getRandomItemTypeFromItemTypeGroup\",itemTypeGroup:a}}","getLastOverlappedUnit":"{return {\"function\":\"getLastOverlappedUnit\"}}","showMenu":"a#{return {\"function\":\"showMenu\",player:a}}","startAcceptingPlayers":"{return {\"function\":\"startAcceptingPlayers\"}}","forAllEntities":"a#{return {\"function\":\"forAllEntities\",entityGroup:a}}","makePlayerSelectUnit":"a#b#{return {\"function\":\"makePlayerSelectUnit\",player:a,unit:b}}","setEntityAttribute":"a#b#c#{return {\"function\":\"setEntityAttribute\",attribute:a,entity:b,value:c}}","getLastCreatedItem":"{return {\"function\":\"getLastCreatedItem\"}}","getLastCreatedProjectile":"{return {\"function\":\"getLastCreatedProjectile\"}}","forAllItemTypes":"a#{return {\"function\":\"forAllItemTypes\",itemTypeGroup:a}}","createEntityForPlayerAtPositionWithDimensions":"a#b#c#d#e#f#{return {\"function\":\"createEntityForPlayerAtPositionWithDimensions\",entity:a,player:b,position:c,height:d,width:e,angle:f}}","getUnitCount":"{return {\"function\":\"getUnitCount\"}}","getLastTouchingUnit":"{return {\"function\":\"getLastTouchingUnit\"}}","getLastOverlappingItem":"{return {\"function\":\"getLastOverlappingItem\"}}","getItemInInventorySlot":"a#b#{return {\"function\":\"getItemInInventorySlot\",slot:a,entity:b}}","updateUiTextForEveryone":"a#b#{return {\"function\":\"updateUiTextForEveryone\",target:a,value:b}}","forAllProjectiles":"a#{return {\"function\":\"forAllProjectiles\",projectileGroup:a}}","angleBetweenPositions":"a#b#{return {\"function\":\"angleBetweenPositions\",positionA:a,positionB:b}}","stopMusicForPlayer":"a#{return {\"function\":\"stopMusicForPlayer\",player:a}}","positionCamera":"a#b#{return {\"function\":\"positionCamera\",player:a,position:b}}","createProjectileAtPosition":"a#b#c#d#{return {\"function\":\"createProjectileAtPosition\",projectileType:a,position:b,force:c,angle:d}}","getWidthOfRegion":"a#{return {\"function\":\"getWidthOfRegion\",region:a}}","showMenuAndSelectCurrentServer":"a#{return {\"function\":\"showMenuAndSelectCurrentServer\",player:a}}","getSourceUnitOfProjectile":"a#{return {\"function\":\"getSourceUnitOfProjectile\",entity:a}}","setFadingText":"a#b#c#{return {\"function\":\"setFadingTextOfUnit\",unit:a,text:b,color:c}}","changeScaleOfEntityBody":"a#b#{return {\"function\":\"changeScaleOfEntityBody\",entity:a,scale:b}}","entityBounds":"a#{return {\"function\":\"entityBounds\",entity:a}}","entityAttributeMin":"a#b#{return {\"function\":\"entityAttributeMin\",attribute:a,entity:b}}","forAllRegions":"a#{return {\"function\":\"forAllRegions\",regionGroup:a}}","rotateEntityToRadiansLT":"a#b#{return {\"function\":\"rotateEntityToRadiansLT\",entity:a,radians:b}}","str2num":"a#{return {\"function\":\"stringToNumber\",value:a}}","setPlayerAttributeMax":"a#b#c#{return {\"function\":\"setPlayerAttributeMax\",attributeType:a,player:b,number:c}}","setPlayerAttributeRegenerationRate":"a#b#c#{return {\"function\":\"setPlayerAttributeRegenerationRate\",attributeType:a,player:b,number:c}}","getQuantityOfUnitTypeInUnitTypeGroup":"a#b#{return {\"function\":\"getQuantityOfUnitTypeInUnitTypeGroup\",unitType:a,unitTypeGroup:b}}","forAllUnitTypes":"a#{return {\"function\":\"forAllUnitTypes\",unitTypeGroup:a}}","centerOfRegion":"a#{return {\"function\":\"centerOfRegion\",region:a}}","entityLastRaycastCollisionPosition":"a#{return {\"function\":\"entityLastRaycastCollisionPosition\",entity:a}}","decreaseVariableByNumber":"a#b#{return {\"function\":\"decreaseVariableByNumber\",variable:a,number:b}}","getLastCastingUnit":"{return {\"function\":\"getLastCastingUnit\"}}","getLastTouchedUnit":"{return {\"function\":\"getLastTouchedUnit\"}}","selectedParticle":"{return {\"function\":\"selectedParticle\"}}","allUnitsAttachedToUnit":"a#{return {\"function\":\"allUnitsAttachedToUnit\",entity:a}}","kickPlayer":"a#b#{return {\"function\":\"kickPlayer\",entity:a,message:b}}","forAllPlayers":"a#{return {\"function\":\"forAllPlayers\",playerGroup:a}}","removeUnitFromUnitGroup":"a#b#{return {\"function\":\"removeUnitFromUnitGroup\",unit:a,unitGroup:b}}","playersAreNeutral":"a#b#{return {\"function\":\"playersAreNeutral\",playerA:a,playerB:b}}","distanceBetweenPositions":"a#b#{return {\"function\":\"distanceBetweenPositions\",positionA:a,positionB:b}}","flipEntitySprite":"a#b#{return {\"function\":\"flipEntitySprite\",entity:a,flip:b}}","makeUnitInvisibleToNeutralPlayers":"a#{return {\"function\":\"makeUnitInvisibleToNeutralPlayers\",entity:a}}","entityAttributeMax":"a#b#{return {\"function\":\"entityAttributeMax\",attribute:a,entity:b}}","getEntityPosition":"a#{return {\"function\":\"getEntityPosition\",entity:a}}","playerHasAdblockEnabled":"a#{return {\"function\":\"playerHasAdblockEnabled\",player:a}}","saveUnitData":"a#{return {\"function\":\"saveUnitData\",unit:a}}","applyTorqueOnEntity":"a#b#{return {\"function\":\"applyTorqueOnEntity\",torque:a,entity:b}}","giveNewItemToUnit":"a#b#{return {\"function\":\"giveNewItemToUnit\",itemType:a,unit:b}}","playerAttributeMin":"a#b#{return {\"function\":\"playerAttributeMin\",attribute:a,entity:b}}","startUsingItem":"a#{return {\"function\":\"startUsingItem\",entity:a}}","moveEntity":"a#b#{return {\"function\":\"moveEntity\",entity:a,position:b}}","for":"a#b#c#{return {\"function\":\"for\",variableName:a,start:b,stop:c}}","sin":"a#{return {\"function\":\"sin\",angle:a}}","x":"a#{a.function === 'xyCoordinate'?{\"function\":\"getPositionX\",position:a}: {\"function\":\"getXCoordinateOfRegion\",position:a}}","showMenuAndSelectBestServer":"a#{return {\"function\":\"showMenuAndSelectBestServer\",player:a}}","getValueOfEntityVariable":"a#b#{return {\"function\":\"getValueOfEntityVariable\",variable:a,entity:b}}","entitiesInRegion":"a#{return {\"function\":\"entitiesInRegion\",region:a}}","applyForceOnEntityXYRelative":"a#b#c#{return {\"function\":\"applyForceOnEntityXYRelative\",force.x:a,force.y:b,entity:c}}","applyForceOnEntityXYLT":"a#b#c#{return {\"function\":\"applyForceOnEntityXYLT\",force.x:a,force.y:b,entity:c}}","attachEntityToEntity":"a#b#{return {\"function\":\"attachEntityToEntity\",entity:a,targetingEntity:b}}","entityExists":"a#{return {\"function\":\"entityExists\",entity:a}}","nameOfRegion":"a#{return {\"function\":\"nameOfRegion\",region:a}}","undefined":"{return {\"function\":\"undefinedValue\"}}","banPlayerFromChat":"a#{return {\"function\":\"banPlayerFromChat\",player:a}}","getEntityVelocityY":"a#{return {\"function\":\"getEntityVelocityY\",entity:a}}","allUnitTypesInGame":"{return {\"function\":\"allUnitTypesInGame\"}}","randPos":"a#{return {\"function\":\"getRandomPositionInRegion\",region:a}}","getTriggeringProjectile":"{return {\"function\":\"getTriggeringProjectile\"}}","getUnitParticle":"a#b#{return {\"function\":\"getUnitParticle\",particleType:a,entity:b}}","changeUnitType":"a#b#{return {\"function\":\"changeUnitType\",entity:a,unitType:b}}","addPlayerToPlayerGroup":"a#b#{return {\"function\":\"addPlayerToPlayerGroup\",player:a,playerGroup:b}}","playMusicForPlayerRepeatedly":"a#b#{return {\"function\":\"playMusicForPlayerRepeatedly\",music:a,player:b}}","showGameSuggestionsForPlayer":"a#{return {\"function\":\"showGameSuggestionsForPlayer\",player:a}}","isPositionInWall":"a#b#{return {\"function\":\"isPositionInWall\",position.x:a,position.y:b}}","entitiesInRegionInFrontOfEntityAtDistance":"a#b#c#d#{return {\"function\":\"entitiesInRegionInFrontOfEntityAtDistance\",width:a,height:b,entity:c,distance:d}}","setEntityAttributeRegenerationRate":"a#b#c#{return {\"function\":\"setEntityAttributeRegenerationRate\",attribute:a,entity:b,value:c}}","lastPlayedTime":"a#{return {\"function\":\"lastPlayedTimeOfPlayer\",player:a}}","makeUnitSelectItemAtSlot":"a#b#{return {\"function\":\"makeUnitSelectItemAtSlot\",unit:a,slotIndex:b}}","getItemTypeName":"a#{return {\"function\":\"getItemTypeName\",itemType:a}}","getMax":"a#b#{return {\"function\":\"getMax\",num1:a,num2:b}}","getLastCreatedUnit":"{return {\"function\":\"getLastCreatedUnit\"}}","getRotateSpeed":"a#{return {\"function\":\"getRotateSpeed\",unitType:a}}","owner":"a#{return {\"function\":\"getOwnerOfItem\",entity:a}}","allUnits":"{return {\"function\":\"allUnits\"}}","stopUsingItem":"a#{return {\"function\":\"stopUsingItem\",entity:a}}","makeUnitVisible":"a#{return {\"function\":\"makeUnitVisible\",entity:a}}","makeUnitInvisible":"a#{return {\"function\":\"makeUnitInvisible\",entity:a}}","break":"{return {\"function\":\"break\"}}","currentAmmo":"a#{return {\"function\":\"getCurrentAmmoOfItem\",item:a}}","getHeightOfRegion":"a#{return {\"function\":\"getHeightOfRegion\",region:a}}","changeScaleOfEntitySprite":"a#b#{return {\"function\":\"changeScaleOfEntitySprite\",entity:a,scale:b}}","slice":"a#b#c#{return {\"function\":\"substringOf\",string:a,fromIndex:b,toIndex:c}}","setPlayerName":"a#b#{return {\"function\":\"setPlayerName\",player:a,name:b}}","makeUnitPickupItemAtSlot":"a#b#c#{return {\"function\":\"makeUnitPickupItemAtSlot\",unit:a,item:b,slotIndex:c}}","dropItemInInventorySlot":"a#b#{return {\"function\":\"dropItemInInventorySlot\",unit:a,slotIndex:b}}","subString":"a#b#{return {\"function\":\"subString\",sourceString:a,patternString:b}}","getItemMaxQuantity":"a#{return {\"function\":\"getItemMaxQuantity\",item:a}}","unbanPlayerFromChat":"a#{return {\"function\":\"unbanPlayerFromChat\",player:a}}","abs":"a#{return {\"function\":\"absoluteValueOfNumber\",number:a}}","changeDesc":"a#b#{return {\"function\":\"changeDescriptionOfItem\",item:a,string:b}}","getTriggeringUnit":"{return {\"function\":\"getTriggeringUnit\"}}","getOwner":"a#{return {\"function\":\"getOwner\",entity:a}}","selectedPlayer":"{return {\"function\":\"selectedPlayer\"}}","getLastTouchedItem":"{return {\"function\":\"getLastTouchedItem\"}}","getLastTouchedProjectile":"{return {\"function\":\"getLastTouchedProjectile\"}}","allUnitsAttachedToItem":"a#{return {\"function\":\"allUnitsAttachedToItem\",entity:a}}","sendChatMessageToPlayer":"a#b#{return {\"function\":\"sendChatMessageToPlayer\",message:a,player:b}}","playAdForEveryone":"{return {\"function\":\"playAdForEveryone\"}}","hideUiTextForPlayer":"a#b#{return {\"function\":\"hideUiTextForPlayer\",target:a,entity:b}}","showUiTextForPlayer":"a#b#{return {\"function\":\"showUiTextForPlayer\",target:a,entity:b}}","playMusic":"a#{return {\"function\":\"playMusic\",music:a}}","assignPlayerType":"a#b#{return {\"function\":\"assignPlayerType\",entity:a,playerType:b}}","allProjectiles":"{return {\"function\":\"allProjectiles\"}}","playMusicForPlayer":"a#b#{return {\"function\":\"playMusicForPlayer\",music:a,player:b}}","condition":"a#{return {\"function\":\"condition\",conditions:a}}","makeUnitVisibleToNeutralPlayers":"a#{return {\"function\":\"makeUnitVisibleToNeutralPlayers\",entity:a}}","makeUnitVisibleToFriendlyPlayers":"a#{return {\"function\":\"makeUnitVisibleToFriendlyPlayers\",entity:a}}","makeUnitPickupItem":"a#b#{return {\"function\":\"makeUnitPickupItem\",unit:a,item:b}}","region":"a#b#c#d#{return {\"function\":\"dynamicRegion\",x:a,y:b,width:c,height:d}}","getEntityAttribute":"a#b#{return {\"function\":\"getEntityAttribute\",attribute:a,entity:b}}","currentTimeStamp":"{return {\"function\":\"currentTimeStamp\"}}","giveNewItemWithQuantityToUnit":"a#b#c#{return {\"function\":\"giveNewItemWithQuantityToUnit\",itemType:a,number:b,unit:c}}","getEntityVelocityX":"a#{return {\"function\":\"getEntityVelocityX\",entity:a}}","defaultQuantityOfItemType":"a#{return {\"function\":\"defaultQuantityOfItemType\",itemType:a}}","getQuantityOfItemTypeInItemTypeGroup":"a#b#{return {\"function\":\"getQuantityOfItemTypeInItemTypeGroup\",itemType:a,itemTypeGroup:b}}","selectedUnitType":"{return {\"function\":\"selectedUnitType\"}}","getNumberOfItemsPresent":"{return {\"function\":\"getNumberOfItemsPresent\"}}","getMin":"a#b#{return {\"function\":\"getMin\",num1:a,num2:b}}","selectedUnit":"{return {\"function\":\"selectedUnit\"}}","getLastOverlappingProjectile":"{return {\"function\":\"getLastOverlappingProjectile\"}}","getTriggeringAttribute":"{return {\"function\":\"getTriggeringAttribute\"}}","allUnitsMountedOnUnit":"a#{return {\"function\":\"allUnitsMountedOnUnit\",entity:a}}","allUnitsInRegion":"a#{return {\"function\":\"allUnitsInRegion\",region:a}}","dropAllItems":"a#{return {\"function\":\"dropAllItems\",entity:a}}","useItemOnce":"a#{return {\"function\":\"useItemOnce\",item:a}}","stopAcceptingPlayers":"{return {\"function\":\"stopAcceptingPlayers\"}}","setEntityVelocityAtAngle":"a#b#c#{return {\"function\":\"setEntityVelocityAtAngle\",entity:a,speed:b,angle:c}}","setEntityAttributeMax":"a#b#c#{return {\"function\":\"setEntityAttributeMax\",attribute:a,entity:b,value:c}}","getValueOfPlayerVariable":"a#b#{return {\"function\":\"getValueOfPlayerVariable\",variable:a,player:b}}","allRegions":"{return {\"function\":\"allRegions\"}}","maxValueOfItemType":"a#{return {\"function\":\"maxValueOfItemType\",itemType:a}}","angleBetweenMouseAndWindowCenter":"a#{return {\"function\":\"angleBetweenMouseAndWindowCenter\",player:a}}","setPlayerAttributeMin":"a#b#c#{return {\"function\":\"setPlayerAttributeMin\",attributeType:a,player:b,number:c}}","makePlayerTradeWithPlayer":"a#b#{return {\"function\":\"makePlayerTradeWithPlayer\",playerA:a,playerB:b}}","pow":"a#b#{return {\"function\":\"getExponent\",base:a,power:b}}","getLastAttackedUnit":"{return {\"function\":\"getLastAttackedUnit\"}}","getLastAttackingUnit":"{return {\"function\":\"getLastAttackingUnit\"}}","updateUiTextForTimeForPlayer":"a#b#c#d#{return {\"function\":\"updateUiTextForTimeForPlayer\",target:a,value:b,player:c,time:d}}","getNumberOfUnitsOfUnitType":"a#{return {\"function\":\"getNumberOfUnitsOfUnitType\",unitType:a}}","aiMoveToPosition":"a#b#{return {\"function\":\"aiMoveToPosition\",unit:a,position:b}}","aiAttackUnit":"a#b#{return {\"function\":\"aiAttackUnit\",unit:a,targetUnit:b}}","getNumberOfPlayersOfPlayerType":"a#{return {\"function\":\"getNumberOfPlayersOfPlayerType\",playerType:a}}","changeSensorRadius":"a#b#{return {\"function\":\"changeSensorRadius\",sensor:a,radius:b}}","ownerUnitOfSensor":"a#{return {\"function\":\"ownerUnitOfSensor\",sensor:a}}","sensor":"a#{return {\"function\":\"getSensorOfUnit\",unit:a}}","getTriggeringSensor":"{return {\"function\":\"getTriggeringSensor\"}}","getLastChatMessageSentByPlayer":"a#{return {\"function\":\"getLastChatMessageSentByPlayer\",player:a}}","loadPlayerDataAndApplyIt":"a#b#{return {\"function\":\"loadPlayerDataAndApplyIt\",player:a,unit:b}}","createFloatingText":"a#b#c#{return {\"function\":\"createFloatingText\",text:a,position:b,color:c}}","getLengthOfString":"a#{return {\"function\":\"getLengthOfString\",string:a}}","setLastAttackedUnit":"a#{return {\"function\":\"setLastAttackedUnit\",unit:a}}","setLastAttackingUnit":"a#{return {\"function\":\"setLastAttackingUnit\",unit:a}}","setItemFireRate":"a#b#{return {\"function\":\"setItemFireRate\",number:a,item:b}}","applyImpulseOnEntityXY":"a#b#c#{return {\"function\":\"applyImpulseOnEntityXY\",impulse.x:a,impulse.y:b,entity:c}}","toLowerCase":"a#{return {\"function\":\"toLowerCase\",string:a}}","stringStartsWith":"a#b#{return {\"function\":\"stringStartsWith\",sourceString:a,patternString:b}}","stringEndsWith":"a#b#{return {\"function\":\"stringEndsWith\",sourceString:a,patternString:b}}","replaceValuesInString":"a#b#c#{return {\"function\":\"replaceValuesInString\",matchString:a,sourceString:b,newString:c}}","getLastAttackingItem":"{return {\"function\":\"getLastAttackingItem\"}}","playSoundForPlayer":"a#b#{return {\"function\":\"playSoundForPlayer\",sound:a,player:b}}","stopSoundForPlayer":"a#b#{return {\"function\":\"stopSoundForPlayer\",sound:a,player:b}}","showDismissibleInputModalToPlayer":"a#b#{return {\"function\":\"showDismissibleInputModalToPlayer\",player:a,inputLabel:b}}","getTimeString":"a#{return {\"function\":\"getTimeString\",seconds:a}}","setItemName":"a#b#{return {\"function\":\"setItemName\",name:a,item:b}}","changeItemInventoryImage":"a#b#{return {\"function\":\"changeItemInventoryImage\",url:a,item:b}}","getItemDescription":"a#{return {\"function\":\"getItemDescription\",item:a}}","addAttributeBuffToUnit":"a#b#c#d#{return {\"function\":\"addAttributeBuffToUnit\",entity:a,value:b,attribute:c,time:d}}","addPercentageAttributeBuffToUnit":"a#b#c#d#{return {\"function\":\"addPercentageAttributeBuffToUnit\",entity:a,value:b,attribute:c,time:d}}","stunUnit":"a#{return {\"function\":\"stunUnit\",unit:a}}","removeStunFromUnit":"a#{return {\"function\":\"removeStunFromUnit\",unit:a}}","setLastAttackingItem":"a#{return {\"function\":\"setLastAttackingItem\",item:a}}","mutePlayerMicrophone":"a#{return {\"function\":\"mutePlayerMicrophone\",player:a}}","unmutePlayerMicrophone":"a#{return {\"function\":\"unmutePlayerMicrophone\",player:a}}","sendPostRequest":"a#b#c#{return {\"function\":\"sendPostRequest\",string:a,url:b,varName:c}}","loadUnitDataFromString":"a#b#{return {\"function\":\"loadUnitDataFromString\",string:a,unit:b}}","loadPlayerDataFromString":"a#b#{return {\"function\":\"loadPlayerDataFromString\",string:a,player:b}}","getUnitData":"a#{return {\"function\":\"getUnitData\",unit:a}}","getPlayerData":"a#{return {\"function\":\"getPlayerData\",player:a}}","getUnitId":"a#{return {\"function\":\"getUnitId\",unit:a}}","getPlayerId":"a#{return {\"function\":\"getPlayerId\",player:a}}","getUnitFromId":"a#{return {\"function\":\"getUnitFromId\",string:a}}","getPlayerFromId":"a#{return {\"function\":\"getPlayerFromId\",string:a}}","getStringArrayLength":"a#{return {\"function\":\"getStringArrayLength\",string:a}}","getStringArrayElement":"a#b#{return {\"function\":\"getStringArrayElement\",number:a,string:b}}","insertStringArrayElement":"a#b#{return {\"function\":\"insertStringArrayElement\",value:a,string:b}}","updateStringArrayElement":"a#b#c#{return {\"function\":\"updateStringArrayElement\",number:a,string:b,value:c}}","removeStringArrayElement":"a#b#{return {\"function\":\"removeStringArrayElement\",number:a,string:b}}","removeAllAttributeBuffs":"a#{return {\"function\":\"removeAllAttributeBuffs\",unit:a}}","changeInventorySlotColor":"a#b#{return {\"function\":\"changeInventorySlotColor\",item:a,string:b}}","setOwnerUnitOfProjectile":"a#b#{return {\"function\":\"setOwnerUnitOfProjectile\",projectile:a,unit:b}}","thisEntity":"{return {\"function\":\"thisEntity\"}}","entityName":"a#{return {\"function\":\"entityName\",entity:a}}","selectedInventorySlot":"a#{return {\"function\":\"selectedInventorySlot\",unit:a}}","log10":"a#{return {\"function\":\"log10\",value:a}}","addBotPlayer":"a#{return {\"function\":\"addBotPlayer\",name:a}}","botPlayers":"{return {\"function\":\"botPlayers\"}}","enableAI":"a#{return {\"function\":\"enableAI\",unit:a}}","disableAI":"a#{return {\"function\":\"disableAI\",unit:a}}","isAIEnabled":"a#{return {\"function\":\"isAIEnabled\",unit:a}}","isBotPlayer":"a#{return {\"function\":\"isBotPlayer\",player:a}}","isComputerPlayer":"a#{return {\"function\":\"isComputerPlayer\",player:a}}","entitiesBetweenTwoPositions":"a#b#{return {\"function\":\"entitiesBetweenTwoPositions\",positionA:a,positionB:b}}","unitSensorRadius":"a#{return {\"function\":\"unitSensorRadius\",unit:a}}","aiGoIdle":"a#{return {\"function\":\"aiGoIdle\",unit:a}}","targetUnit":"a#{return {\"function\":\"targetUnit\",unit:a}}","sendCoinsToPlayer":"a#b#{return {\"function\":\"sendCoinsToPlayer\",coins:a,player:b}}","addChatFilter":"a#{return {\"function\":\"addChatFilter\",words:a}}","num2str":"a#{return {\"function\":\"numberToString\",value:a}}","sendCoinsToPlayer2":"a#b#{return {\"function\":\"sendCoinsToPlayer2\",coins:a,player:b}}","playerIsCreator":"a#{return {\"function\":\"playerIsCreator\",player:a}}","setMaxAttackRange":"a#b#{return {\"function\":\"setMaxAttackRange\",unit:a,number:b}}","setLetGoDistance":"a#b#{return {\"function\":\"setLetGoDistance\",unit:a,number:b}}","setMaxTravelDistance":"a#b#{return {\"function\":\"setMaxTravelDistance\",unit:a,number:b}}","getPlayerSelectedUnit":"a#{return {\"function\":\"getPlayerSelectedUnit\",player:a}}","toDegrees":"a#{return {\"function\":\"toDegrees\",number:a}}","toRadians":"a#{return {\"function\":\"toRadians\",number:a}}","polarProjection":"a#b#c#{return {\"function\":\"getPositionInFrontOfPosition\",position:a,distance:b,angle:c}}","editMapTile":"a#b#c#d#{return {\"function\":\"editMapTile\",gid:a,layer:b,x:c,y:d}}","loadMapFromString":"a#{return {\"function\":\"loadMapFromString\",string:a}}","getMapJson":"{return {\"function\":\"getMapJson\"}}","teleportEntity":"a#b#{return {\"function\":\"teleportEntity\",entity:a,position:b}}","forAllDebris":"a#{return {\"function\":\"forAllDebris\",debrisGroup:a}}","roleExistsForPlayer":"a#b#{return {\"function\":\"roleExistsForPlayer\",name:a,player:b}}","emitParticlesFromEntity":"a#b#c#{return {\"function\":\"emitParticlesFromEntity\",particleType:a,angle:b,entity:c}}","emitParticlesAtPosition":"a#b#c#{return {\"function\":\"emitParticlesAtPosition\",particleType:a,position:b,angle:c}}","editMapTiles":"a#b#c#d#e#f#{return {\"function\":\"editMapTiles\",gid:a,layer:b,x:c,y:d,width:e,height:f}}","getMapTileId":"a#b#c#{return {\"function\":\"getMapTileId\",x:a,y:b,layer:c}}","stringIsANumber":"a#{return {\"function\":\"stringIsANumber\",string:a}}","setSourceItemOfProjectile":"a#b#{return {\"function\":\"setSourceItemOfProjectile\",projectile:a,item:b}}","getGlobalVariable":"a#{return {\"function\":\"getGlobalVariable\",name:a}}","lastReceivedPostResponse":"{return {\"function\":\"lastReceivedPostResponse\"}}","lastUpdatedVariableName":"{return {\"function\":\"lastUpdatedVariableName\"}}","getVariable":"a#{return {\"function\":\"getVariable\",name:a}}","str2obj":"a#{return {\"function\":\"stringToObject\",string:a}}","elementFromObject":"a#b#{return {\"function\":\"elementFromObject\",key:a,object:b}}","obj2Str":"a#{return {\"function\":\"objectToString\",object:a}}","removeElement":"a#b#{return {\"function\":\"removeElement\",key:a,object:b}}","makePlayerSendChatMessage":"a#b#{return {\"function\":\"makePlayerSendChatMessage\",player:a,message:b}}","emptyObject":"{return {\"function\":\"emptyObject\"}}","addStringElement":"a#b#c#{return {\"function\":\"addStringElement\",key:a,value:b,object:c}}","elementCount":"a#{return {\"function\":\"elementCount\",object:a}}","addObjectElement":"a#b#c#{return {\"function\":\"addObjectElement\",key:a,value:b,object:c}}","requestPost":"a#b#c#{return {\"function\":\"requestPost\",data:a,url:b,varName:c}}","unitIsCarryingItemType":"a#b#{return {\"function\":\"unitIsCarryingItemType\",unit:a,itemType:b}}","startCastingAbility":"a#b#{return {\"function\":\"startCastingAbility\",entity:a,ability:b}}","stopCastingAbility":"a#b#{return {\"function\":\"stopCastingAbility\",entity:a,ability:b}}","applyTorqueOnEntityToFacePosition":"a#b#c#{return {\"function\":\"applyTorqueOnEntityToFacePosition\",force:a,entity:b,position:c}}","changeRegionColor":"a#b#c#{return {\"function\":\"changeRegionColor\",region:a,inside:b,alpha:c}}","startMovingUnitUp":"a#{return {\"function\":\"startMovingUnitUp\",entity:a}}","startMovingUnitDown":"a#{return {\"function\":\"startMovingUnitDown\",entity:a}}","startMovingUnitLeft":"a#{return {\"function\":\"startMovingUnitLeft\",entity:a}}","startMovingUnitRight":"a#{return {\"function\":\"startMovingUnitRight\",entity:a}}","stopMovingUnitX":"a#{return {\"function\":\"stopMovingUnitX\",entity:a}}","stopMovingUnitY":"a#{return {\"function\":\"stopMovingUnitY\",entity:a}}","openBackpackForPlayer":"a#{return {\"function\":\"openBackpackForPlayer\",player:a}}","closeBackpackForPlayer":"a#{return {\"function\":\"closeBackpackForPlayer\",player:a}}","setUnitNameLabelColor":"a#b#{return {\"function\":\"setUnitNameLabelColor\",unit:a,color:b}}","getCameraPosition":"{return {\"function\":\"getCameraPosition\"}}","getCameraWidth":"{return {\"function\":\"getCameraWidth\"}}","getCameraHeight":"{return {\"function\":\"getCameraHeight\"}}","allUnitsOfUnitType":"a#{return {\"function\":\"allUnitsOfUnitType\",unitType:a}}","forAllUnits":"a#{return {\"function\":\"forAllUnits\",unitGroup:a}}","allItemsOfItemType":"a#{return {\"function\":\"allItemsOfItemType\",itemType:a}}","allProjectilesofProjectileType":"a#{return {\"function\":\"allProjectilesofProjectileType\",projectileType:a}}","setUnitNameLabelColorForPlayer":"a#b#c#{return {\"function\":\"setUnitNameLabelColorForPlayer\",unit:a,color:b,player:c}}"}




  function throwError(s:string) {
    throw new Error(s)
  }
%}

/* lexical grammar */
%lex

%%

\s+                   /* skip whitespace */
["][^"]*["]|['][^']*[']           return 'STRING'
[0-9]+("."[0-9]+)?\b  return 'NUMBER'
[a-zA-Z0-9]+          return 'NAME'
","                   return ','
"*"                   return '*'
"/"                   return '/'
"-"                   return '-'
"+"                   return '+'
"^"                   return '^'
"("                   return '('
")"                   return ')'
"["                   return '['
"]"                   return ']'
"'"                   return "'"
'"'                   return '"'
"."                   return '.'
<<EOF>>               return 'EOF'
.                     return 'INVALID'

/lex

%start expressions
%left '+' '-'
%left '*' '/'
%left '^'
%left UMINUS

%% /* language grammar */
expressions
    : e EOF
      {  return $1; }
    ;

expression_list
    : expression_list ',' e
      { $$ = $1.concat([$3]); }
    | expression_list '.' e
      {$$ = $1.concat([$3]);}
    | expression_list '[' e ']'
      {$$ = $1.concat([$3]);}
    | '"' e '"'
      {$$ = $1.concat([$3]);}
    | e
      { $$ = [$1]; }
    ;

e
    : e '+' e
        { $$ = { function: 'calculate', items: [{operator:"+"},$1, $3]}}
    | e '-' e
        { $$ = { function: 'calculate', items: [{operator:"-"},$1, $3]}}
    | e '*' e
        { $$ = { function: 'calculate', items: [{operator:"*"},$1, $3]}}
    | e '/' e
        { $$ = { function: 'calculate', items: [{operator:"/"},$1, $3]}}
    | '-' e %prec UMINUS
        { $$ = { function: 'calculate', items: [{operator:"*"},$2, -1]} }
    | '(' e ')'
        { $$ = $2; }
    | NUMBER
        {$$ = Number(yytext);}
    | NAME '('')'
        {if(funcs[$NAME]) $$ = new Function(...funcs[$NAME].split('#')).apply(undefined, undefined); else throwError($NAME + " is undefined")}
    | NAME '(' '"' expression_list '"' ')'
    | NAME '(' expression_list ')'
        {if(funcs[$NAME]) $$ = new Function(...funcs[$NAME].split('#')).apply(undefined, $expression_list); else throwError($NAME + " is undefined")}
    | STRING
        {$$ = yytext.slice(1, yytext.length-1)}
    | e'.' NAME
     {if(funcs[$NAME]) $$ = new Function(...funcs[$NAME].split('#')).apply(undefined, [$1]); else throwError($NAME + " is undefined")}
    | e'.' NAME'(' expression_list ')'
     {if(funcs[$NAME]) $$ = new Function(...funcs[$NAME].split('#')).apply(undefined, [$1, ...$expression_list]); else throwError($NAME + " is undefined")};
     
//     | e '[' NAME ']'
//     {$$ = attr[$NAME].apply(undefined,
// [$1]); }
//     | e '[' "'" NAME "'" ']'
//     {$$ = attr[$NAME].apply(undefined,
// [$1]); }
//     | e '[' '"' NAME '"' ']'
//         {$$ = attr[$NAME].apply(undefined,
// [$1]); };
    // | STRING '+' STRING
    //    { $$ =  {
    //                 "function": "concat",
    //                 "textA": $1.slice(1, $1.length-1),
    //                 "textB": $3.slice(1, $3.length-1)
    //            } }
    // | STRING '+' NUMBER
    // { $$ =  {
    //                 "function": "concat",
    //                 "textA": $1.slice(1, $1.length-1),
    //                 "textB": {
    //                   "function": "numberToString",
    //                   "value": Number($3)
    //                 }
    //            } }
    // | NUMBER '+' STRING
    // { $$ =  {
    //                 "function": "concat",
    //                 "textA": {
    //                   "function": "numberToString",
    //                   "value": Number($1)
    //                 },
    //                 "textB": $3.slice(1, $3.length-1),
    //            } }
    // | NUMBER '+' NUMBER
    // { $$ = { function: 'calculate', items: [{operator:"+"}, $1, $3]}}
    // ;