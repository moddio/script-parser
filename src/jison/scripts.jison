%{var funcs: any= 

{"getItemInFrontOfUnit":"a#{return {\"function\":\"getItemInFrontOfUnit\",_returnType:'item',entity:a}}","selectedProjectile":"{return {\"function\":\"selectedProjectile\",_returnType:'projectile'}}","getAttributeTypeOfAttribute":"a#{return {\"function\":\"getAttributeTypeOfAttribute\",_returnType:'attributeType',entity:a}}","playAdForPlayer":"a#{return {\"function\":\"playAdForPlayer\",_returnType:'ad',entity:a}}","randNumber":"a#b#{return {\"function\":\"getRandomNumberBetween\",_returnType:'number',min:a,max:b}}","setTimeOut":"a#{return {\"function\":\"setTimeOut\",_returnType:'timer',duration:a}}","facingAngle":"a#{return {\"function\":\"unitsFacingAngle\",_returnType:'number',unit:a}}","getMapHeight":"{return {\"function\":\"getMapHeight\",_returnType:'number'}}","getEntityType":"a#{return {\"function\":\"getEntityType\",_returnType:'string',entity:a}}","getSelectedEntity":"{return {\"function\":\"getSelectedEntity\",_returnType:'entity'}}","rotateEntityToFacePosition":"a#b#{return {\"function\":\"rotateEntityToFacePosition\",_returnType:'entity',entity:a,position:b}}","destroyEntity":"a#{return {\"function\":\"destroyEntity\",_returnType:'entity',entity:a}}","setEntityDepth":"a#b#{return {\"function\":\"setEntityDepth\",_returnType:'entity',entity:a,value:b}}","getItemAtSlot":"a#b#{return {\"function\":\"getItemAtSlot\",_returnType:'item',slot:a,unit:b}}","hideUnitFromPlayer":"a#b#{return {\"function\":\"hideUnitFromPlayer\",_returnType:'unit',entity:a,player:b}}","showUnitToPlayer":"a#b#{return {\"function\":\"showUnitToPlayer\",_returnType:'unit',entity:a,player:b}}","entitiesCollidingWithLastRaycast":"{return {\"function\":\"entitiesCollidingWithLastRaycast\",_returnType:'entityGroup'}}","lastPurchasedUnit":"{return {\"function\":\"getLastPurchasedUnit\",_returnType:'unit'}}","sendChatMessage":"a#{return {\"function\":\"sendChatMessage\",_returnType:'ui',message:a}}","playSoundAtPosition":"a#b#{return {\"function\":\"playSoundAtPosition\",_returnType:'sound',sound:a,position:b}}","pos":"a#b#{return {\"function\":\"xyCoordinate\",_returnType:'position',x:a,y:b}}","toFixed":"a#b#{return {\"function\":\"toFixed\",_returnType:'number',value:a,precision:b}}","getEntityState":"a#{return {\"function\":\"getEntityState\",_returnType:'state',entity:a}}","dropItemAtPosition":"a#b#{return {\"function\":\"dropItemAtPosition\",_returnType:'item',item:a,position:b}}","applyForceOnEntityAngle":"a#b#c#{return {\"function\":\"applyForceOnEntityAngle\",_returnType:'entity',force:a,entity:b,angle:c}}","showInputModalToPlayer":"a#b#{return {\"function\":\"showInputModalToPlayer\",_returnType:'ui',player:a,inputLabel:b}}","getItemQuantity":"a#{return {\"function\":\"getItemQuantity\",_returnType:'number',item:a}}","isPlayerLoggedIn":"a#{return {\"function\":\"isPlayerLoggedIn\",_returnType:'boolean',player:a}}","openDialogueForPlayer":"a#b#{return {\"function\":\"openDialogueForPlayer\",_returnType:'dialogue',dialogue:a,player:b}}","continue":"{return {\"function\":\"continue\",_returnType:'loop'}}","openWebsiteForPlayer":"a#b#{return {\"function\":\"openWebsiteForPlayer\",_returnType:'player',string:a,player:b}}","setEntityLifeSpan":"a#b#{return {\"function\":\"setEntityLifeSpan\",_returnType:'entity',entity:a,lifeSpan:b}}","selectedItem":"{return {\"function\":\"selectedItem\",_returnType:'item'}}","hideUnitNameLabel":"a#{return {\"function\":\"hideUnitNameLabel\",_returnType:'unit',entity:a}}","setTriggeringUnit":"a#{return {\"function\":\"setTriggeringUnit\",_returnType:'unit',entity:a}}","createUnitAtPosition":"a#b#c#d#{return {\"function\":\"createUnitAtPosition\",_returnType:'unit',unitType:a,entity:b,position:c,angle:d}}","hideUiTextForEveryone":"a#{return {\"function\":\"hideUiTextForEveryone\",_returnType:'ui',target:a}}","playersAreFriendly":"a#b#{return {\"function\":\"playersAreFriendly\",_returnType:'boolean',playerA:a,playerB:b}}","hideGameSuggestionsForPlayer":"a#{return {\"function\":\"hideGameSuggestionsForPlayer\",_returnType:'player',player:a}}","cos":"a#{return {\"function\":\"cos\",_returnType:'number',angle:a}}","transformRegionDimensions":"a#b#c#d#e#{return {\"function\":\"transformRegionDimensions\",_returnType:'region',region:a,x:b,y:c,width:d,height:e}}","makeUnitInvisibleToFriendlyPlayers":"a#{return {\"function\":\"makeUnitInvisibleToFriendlyPlayers\",_returnType:'unit',entity:a}}","setEntityAttributeMin":"a#b#c#{return {\"function\":\"setEntityAttributeMin\",_returnType:'entity',attribute:a,entity:b,value:c}}","entityHeight":"a#{return {\"function\":\"entityHeight\",_returnType:'number',entity:a}}","allUnitsOwnedByPlayer":"a#{return {\"function\":\"allUnitsOwnedByPlayer\",_returnType:'unitGroup',player:a}}","showInviteFriendsModal":"a#{return {\"function\":\"showInviteFriendsModal\",_returnType:'ui',player:a}}","showCustomModalToPlayer":"a#b#{return {\"function\":\"showCustomModalToPlayer\",_returnType:'ui',htmlContent:a,player:b}}","lastSelectingDialogueOption":"{return {\"function\":\"getLastPlayerSelectingDialogueOption\",_returnType:'player'}}","playerAttributeMax":"a#b#{return {\"function\":\"playerAttributeMax\",_returnType:'number',attribute:a,entity:b}}","triggeringItem":"{return {\"function\":\"getTriggeringItem\",_returnType:'item'}}","getItemParticle":"a#b#{return {\"function\":\"getItemParticle\",_returnType:'particle',particleType:a,entity:b}}","allProjectilesAttachedToUnit":"a#{return {\"function\":\"allProjectilesAttachedToUnit\",_returnType:'projectileGroup',entity:a}}","showUiTextForEveryone":"a#{return {\"function\":\"showUiTextForEveryone\",_returnType:'ui',target:a}}","forAllItems":"a#{return {\"function\":\"forAllItems\",_returnType:'loop',itemGroup:a}}","removePlayerFromPlayerGroup":"a#b#{return {\"function\":\"removePlayerFromPlayerGroup\",_returnType:'playerGroup',player:a,playerGroup:b}}","getPlayerAttribute":"a#b#{return {\"function\":\"getPlayerAttribute\",_returnType:'number',attribute:a,entity:b}}","playerIsControlledByHuman":"a#{return {\"function\":\"playerIsControlledByHuman\",_returnType:'boolean',player:a}}","setUnitOwner":"a#b#{return {\"function\":\"setUnitOwner\",_returnType:'unit',unit:a,player:b}}","getMapWidth":"{return {\"function\":\"getMapWidth\",_returnType:'number'}}","updateItemQuantity":"a#b#{return {\"function\":\"updateItemQuantity\",_returnType:'item',entity:a,quantity:b}}","applyForceOnEntityAngleLT":"a#b#c#{return {\"function\":\"applyForceOnEntityAngleLT\",_returnType:'entity',force:a,entity:b,angle:c}}","setEntityState":"a#b#{return {\"function\":\"setEntityState\",_returnType:'entity',entity:a,state:b}}","entityWidth":"a#{return {\"function\":\"entityWidth\",_returnType:'number',entity:a}}","hideUnitInPlayerMinimap":"a#b#{return {\"function\":\"hideUnitInPlayerMinimap\",_returnType:'unit',unit:a,player:b}}","selectedItemType":"{return {\"function\":\"selectedItemType\",_returnType:'itemType'}}","getPlayerCount":"{return {\"function\":\"getPlayerCount\",_returnType:'number'}}","getItemCurrentlyHeldByUnit":"a#{return {\"function\":\"getItemCurrentlyHeldByUnit\",_returnType:'item',entity:a}}","allItemsDroppedOnGround":"{return {\"function\":\"allItemsDroppedOnGround\",_returnType:'itemGroup'}}","return":"{return {\"function\":\"return\",_returnType:'system'}}","runScript":"a#{return {\"function\":\"runScript\",_returnType:'script',scriptName:a}}","addUnitToUnitGroup":"a#b#{return {\"function\":\"addUnitToUnitGroup\",_returnType:'unitGroup',unit:a,unitGroup:b}}","humanPlayers":"{return {\"function\":\"humanPlayers\",_returnType:'playerGroup'}}","lastUsedItem":"{return {\"function\":\"lastUsedItem\",_returnType:'item'}}","lastPlayerInput":"a#{return {\"function\":\"playerCustomInput\",_returnType:'string',player:a}}","arctan":"a#{return {\"function\":\"arctan\",_returnType:'number',number:a}}","concat":"a#b#{return {\"function\":\"concat\",_returnType:'string',textA:a,textB:b}}","getPlayerName":"a#{return {\"function\":\"getPlayerName\",_returnType:'string',entity:a}}","getSourceItemOfProjectile":"a#{return {\"function\":\"getSourceItemOfProjectile\",_returnType:'item',entity:a}}","triggeringRegion":"{return {\"function\":\"getTriggeringRegion\",_returnType:'region'}}","playerCameraSetZoom":"a#b#{return {\"function\":\"playerCameraSetZoom\",_returnType:'camera',player:a,zoom:b}}","floor":"a#{return {\"function\":\"mathFloor\",_returnType:'number',value:a}}","setUnitNameLabel":"a#b#{return {\"function\":\"setUnitNameLabel\",_returnType:'ui',unit:a,name:b}}","getUnitTypeName":"a#{return {\"function\":\"getUnitTypeName\",_returnType:'string',unitType:a}}","openShopForPlayer":"a#b#{return {\"function\":\"openShopForPlayer\",_returnType:'shop',shop:a,player:b}}","sqrt":"a#{return {\"function\":\"squareRoot\",_returnType:'number',number:a}}","closeDialogueForPlayer":"a#{return {\"function\":\"closeDialogueForPlayer\",_returnType:'dialogue',player:a}}","comment":"{return {\"function\":\"comment\",_returnType:'ui'}}","createEntityAtPositionWithDimensions":"a#b#c#d#e#f#{return {\"function\":\"createEntityAtPositionWithDimensions\",_returnType:'entity',entity:a,position:b,player:c,height:d,width:e,angle:f}}","increaseVariableByNumber":"a#b#{return {\"function\":\"increaseVariableByNumber\",_returnType:'number',variable:a,number:b}}","getMouseCursorPosition":"a#{return {\"function\":\"getMouseCursorPosition\",_returnType:'position',player:a}}","lastOverlappingUnit":"{return {\"function\":\"getLastOverlappingUnit\",_returnType:'unit'}}","allItems":"{return {\"function\":\"allItems\",_returnType:'itemGroup'}}","allItemsAttachedToUnit":"a#{return {\"function\":\"allItemsAttachedToUnit\",_returnType:'itemGroup',entity:a}}","getEntireMapRegion":"{return {\"function\":\"getEntireMapRegion\",_returnType:'region'}}","playerCameraTrackUnit":"a#b#{return {\"function\":\"playerCameraTrackUnit\",_returnType:'camera',player:a,unit:b}}","castAbility":"a#b#{return {\"function\":\"castAbility\",_returnType:'unit',entity:a,abilityName:b}}","playersAreHostile":"a#b#{return {\"function\":\"playersAreHostile\",_returnType:'boolean',playerA:a,playerB:b}}","allItemsOwnedByUnit":"a#{return {\"function\":\"allItemsOwnedByUnit\",_returnType:'itemGroup',entity:a}}","computerPlayers":"{return {\"function\":\"computerPlayers\",_returnType:'playerGroup'}}","playEntityAnimation":"a#b#{return {\"function\":\"playEntityAnimation\",_returnType:'entity',entity:a,animation:b}}","while":"a#{return {\"function\":\"while\",_returnType:'loop',conditions:a}}","allEntities":"{return {\"function\":\"allEntities\",_returnType:'entityGroup'}}","lastPurchasedUnitType":"{return {\"function\":\"lastPurchasedUnitTypetId\",_returnType:'unitType'}}","applyForceOnEntityXY":"a#b#c#{return {\"function\":\"applyForceOnEntityXY\",_returnType:'entity',force.x:a,force.y:b,entity:c}}","showUnitInPlayerMinimap":"a#b#c#{return {\"function\":\"showUnitInPlayerMinimap\",_returnType:'unit',unit:a,color:b,player:c}}","savePlayerData":"a#{return {\"function\":\"savePlayerData\",_returnType:'player',player:a}}","hideUnitNameLabelFromPlayer":"a#b#{return {\"function\":\"hideUnitNameLabelFromPlayer\",_returnType:'unit',entity:a,player:b}}","regionOverlapsWithRegion":"a#b#{return {\"function\":\"regionOverlapsWithRegion\",_returnType:'boolean',regionA:a,regionB:b}}","allItemTypesInGame":"{return {\"function\":\"allItemTypesInGame\",_returnType:'itemTypeGroup'}}","triggeringPlayer":"{return {\"function\":\"getTriggeringPlayer\",_returnType:'player'}}","getProjectileTypeOfProjectile":"a#{return {\"function\":\"getProjectileTypeOfProjectile\",_returnType:'projectileType',entity:a}}","allPlayers":"{return {\"function\":\"allPlayers\",_returnType:'playerGroup'}}","setPlayerAttribute":"a#b#c#{return {\"function\":\"setPlayerAttribute\",_returnType:'player',attribute:a,entity:b,value:c}}","updateUiTextForPlayer":"a#b#c#{return {\"function\":\"updateUiTextForPlayer\",_returnType:'ui',target:a,value:b,entity:c}}","showUnitNameLabel":"a#{return {\"function\":\"showUnitNameLabel\",_returnType:'unit',entity:a}}","closeShopForPlayer":"a#{return {\"function\":\"closeShopForPlayer\",_returnType:'shop',player:a}}","repeat":"a#{return {\"function\":\"repeat\",_returnType:'loop',count:a}}","stopMusic":"{return {\"function\":\"stopMusic\",_returnType:'sound'}}","setVelocityOfEntityXY":"a#b#c#{return {\"function\":\"setVelocityOfEntityXY\",_returnType:'entity',velocity.x:a,velocity.y:b,entity:c}}","selectedRegion":"{return {\"function\":\"selectedRegion\",_returnType:'region'}}","showUnitNameLabelToPlayer":"a#b#{return {\"function\":\"showUnitNameLabelToPlayer\",_returnType:'unit',entity:a,player:b}}","spawnItem":"a#b#{return {\"function\":\"spawnItem\",_returnType:'item',itemType:a,position:b}}","createItemWithMaxQuantityAtPosition":"a#b#{return {\"function\":\"createItemWithMaxQuantityAtPosition\",_returnType:'item',itemType:a,position:b}}","randItemType":"a#{return {\"function\":\"getRandomItemTypeFromItemTypeGroup\",_returnType:'itemType',itemTypeGroup:a}}","lastOverlappedUnit":"{return {\"function\":\"getLastOverlappedUnit\",_returnType:'unit'}}","showMenu":"a#{return {\"function\":\"showMenu\",_returnType:'ui',player:a}}","startAcceptingPlayers":"{return {\"function\":\"startAcceptingPlayers\",_returnType:'player'}}","forAllEntities":"a#{return {\"function\":\"forAllEntities\",_returnType:'loop',entityGroup:a}}","makePlayerSelectUnit":"a#b#{return {\"function\":\"makePlayerSelectUnit\",_returnType:'player',player:a,unit:b}}","setEntityAttribute":"a#b#c#{return {\"function\":\"setEntityAttribute\",_returnType:'entity',attribute:a,entity:b,value:c}}","lastCreatedItem":"{return {\"function\":\"getLastCreatedItem\",_returnType:'item'}}","lastCreatedProjectile":"{return {\"function\":\"getLastCreatedProjectile\",_returnType:'projectile'}}","forAllItemTypes":"a#{return {\"function\":\"forAllItemTypes\",_returnType:'loop',itemTypeGroup:a}}","createEntityForPlayerAtPositionWithDimensions":"a#b#c#d#e#f#{return {\"function\":\"createEntityForPlayerAtPositionWithDimensions\",_returnType:'unit',entity:a,player:b,position:c,height:d,width:e,angle:f}}","getUnitCount":"{return {\"function\":\"getUnitCount\",_returnType:'number'}}","lastTouchingUnit":"{return {\"function\":\"getLastTouchingUnit\",_returnType:'unit'}}","lastOverlappingItem":"{return {\"function\":\"getLastOverlappingItem\",_returnType:'item'}}","getItemInInventorySlot":"a#b#{return {\"function\":\"getItemInInventorySlot\",_returnType:'item',slot:a,entity:b}}","updateUiTextForEveryone":"a#b#{return {\"function\":\"updateUiTextForEveryone\",_returnType:'ui',target:a,value:b}}","forAllProjectiles":"a#{return {\"function\":\"forAllProjectiles\",_returnType:'loop',projectileGroup:a}}","angleBetweenPositions":"a#b#{return {\"function\":\"angleBetweenPositions\",_returnType:'number',positionA:a,positionB:b}}","stopMusicForPlayer":"a#{return {\"function\":\"stopMusicForPlayer\",_returnType:'music',player:a}}","positionCamera":"a#b#{return {\"function\":\"positionCamera\",_returnType:'camera',player:a,position:b}}","createProjectileAtPosition":"a#b#c#d#{return {\"function\":\"createProjectileAtPosition\",_returnType:'projectile',projectileType:a,position:b,force:c,angle:d}}","getWidthOfRegion":"a#{return {\"function\":\"getWidthOfRegion\",_returnType:'number',region:a}}","showMenuAndSelectCurrentServer":"a#{return {\"function\":\"showMenuAndSelectCurrentServer\",_returnType:'ui',player:a}}","getSourceUnitOfProjectile":"a#{return {\"function\":\"getSourceUnitOfProjectile\",_returnType:'unit',entity:a}}","setFadingText":"a#b#c#{return {\"function\":\"setFadingTextOfUnit\",_returnType:'unit',unit:a,text:b,color:c}}","changeScaleOfEntityBody":"a#b#{return {\"function\":\"changeScaleOfEntityBody\",_returnType:'entity',entity:a,scale:b}}","entityBounds":"a#{return {\"function\":\"entityBounds\",_returnType:'region',entity:a}}","entityAttributeMin":"a#b#{return {\"function\":\"entityAttributeMin\",_returnType:'number',attribute:a,entity:b}}","forAllRegions":"a#{return {\"function\":\"forAllRegions\",_returnType:'loop',regionGroup:a}}","rotateEntityToRadiansLT":"a#b#{return {\"function\":\"rotateEntityToRadiansLT\",_returnType:'entity',entity:a,radians:b}}","str2num":"a#{return {\"function\":\"stringToNumber\",_returnType:'number',value:a}}","setPlayerAttributeMax":"a#b#c#{return {\"function\":\"setPlayerAttributeMax\",_returnType:'player',attributeType:a,player:b,number:c}}","setPlayerAttributeRegenerationRate":"a#b#c#{return {\"function\":\"setPlayerAttributeRegenerationRate\",_returnType:'player',attributeType:a,player:b,number:c}}","getQuantityOfUnitTypeInUnitTypeGroup":"a#b#{return {\"function\":\"getQuantityOfUnitTypeInUnitTypeGroup\",_returnType:'number',unitType:a,unitTypeGroup:b}}","forAllUnitTypes":"a#{return {\"function\":\"forAllUnitTypes\",_returnType:'loop',unitTypeGroup:a}}","centerOfRegion":"a#{return {\"function\":\"centerOfRegion\",_returnType:'position',region:a}}","lastRaycastCollisionPos":"a#{return {\"function\":\"entityLastRaycastCollisionPosition\",_returnType:'position',entity:a}}","decreaseVariableByNumber":"a#b#{return {\"function\":\"decreaseVariableByNumber\",_returnType:'number',variable:a,number:b}}","lastCastingUnit":"{return {\"function\":\"getLastCastingUnit\",_returnType:'unit'}}","lastTouchedUnit":"{return {\"function\":\"getLastTouchedUnit\",_returnType:'unit'}}","selectedParticle":"{return {\"function\":\"selectedParticle\",_returnType:'particle'}}","allUnitsAttachedToUnit":"a#{return {\"function\":\"allUnitsAttachedToUnit\",_returnType:'unitGroup',entity:a}}","kickPlayer":"a#b#{return {\"function\":\"kickPlayer\",_returnType:'player',entity:a,message:b}}","forAllPlayers":"a#{return {\"function\":\"forAllPlayers\",_returnType:'loop',playerGroup:a}}","removeUnitFromUnitGroup":"a#b#{return {\"function\":\"removeUnitFromUnitGroup\",_returnType:'unitGroup',unit:a,unitGroup:b}}","playersAreNeutral":"a#b#{return {\"function\":\"playersAreNeutral\",_returnType:'boolean',playerA:a,playerB:b}}","distanceBetweenPositions":"a#b#{return {\"function\":\"distanceBetweenPositions\",_returnType:'number',positionA:a,positionB:b}}","flipEntitySprite":"a#b#{return {\"function\":\"flipEntitySprite\",_returnType:'entity',entity:a,flip:b}}","makeUnitInvisibleToNeutralPlayers":"a#{return {\"function\":\"makeUnitInvisibleToNeutralPlayers\",_returnType:'unit',entity:a}}","entityAttributeMax":"a#b#{return {\"function\":\"entityAttributeMax\",_returnType:'number',attribute:a,entity:b}}","getEntityPosition":"a#{return {\"function\":\"getEntityPosition\",_returnType:'position',entity:a}}","playerHasAdblockEnabled":"a#{return {\"function\":\"playerHasAdblockEnabled\",_returnType:'boolean',player:a}}","saveUnitData":"a#{return {\"function\":\"saveUnitData\",_returnType:'unit',unit:a}}","applyTorqueOnEntity":"a#b#{return {\"function\":\"applyTorqueOnEntity\",_returnType:'entity',torque:a,entity:b}}","giveNewItemToUnit":"a#b#{return {\"function\":\"giveNewItemToUnit\",_returnType:'item',itemType:a,unit:b}}","playerAttributeMin":"a#b#{return {\"function\":\"playerAttributeMin\",_returnType:'number',attribute:a,entity:b}}","startUsingItem":"a#{return {\"function\":\"startUsingItem\",_returnType:'item',entity:a}}","moveEntity":"a#b#{return {\"function\":\"moveEntity\",_returnType:'unit',entity:a,position:b}}","for":"a#b#c#{return {\"function\":\"for\",_returnType:'loop',variableName:a,start:b,stop:c}}","sin":"a#{return {\"function\":\"sin\",_returnType:'number',angle:a}}","showMenuAndSelectBestServer":"a#{return {\"function\":\"showMenuAndSelectBestServer\",_returnType:'ui',player:a}}","getValueOfEntityVariable":"a#b#{return {\"function\":\"getValueOfEntityVariable\",_returnType:'undefined',variable:a,entity:b}}","entitiesInRegion":"a#{return {\"function\":\"entitiesInRegion\",_returnType:'entityGroup',region:a}}","applyForceOnEntityXYRelative":"a#b#c#{return {\"function\":\"applyForceOnEntityXYRelative\",_returnType:'entity',force.x:a,force.y:b,entity:c}}","applyForceOnEntityXYLT":"a#b#c#{return {\"function\":\"applyForceOnEntityXYLT\",_returnType:'entity',force.x:a,force.y:b,entity:c}}","attachEntityToEntity":"a#b#{return {\"function\":\"attachEntityToEntity\",_returnType:'entity',entity:a,targetingEntity:b}}","entityExists":"a#{return {\"function\":\"entityExists\",_returnType:'boolean',entity:a}}","nameOfRegion":"a#{return {\"function\":\"nameOfRegion\",_returnType:'string',region:a}}","undefined":"{return {\"function\":\"undefinedValue\",_returnType:'undefined'}}","banPlayerFromChat":"a#{return {\"function\":\"banPlayerFromChat\",_returnType:'player',player:a}}","getEntityVelocityY":"a#{return {\"function\":\"getEntityVelocityY\",_returnType:'number',entity:a}}","allUnitTypesInGame":"{return {\"function\":\"allUnitTypesInGame\",_returnType:'unitTypeGroup'}}","randPos":"a#{return {\"function\":\"getRandomPositionInRegion\",_returnType:'position',region:a}}","triggeringProj":"{return {\"function\":\"getTriggeringProjectile\",_returnType:'projectile'}}","getUnitParticle":"a#b#{return {\"function\":\"getUnitParticle\",_returnType:'particle',particleType:a,entity:b}}","changeUnitType":"a#b#{return {\"function\":\"changeUnitType\",_returnType:'unit',entity:a,unitType:b}}","addPlayerToPlayerGroup":"a#b#{return {\"function\":\"addPlayerToPlayerGroup\",_returnType:'playerGroup',player:a,playerGroup:b}}","playMusicForPlayerRepeatedly":"a#b#{return {\"function\":\"playMusicForPlayerRepeatedly\",_returnType:'music',music:a,player:b}}","showGameSuggestionsForPlayer":"a#{return {\"function\":\"showGameSuggestionsForPlayer\",_returnType:'player',player:a}}","isPositionInWall":"a#b#{return {\"function\":\"isPositionInWall\",_returnType:'boolean',position.x:a,position.y:b}}","entitiesInRegionInFrontOfEntityAtDistance":"a#b#c#d#{return {\"function\":\"entitiesInRegionInFrontOfEntityAtDistance\",_returnType:'entityGroup',width:a,height:b,entity:c,distance:d}}","setEntityAttributeRegenerationRate":"a#b#c#{return {\"function\":\"setEntityAttributeRegenerationRate\",_returnType:'entity',attribute:a,entity:b,value:c}}","lastPlayedTime":"a#{return {\"function\":\"lastPlayedTimeOfPlayer\",_returnType:'number',player:a}}","makeUnitSelectItemAtSlot":"a#b#{return {\"function\":\"makeUnitSelectItemAtSlot\",_returnType:'unit',unit:a,slotIndex:b}}","getItemTypeName":"a#{return {\"function\":\"getItemTypeName\",_returnType:'string',itemType:a}}","getMax":"a#b#{return {\"function\":\"getMax\",_returnType:'number',num1:a,num2:b}}","lastCreatedUnit":"{return {\"function\":\"getLastCreatedUnit\",_returnType:'unit'}}","getRotateSpeed":"a#{return {\"function\":\"getRotateSpeed\",_returnType:'number',unitType:a}}","owner":"a#{return {\"function\":\"getOwnerOfItem\",_returnType:'unit',entity:a}}","allUnits":"{return {\"function\":\"allUnits\",_returnType:'unitGroup'}}","stopUsingItem":"a#{return {\"function\":\"stopUsingItem\",_returnType:'item',entity:a}}","makeUnitVisible":"a#{return {\"function\":\"makeUnitVisible\",_returnType:'unit',entity:a}}","makeUnitInvisible":"a#{return {\"function\":\"makeUnitInvisible\",_returnType:'unit',entity:a}}","break":"{return {\"function\":\"break\",_returnType:'loop'}}","currentAmmo":"a#{return {\"function\":\"getCurrentAmmoOfItem\",_returnType:'number',item:a}}","getHeightOfRegion":"a#{return {\"function\":\"getHeightOfRegion\",_returnType:'number',region:a}}","changeScaleOfEntitySprite":"a#b#{return {\"function\":\"changeScaleOfEntitySprite\",_returnType:'entity',entity:a,scale:b}}","slice":"a#b#c#{return {\"function\":\"substringOf\",_returnType:'string',string:a,fromIndex:b,toIndex:c}}","setPlayerName":"a#b#{return {\"function\":\"setPlayerName\",_returnType:'player',player:a,name:b}}","makeUnitPickupItemAtSlot":"a#b#c#{return {\"function\":\"makeUnitPickupItemAtSlot\",_returnType:'unit',unit:a,item:b,slotIndex:c}}","dropItemInInventorySlot":"a#b#{return {\"function\":\"dropItemInInventorySlot\",_returnType:'unit',unit:a,slotIndex:b}}","subString":"a#b#{return {\"function\":\"subString\",_returnType:'boolean',sourceString:a,patternString:b}}","getItemMaxQuantity":"a#{return {\"function\":\"getItemMaxQuantity\",_returnType:'number',item:a}}","unbanPlayerFromChat":"a#{return {\"function\":\"unbanPlayerFromChat\",_returnType:'player',player:a}}","abs":"a#{return {\"function\":\"absoluteValueOfNumber\",_returnType:'number',number:a}}","changeDesc":"a#b#{return {\"function\":\"changeDescriptionOfItem\",_returnType:'item',item:a,string:b}}","triggeringUnit":"{return {\"function\":\"getTriggeringUnit\",_returnType:'unit'}}","getOwner":"a#{return {\"function\":\"getOwner\",_returnType:'player',entity:a}}","selectedPlayer":"{return {\"function\":\"selectedPlayer\",_returnType:'player'}}","lastTouchedItem":"{return {\"function\":\"getLastTouchedItem\",_returnType:'item'}}","lastTouchedProj":"{return {\"function\":\"getLastTouchedProjectile\",_returnType:'projectile'}}","allUnitsAttachedToItem":"a#{return {\"function\":\"allUnitsAttachedToItem\",_returnType:'unitGroup',entity:a}}","sendChatMessageToPlayer":"a#b#{return {\"function\":\"sendChatMessageToPlayer\",_returnType:'ui',message:a,player:b}}","playAdForEveryone":"{return {\"function\":\"playAdForEveryone\",_returnType:'ad'}}","hideUiTextForPlayer":"a#b#{return {\"function\":\"hideUiTextForPlayer\",_returnType:'ui',target:a,entity:b}}","showUiTextForPlayer":"a#b#{return {\"function\":\"showUiTextForPlayer\",_returnType:'ui',target:a,entity:b}}","playMusic":"a#{return {\"function\":\"playMusic\",_returnType:'music',music:a}}","assignPlayerType":"a#b#{return {\"function\":\"assignPlayerType\",_returnType:'player',entity:a,playerType:b}}","allProjectiles":"{return {\"function\":\"allProjectiles\",_returnType:'projectileGroup'}}","playMusicForPlayer":"a#b#{return {\"function\":\"playMusicForPlayer\",_returnType:'music',music:a,player:b}}","condition":"a#{return {\"function\":\"condition\",_returnType:'system',conditions:a}}","makeUnitVisibleToNeutralPlayers":"a#{return {\"function\":\"makeUnitVisibleToNeutralPlayers\",_returnType:'unit',entity:a}}","makeUnitVisibleToFriendlyPlayers":"a#{return {\"function\":\"makeUnitVisibleToFriendlyPlayers\",_returnType:'unit',entity:a}}","makeUnitPickupItem":"a#b#{return {\"function\":\"makeUnitPickupItem\",_returnType:'unit',unit:a,item:b}}","region":"a#b#c#d#{return {\"function\":\"dynamicRegion\",_returnType:'region',x:a,y:b,width:c,height:d}}","getEntityAttribute":"a#b#{return {\"function\":\"getEntityAttribute\",_returnType:'number',attribute:a,entity:b}}","currentTimeStamp":"{return {\"function\":\"currentTimeStamp\",_returnType:'number'}}","giveNewItemWithQuantityToUnit":"a#b#c#{return {\"function\":\"giveNewItemWithQuantityToUnit\",_returnType:'item',itemType:a,number:b,unit:c}}","getEntityVelocityX":"a#{return {\"function\":\"getEntityVelocityX\",_returnType:'number',entity:a}}","defaultQuantityOfItemType":"a#{return {\"function\":\"defaultQuantityOfItemType\",_returnType:'number',itemType:a}}","getQuantityOfItemTypeInItemTypeGroup":"a#b#{return {\"function\":\"getQuantityOfItemTypeInItemTypeGroup\",_returnType:'number',itemType:a,itemTypeGroup:b}}","selectedUnitType":"{return {\"function\":\"selectedUnitType\",_returnType:'unitType'}}","getNumberOfItemsPresent":"{return {\"function\":\"getNumberOfItemsPresent\",_returnType:'number'}}","getMin":"a#b#{return {\"function\":\"getMin\",_returnType:'number',num1:a,num2:b}}","selectedUnit":"{return {\"function\":\"selectedUnit\",_returnType:'unit'}}","lastOverlappingProj":"{return {\"function\":\"getLastOverlappingProjectile\",_returnType:'projectile'}}","triggeringAttr":"{return {\"function\":\"getTriggeringAttribute\",_returnType:'attribute'}}","allUnitsMountedOnUnit":"a#{return {\"function\":\"allUnitsMountedOnUnit\",_returnType:'unitGroup',entity:a}}","allUnitsInRegion":"a#{return {\"function\":\"allUnitsInRegion\",_returnType:'unitGroup',region:a}}","dropAllItems":"a#{return {\"function\":\"dropAllItems\",_returnType:'unit',entity:a}}","useItemOnce":"a#{return {\"function\":\"useItemOnce\",_returnType:'item',item:a}}","stopAcceptingPlayers":"{return {\"function\":\"stopAcceptingPlayers\",_returnType:'player'}}","setEntityVelocityAtAngle":"a#b#c#{return {\"function\":\"setEntityVelocityAtAngle\",_returnType:'entity',entity:a,speed:b,angle:c}}","setEntityAttributeMax":"a#b#c#{return {\"function\":\"setEntityAttributeMax\",_returnType:'entity',attribute:a,entity:b,value:c}}","getValueOfPlayerVariable":"a#b#{return {\"function\":\"getValueOfPlayerVariable\",_returnType:'undefined',variable:a,player:b}}","allRegions":"{return {\"function\":\"allRegions\",_returnType:'regionGroup'}}","maxValueOfItemType":"a#{return {\"function\":\"maxValueOfItemType\",_returnType:'number',itemType:a}}","angleBetweenMouseAndWindowCenter":"a#{return {\"function\":\"angleBetweenMouseAndWindowCenter\",_returnType:'number',player:a}}","setPlayerAttributeMin":"a#b#c#{return {\"function\":\"setPlayerAttributeMin\",_returnType:'player',attributeType:a,player:b,number:c}}","makePlayerTradeWithPlayer":"a#b#{return {\"function\":\"makePlayerTradeWithPlayer\",_returnType:'player',playerA:a,playerB:b}}","pow":"a#b#{return {\"function\":\"getExponent\",_returnType:'number',base:a,power:b}}","lastAttackedUnit":"{return {\"function\":\"getLastAttackedUnit\",_returnType:'unit'}}","lastAttackingUnit":"{return {\"function\":\"getLastAttackingUnit\",_returnType:'unit'}}","updateUiTextForTimeForPlayer":"a#b#c#d#{return {\"function\":\"updateUiTextForTimeForPlayer\",_returnType:'ui',target:a,value:b,player:c,time:d}}","getNumberOfUnitsOfUnitType":"a#{return {\"function\":\"getNumberOfUnitsOfUnitType\",_returnType:'number',unitType:a}}","aiMoveToPosition":"a#b#{return {\"function\":\"aiMoveToPosition\",_returnType:'AI',unit:a,position:b}}","aiAttackUnit":"a#b#{return {\"function\":\"aiAttackUnit\",_returnType:'AI',unit:a,targetUnit:b}}","getNumberOfPlayersOfPlayerType":"a#{return {\"function\":\"getNumberOfPlayersOfPlayerType\",_returnType:'number',playerType:a}}","changeSensorRadius":"a#b#{return {\"function\":\"changeSensorRadius\",_returnType:'sensor',sensor:a,radius:b}}","ownerUnitOfSensor":"a#{return {\"function\":\"ownerUnitOfSensor\",_returnType:'unit',sensor:a}}","sensor":"a#{return {\"function\":\"getSensorOfUnit\",_returnType:'sensor',unit:a}}","getTriggeringSensor":"{return {\"function\":\"getTriggeringSensor\",_returnType:'sensor'}}","lastChatMessageSent":"a#{return {\"function\":\"getLastChatMessageSentByPlayer\",_returnType:'string',player:a}}","loadPlayerDataAndApplyIt":"a#b#{return {\"function\":\"loadPlayerDataAndApplyIt\",_returnType:'player',player:a,unit:b}}","createFloatingText":"a#b#c#{return {\"function\":\"createFloatingText\",_returnType:'ui',text:a,position:b,color:c}}","getLengthOfString":"a#{return {\"function\":\"getLengthOfString\",_returnType:'number',string:a}}","setLastAttackedUnit":"a#{return {\"function\":\"setLastAttackedUnit\",_returnType:'unit',unit:a}}","setLastAttackingUnit":"a#{return {\"function\":\"setLastAttackingUnit\",_returnType:'unit',unit:a}}","setItemFireRate":"a#b#{return {\"function\":\"setItemFireRate\",_returnType:'item',number:a,item:b}}","applyImpulseOnEntityXY":"a#b#c#{return {\"function\":\"applyImpulseOnEntityXY\",_returnType:'entity',impulse.x:a,impulse.y:b,entity:c}}","toLowerCase":"a#{return {\"function\":\"toLowerCase\",_returnType:'string',string:a}}","stringStartsWith":"a#b#{return {\"function\":\"stringStartsWith\",_returnType:'boolean',sourceString:a,patternString:b}}","stringEndsWith":"a#b#{return {\"function\":\"stringEndsWith\",_returnType:'boolean',sourceString:a,patternString:b}}","replaceValuesInString":"a#b#c#{return {\"function\":\"replaceValuesInString\",_returnType:'string',matchString:a,sourceString:b,newString:c}}","lastAttackingItem":"{return {\"function\":\"getLastAttackingItem\",_returnType:'item'}}","playSoundForPlayer":"a#b#{return {\"function\":\"playSoundForPlayer\",_returnType:'player',sound:a,player:b}}","stopSoundForPlayer":"a#b#{return {\"function\":\"stopSoundForPlayer\",_returnType:'player',sound:a,player:b}}","showDismissibleInputModalToPlayer":"a#b#{return {\"function\":\"showDismissibleInputModalToPlayer\",_returnType:'ui',player:a,inputLabel:b}}","getTimeString":"a#{return {\"function\":\"getTimeString\",_returnType:'string',seconds:a}}","setItemName":"a#b#{return {\"function\":\"setItemName\",_returnType:'item',name:a,item:b}}","changeItemInventoryImage":"a#b#{return {\"function\":\"changeItemInventoryImage\",_returnType:'item',url:a,item:b}}","getItemDescription":"a#{return {\"function\":\"getItemDescription\",_returnType:'string',item:a}}","addAttributeBuffToUnit":"a#b#c#d#{return {\"function\":\"addAttributeBuffToUnit\",_returnType:'unit',entity:a,value:b,attribute:c,time:d}}","addPercentageAttributeBuffToUnit":"a#b#c#d#{return {\"function\":\"addPercentageAttributeBuffToUnit\",_returnType:'unit',entity:a,value:b,attribute:c,time:d}}","stunUnit":"a#{return {\"function\":\"stunUnit\",_returnType:'unit',unit:a}}","removeStunFromUnit":"a#{return {\"function\":\"removeStunFromUnit\",_returnType:'unit',unit:a}}","setLastAttackingItem":"a#{return {\"function\":\"setLastAttackingItem\",_returnType:'item',item:a}}","mutePlayerMicrophone":"a#{return {\"function\":\"mutePlayerMicrophone\",_returnType:'player',player:a}}","unmutePlayerMicrophone":"a#{return {\"function\":\"unmutePlayerMicrophone\",_returnType:'player',player:a}}","sendPostRequest":"a#b#c#{return {\"function\":\"sendPostRequest\",_returnType:'system',string:a,url:b,varName:c}}","loadUnitDataFromString":"a#b#{return {\"function\":\"loadUnitDataFromString\",_returnType:'unit',string:a,unit:b}}","loadPlayerDataFromString":"a#b#{return {\"function\":\"loadPlayerDataFromString\",_returnType:'player',string:a,player:b}}","getUnitData":"a#{return {\"function\":\"getUnitData\",_returnType:'string',unit:a}}","getPlayerData":"a#{return {\"function\":\"getPlayerData\",_returnType:'string',player:a}}","getUnitId":"a#{return {\"function\":\"getUnitId\",_returnType:'string',unit:a}}","getPlayerId":"a#{return {\"function\":\"getPlayerId\",_returnType:'string',player:a}}","getUnitFromId":"a#{return {\"function\":\"getUnitFromId\",_returnType:'unit',string:a}}","getPlayerFromId":"a#{return {\"function\":\"getPlayerFromId\",_returnType:'player',string:a}}","getStringArrayLength":"a#{return {\"function\":\"getStringArrayLength\",_returnType:'number',string:a}}","getStringArrayElement":"a#b#{return {\"function\":\"getStringArrayElement\",_returnType:'string',number:a,string:b}}","insertStringArrayElement":"a#b#{return {\"function\":\"insertStringArrayElement\",_returnType:'string',value:a,string:b}}","updateStringArrayElement":"a#b#c#{return {\"function\":\"updateStringArrayElement\",_returnType:'string',number:a,string:b,value:c}}","removeStringArrayElement":"a#b#{return {\"function\":\"removeStringArrayElement\",_returnType:'string',number:a,string:b}}","removeAllAttributeBuffs":"a#{return {\"function\":\"removeAllAttributeBuffs\",_returnType:'unit',unit:a}}","changeInventorySlotColor":"a#b#{return {\"function\":\"changeInventorySlotColor\",_returnType:'item',item:a,string:b}}","setOwnerUnitOfProjectile":"a#b#{return {\"function\":\"setOwnerUnitOfProjectile\",_returnType:'projectile',projectile:a,unit:b}}","thisEntity":"{return {\"function\":\"thisEntity\",_returnType:'entity'}}","entityName":"a#{return {\"function\":\"entityName\",_returnType:'string',entity:a}}","selectedInventorySlot":"a#{return {\"function\":\"selectedInventorySlot\",_returnType:'number',unit:a}}","log10":"a#{return {\"function\":\"log10\",_returnType:'number',value:a}}","addBotPlayer":"a#{return {\"function\":\"addBotPlayer\",_returnType:'AI',name:a}}","botPlayers":"{return {\"function\":\"botPlayers\",_returnType:'playerGroup'}}","enableAI":"a#{return {\"function\":\"enableAI\",_returnType:'AI',unit:a}}","disableAI":"a#{return {\"function\":\"disableAI\",_returnType:'AI',unit:a}}","isAIEnabled":"a#{return {\"function\":\"isAIEnabled\",_returnType:'boolean',unit:a}}","isBotPlayer":"a#{return {\"function\":\"isBotPlayer\",_returnType:'boolean',player:a}}","isComputerPlayer":"a#{return {\"function\":\"isComputerPlayer\",_returnType:'boolean',player:a}}","entitiesBetweenTwoPositions":"a#b#{return {\"function\":\"entitiesBetweenTwoPositions\",_returnType:'entityGroup',positionA:a,positionB:b}}","unitSensorRadius":"a#{return {\"function\":\"unitSensorRadius\",_returnType:'number',unit:a}}","aiGoIdle":"a#{return {\"function\":\"aiGoIdle\",_returnType:'AI',unit:a}}","targetUnit":"a#{return {\"function\":\"targetUnit\",_returnType:'unit',unit:a}}","sendCoinsToPlayer":"a#b#{return {\"function\":\"sendCoinsToPlayer\",_returnType:'Coins',coins:a,player:b}}","addChatFilter":"a#{return {\"function\":\"addChatFilter\",_returnType:'ui',words:a}}","num2str":"a#{return {\"function\":\"numberToString\",_returnType:'string',value:a}}","sendCoinsToPlayer2":"a#b#{return {\"function\":\"sendCoinsToPlayer2\",_returnType:'Coins',coins:a,player:b}}","playerIsCreator":"a#{return {\"function\":\"playerIsCreator\",_returnType:'boolean',player:a}}","setMaxAttackRange":"a#b#{return {\"function\":\"setMaxAttackRange\",_returnType:'AI',unit:a,number:b}}","setLetGoDistance":"a#b#{return {\"function\":\"setLetGoDistance\",_returnType:'AI',unit:a,number:b}}","setMaxTravelDistance":"a#b#{return {\"function\":\"setMaxTravelDistance\",_returnType:'AI',unit:a,number:b}}","getPlayerSelectedUnit":"a#{return {\"function\":\"getPlayerSelectedUnit\",_returnType:'unit',player:a}}","toDegrees":"a#{return {\"function\":\"toDegrees\",_returnType:'number',number:a}}","toRadians":"a#{return {\"function\":\"toRadians\",_returnType:'number',number:a}}","polarProjection":"a#b#c#{return {\"function\":\"getPositionInFrontOfPosition\",_returnType:'position',position:a,distance:b,angle:c}}","editMapTile":"a#b#c#d#{return {\"function\":\"editMapTile\",_returnType:'Multiple',gid:a,layer:b,x:c,y:d}}","loadMapFromString":"a#{return {\"function\":\"loadMapFromString\",_returnType:'Multiple',string:a}}","getMapJson":"{return {\"function\":\"getMapJson\",_returnType:'string'}}","teleportEntity":"a#b#{return {\"function\":\"teleportEntity\",_returnType:'unit',entity:a,position:b}}","forAllDebris":"a#{return {\"function\":\"forAllDebris\",_returnType:'loop',debrisGroup:a}}","roleExistsForPlayer":"a#b#{return {\"function\":\"roleExistsForPlayer\",_returnType:'boolean',name:a,player:b}}","emitParticlesFromEntity":"a#b#c#{return {\"function\":\"emitParticlesFromEntity\",_returnType:'particle',particleType:a,angle:b,entity:c}}","emitParticlesAtPosition":"a#b#c#{return {\"function\":\"emitParticlesAtPosition\",_returnType:'particle',particleType:a,position:b,angle:c}}","editMapTiles":"a#b#c#d#e#f#{return {\"function\":\"editMapTiles\",_returnType:'Multiple',gid:a,layer:b,x:c,y:d,width:e,height:f}}","getMapTileId":"a#b#c#{return {\"function\":\"getMapTileId\",_returnType:'number',x:a,y:b,layer:c}}","stringIsANumber":"a#{return {\"function\":\"stringIsANumber\",_returnType:'boolean',string:a}}","setSourceItemOfProjectile":"a#b#{return {\"function\":\"setSourceItemOfProjectile\",_returnType:'projectile',projectile:a,item:b}}","getGlobalVariable":"a#{return {\"function\":\"getGlobalVariable\",_returnType:'system',name:a}}","lastReceivedPostResponse":"{return {\"function\":\"lastReceivedPostResponse\",_returnType:'string'}}","lastUpdatedVariableName":"{return {\"function\":\"lastUpdatedVariableName\",_returnType:'string'}}","getVariable":"a#{return {\"function\":\"getVariable\",_returnType:'Multiple',name:a}}","str2obj":"a#{return {\"function\":\"stringToObject\",_returnType:'object',string:a}}","elementFromObject":"a#b#{return {\"function\":\"elementFromObject\",_returnType:'object',key:a,object:b}}","obj2Str":"a#{return {\"function\":\"objectToString\",_returnType:'string',object:a}}","removeElement":"a#b#{return {\"function\":\"removeElement\",_returnType:'object',key:a,object:b}}","makePlayerSendChatMessage":"a#b#{return {\"function\":\"makePlayerSendChatMessage\",_returnType:'Chat',player:a,message:b}}","emptyObject":"{return {\"function\":\"emptyObject\",_returnType:'object'}}","addStringElement":"a#b#c#{return {\"function\":\"addStringElement\",_returnType:'object',key:a,value:b,object:c}}","elementCount":"a#{return {\"function\":\"elementCount\",_returnType:'number',object:a}}","addObjectElement":"a#b#c#{return {\"function\":\"addObjectElement\",_returnType:'object',key:a,value:b,object:c}}","requestPost":"a#b#c#{return {\"function\":\"requestPost\",_returnType:'system',data:a,url:b,varName:c}}","unitIsCarryingItemType":"a#b#{return {\"function\":\"unitIsCarryingItemType\",_returnType:'boolean',unit:a,itemType:b}}","startCastingAbility":"a#b#{return {\"function\":\"startCastingAbility\",_returnType:'unit',entity:a,ability:b}}","stopCastingAbility":"a#b#{return {\"function\":\"stopCastingAbility\",_returnType:'unit',entity:a,ability:b}}","applyTorqueOnEntityToFacePosition":"a#b#c#{return {\"function\":\"applyTorqueOnEntityToFacePosition\",_returnType:'entity',force:a,entity:b,position:c}}","changeRegionColor":"a#b#c#{return {\"function\":\"changeRegionColor\",_returnType:'region',region:a,inside:b,alpha:c}}","startMovingUnitUp":"a#{return {\"function\":\"startMovingUnitUp\",_returnType:'unit',entity:a}}","startMovingUnitDown":"a#{return {\"function\":\"startMovingUnitDown\",_returnType:'unit',entity:a}}","startMovingUnitLeft":"a#{return {\"function\":\"startMovingUnitLeft\",_returnType:'unit',entity:a}}","startMovingUnitRight":"a#{return {\"function\":\"startMovingUnitRight\",_returnType:'unit',entity:a}}","stopMovingUnitX":"a#{return {\"function\":\"stopMovingUnitX\",_returnType:'unit',entity:a}}","stopMovingUnitY":"a#{return {\"function\":\"stopMovingUnitY\",_returnType:'unit',entity:a}}","openBackpackForPlayer":"a#{return {\"function\":\"openBackpackForPlayer\",_returnType:'ui',player:a}}","closeBackpackForPlayer":"a#{return {\"function\":\"closeBackpackForPlayer\",_returnType:'ui',player:a}}","setUnitNameLabelColor":"a#b#{return {\"function\":\"setUnitNameLabelColor\",_returnType:'ui',unit:a,color:b}}","getCameraPosition":"{return {\"function\":\"getCameraPosition\",_returnType:'position'}}","getCameraWidth":"{return {\"function\":\"getCameraWidth\",_returnType:'number'}}","getCameraHeight":"{return {\"function\":\"getCameraHeight\",_returnType:'number'}}","allUnitsOfUnitType":"a#{return {\"function\":\"allUnitsOfUnitType\",_returnType:'unitGroup',unitType:a}}","forAllUnits":"a#{return {\"function\":\"forAllUnits\",_returnType:'loop',unitGroup:a}}","allItemsOfItemType":"a#{return {\"function\":\"allItemsOfItemType\",_returnType:'itemGroup',itemType:a}}","allProjectilesofProjectileType":"a#{return {\"function\":\"allProjectilesofProjectileType\",_returnType:'projectileGroup',projectileType:a}}","setUnitNameLabelColorForPlayer":"a#b#c#{return {\"function\":\"setUnitNameLabelColorForPlayer\",_returnType:'ui',unit:a,color:b,player:c}}","getDefaultAttributeValueOfUnitType":"a#{return {\"function\":\"getDefaultAttributeValueOfUnitType\",_returnType:'number',unitType:a}}","playerCameraStopTracking":"a#{return {\"function\":\"playerCameraStopTracking\",_returnType:'camera',player:a}}","x":"a#{return a._returnType === 'position' || a._returnType === 'entity'? {\"function\":\"getPositionX\",position:a} : a._returnType === 'region' || a._returnType === 'entity'? {\"function\":\"getXCoordinateOfRegion\",region:a} : {'error': a}}","y":"a#{return a._returnType === 'position' || a._returnType === 'entity'? {\"function\":\"getPositionY\",position:a} : a._returnType === 'region' || a._returnType === 'entity'? {\"function\":\"getYCoordinateOfRegion\",region:a} : {'error': a}}","type":"a#{return a._returnType === 'item' || a._returnType === 'entity'? {\"function\":\"getItemTypeOfItem\",entity:a} : a._returnType === 'unit' || a._returnType === 'entity'? {\"function\":\"getUnitTypeOfUnit\",entity:a} : a._returnType === 'player' || a._returnType === 'entity'? {\"function\":\"playerTypeOfPlayer\",player:a} : a._returnType === 'unitTypeGroup' || a._returnType === 'entity'? {\"function\":\"getRandomUnitTypeFromUnitTypeGroup\",unitTypeGroup:a} : {'error': a}}"}






  function throwError(s: string) {
    throw new Error(s)
  }
  function removeHtmlTag(s: string) {
    return typeof s=== 'string' ? s.replaceAll(/<\/?.+?>/g, "") : s
  }
%}

/* lexical grammar */
%lex

%%

\s+                   /* skip whitespace */
["][^"]*["]|['][^']*[']           return 'STRING'
[0-9]+("."[0-9]+)?\b  return 'NUMBER'
[a-zA-Z0-9]+          return 'NAME'
((">="|"<=")|"=="|">"|"<")           return 'COMPARE'
"&&"                  return 'AND'
"||"                  return 'OR'
","                   return ','
"*"                   return '*'
"/"                   return '/'
"-"                   return '-'
"+"                   return '+'
"^"                   return '^'
"%"                   return '%'
"("                   return '('
")"                   return ')'
"["                   return '['
"]"                   return ']'
"'"                   return "'"
'"'                   return '"'
"."                   return '.'
<<EOF>>               return 'EOF'

/lex

%start expressions
%left '+' '-'
%left '*' '/'
%left '^'
%left AND OR
%left COMPARE
%left UMINUS

%% /* language grammar */
expressions
    : e EOF
      {  return $1; }
    ;

condition_list
    : condition_list COMPARE e
       {$$ = $1.concat([$3]);}
    | e COMPARE e
 { $$ = {
               type: "condition",
               conditions: [
                    {
                         "operandType": typeof $1 === 'object'?$1._returnType : typeof $1,
                         "operator": $COMPARE
                    },
                    $1,
                    $3
               ],
               "then": [],
               "else": []
          }
    }
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
        { $$ = (typeof $1 === 'string' || (typeof $1 === 'object' && $1._returnType === 'string')) || (typeof $3 === 'string' || (typeof $3 === 'object' && $3._returnType === 'string')) ?{"function": "concat",_returnType:"string","textA": $1,"textB": $3}: {function: 'calculate', _returnType:'number', items: [{operator:"+"},$1, $3]}}    
    | e '^' e 
        { $$ =  {
          function: "getExponent",
          base: $1,
          power: $3,
          _returnType: "number",
    }}
    | e '%' e
        { $$ = { function: 'calculate', _returnType:'number', items: [{operator:"%"},$1, $3]}}
    | e '-' e
        { $$ = { function: 'calculate', _returnType:'number', items: [{operator:"-"},$1, $3]}}
    | e '*' e
        { $$ = { function: 'calculate', _returnType:'number', items: [{operator:"*"},$1, $3]}}
    | e '/' e
        { $$ = { function: 'calculate', _returnType:'number', items: [{operator:"/"},$1, $3]}}
    | '-' e %prec UMINUS
        { $$ = { function: 'calculate', _returnType:'number', items: [{operator:"*"},$2, -1]} }
    | '(' e ')'
        { $$ = $2; }
    | condition_list
        {$$ = $condition_list}
    | condition_list COMPARE e 
        { $$ = {
               type: "condition",
               conditions: [
                    {
                         "operandType": typeof $1 === 'object'?$1._returnType : typeof $1,
                         "operator": $COMPARE
                    },
                    $1,
                    $3
               ],
               "then": [],
               "else": []
          }
    }
    | condition_list AND condition_list{
          $$ = 
               {type: "condition",
               conditions: [
                    {
                         "operandType": "and",
                         "operator": "AND"
                    },
                    $1.conditions ?? $1,
                    $3.conditions ?? $3
               ],
               "then": [],
               "else": []
               }
          }
    
    | condition_list OR condition_list{
$$ = {
               "type": "condition",
               "conditions": [
                    {
                         "operandType": "or",
                         "operator": "OR"
                    },
                    [
                         {
                              "operandType": "boolean",
                              "operator": "=="
                         },
                         true,
                         true
                    ],
                    [
                         {
                              "operandType": "boolean",
                              "operator": "=="
                         },
                         true,
                         true
                    ]
               ],
               "then": [],
               "else": []
          }
    }
    | NUMBER
        {$$ = Number(yytext);}
    | NAME
    {
      if(funcs[$NAME]) {
        if (funcs[$NAME].split('#').length === 1) {
          $$ = new Function(...funcs[$NAME].split('#')).apply(undefined, undefined);
        }
        else throwError($NAME + " need parameters")
      }
      else throwError($NAME + " is undefined")
    }
    | NAME '('')'
    {
      if(funcs[$NAME]) {
        if (funcs[$NAME].split('#').length === 1) {
          $$ = new Function(...funcs[$NAME].split('#')).apply(undefined, undefined);
        }
        else throwError($NAME + " need parameters")
      }
      else throwError($NAME + " is undefined")
    }
    | NAME '(' '"' expression_list '"' ')'
    | NAME '(' expression_list ')'
        {if(funcs[$NAME]) $$ = new Function(...funcs[$NAME].split('#')).apply(undefined, $expression_list); else throwError($NAME + " is undefined")}
    | STRING
        {$$ = yytext.slice(1, yytext.length-1)}
    | e'.' NAME
     {if(funcs[$NAME]) $$ = new Function(...funcs[$NAME].split('#')).apply(undefined, [$1]); else {
     if($1._returnType === "entity") {
      $$ = {
        function: "getValueOfEntityVariable",
        variable: {
          function: "getEntityVariable",
          variable: {
            text: $NAME,
            key: $NAME,
          }
        },
        entity: $1
      }
     } else {
       throwError($NAME + " is undefined")}
     }
    }
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