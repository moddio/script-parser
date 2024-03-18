%{var funcs: any= 

{"getItemInFrontOfUnit":"a:unit#{return {\"function\":\"getItemInFrontOfUnit\",_returnType:'item',entity:a}}","selectedProjectile":"{return {\"function\":\"selectedProjectile\",_returnType:'projectile'}}","getAttributeTypeOfAttribute":"a:attribute#{return {\"function\":\"getAttributeTypeOfAttribute\",_returnType:'attributeType',entity:a}}","playAdForPlayer":"a:player#{return {\"function\":\"playAdForPlayer\",_returnType:'ad',entity:a}}","randNumber":"a:number#b:number#{return {\"function\":\"getRandomNumberBetween\",_returnType:'number',min:a,max:b}}","setTimeOut":"a:number#{return {\"function\":\"setTimeOut\",_returnType:'timer',duration:a}}","facingAngle":"a:unit#{return {\"function\":\"unitsFacingAngle\",_returnType:'number',unit:a}}","getMapHeight":"{return {\"function\":\"getMapHeight\",_returnType:'number'}}","getEntityType":"a:entity#{return {\"function\":\"getEntityType\",_returnType:'string',entity:a}}","getSelectedEntity":"{return {\"function\":\"getSelectedEntity\",_returnType:'entity'}}","rotateEntityToFacePosition":"a:entity#b:position#{return {\"function\":\"rotateEntityToFacePosition\",_returnType:'entity',entity:a,position:b}}","destroyEntity":"a:entity#{return {\"function\":\"destroyEntity\",_returnType:'entity',entity:a}}","setEntityDepth":"a:entity#b:number#{return {\"function\":\"setEntityDepth\",_returnType:'entity',entity:a,value:b}}","getItemAtSlot":"a:number#b:unit#{return {\"function\":\"getItemAtSlot\",_returnType:'item',slot:a,unit:b}}","hideUnitFromPlayer":"a:unit#b:player#{return {\"function\":\"hideUnitFromPlayer\",_returnType:'unit',entity:a,player:b}}","showUnitToPlayer":"a:unit#b:player#{return {\"function\":\"showUnitToPlayer\",_returnType:'unit',entity:a,player:b}}","entitiesCollidingWithLastRaycast":"{return {\"function\":\"entitiesCollidingWithLastRaycast\",_returnType:'entityGroup'}}","lastPurchasedUnit":"{return {\"function\":\"getLastPurchasedUnit\",_returnType:'unit'}}","sendChatMessage":"a:string#{return {\"function\":\"sendChatMessage\",_returnType:'ui',message:a}}","playSoundAtPosition":"a:sound#b:position#{return {\"function\":\"playSoundAtPosition\",_returnType:'sound',sound:a,position:b}}","pos":"a:number#b:number#{return {\"function\":\"xyCoordinate\",_returnType:'position',x:a,y:b}}","toFixed":"a:number#b:number#{return {\"function\":\"toFixed\",_returnType:'number',value:a,precision:b}}","getEntityState":"a:entity#{return {\"function\":\"getEntityState\",_returnType:'state',entity:a}}","dropItemAtPosition":"a:item#b:position#{return {\"function\":\"dropItemAtPosition\",_returnType:'item',item:a,position:b}}","applyForceOnEntityAngle":"a:number#b:entity#c:number#{return {\"function\":\"applyForceOnEntityAngle\",_returnType:'entity',force:a,entity:b,angle:c}}","showInputModalToPlayer":"a:player#b:string#{return {\"function\":\"showInputModalToPlayer\",_returnType:'ui',player:a,inputLabel:b}}","getItemQuantity":"a:item#{return {\"function\":\"getItemQuantity\",_returnType:'number',item:a}}","isPlayerLoggedIn":"a:player#{return {\"function\":\"isPlayerLoggedIn\",_returnType:'boolean',player:a}}","openDialogueForPlayer":"a:dialogue#b:player#{return {\"function\":\"openDialogueForPlayer\",_returnType:'dialogue',dialogue:a,player:b}}","continue":"{return {\"function\":\"continue\",_returnType:'loop'}}","openWebsiteForPlayer":"a:string#b:player#{return {\"function\":\"openWebsiteForPlayer\",_returnType:'player',string:a,player:b}}","setEntityLifeSpan":"a:entity#b:number#{return {\"function\":\"setEntityLifeSpan\",_returnType:'entity',entity:a,lifeSpan:b}}","selectedItem":"{return {\"function\":\"selectedItem\",_returnType:'item'}}","hideUnitNameLabel":"a:unit#{return {\"function\":\"hideUnitNameLabel\",_returnType:'unit',entity:a}}","setTriggeringUnit":"a:unit#{return {\"function\":\"setTriggeringUnit\",_returnType:'unit',entity:a}}","createUnitAtPosition":"a:unitType#b:player#c:position#d:number#{return {\"function\":\"createUnitAtPosition\",_returnType:'unit',unitType:a,entity:b,position:c,angle:d}}","hideUiTextForEveryone":"a:updateUiText.target#{return {\"function\":\"hideUiTextForEveryone\",_returnType:'ui',target:a}}","playersAreFriendly":"a:player#b:player#{return {\"function\":\"playersAreFriendly\",_returnType:'boolean',playerA:a,playerB:b}}","hideGameSuggestionsForPlayer":"a:player#{return {\"function\":\"hideGameSuggestionsForPlayer\",_returnType:'player',player:a}}","cos":"a:number#{return {\"function\":\"cos\",_returnType:'number',angle:a}}","transformRegionDimensions":"a:region#b:number#c:number#d:number#e:number#{return {\"function\":\"transformRegionDimensions\",_returnType:'region',region:a,x:b,y:c,width:d,height:e}}","makeUnitInvisibleToFriendlyPlayers":"a:unit#{return {\"function\":\"makeUnitInvisibleToFriendlyPlayers\",_returnType:'unit',entity:a}}","setEntityAttributeMin":"a:attributeType#b:entity#c:number#{return {\"function\":\"setEntityAttributeMin\",_returnType:'entity',attribute:a,entity:b,value:c}}","entityHeight":"a:entity#{return {\"function\":\"entityHeight\",_returnType:'number',entity:a}}","allUnitsOwnedByPlayer":"a:player#{return {\"function\":\"allUnitsOwnedByPlayer\",_returnType:'unitGroup',player:a}}","showInviteFriendsModal":"a:player#{return {\"function\":\"showInviteFriendsModal\",_returnType:'ui',player:a}}","showCustomModalToPlayer":"a:string#b:player#{return {\"function\":\"showCustomModalToPlayer\",_returnType:'ui',htmlContent:a,player:b}}","lastSelectingDialogueOption":"{return {\"function\":\"getLastPlayerSelectingDialogueOption\",_returnType:'player'}}","playerAttributeMax":"a:attributeType#b:player#{return {\"function\":\"playerAttributeMax\",_returnType:'number',attribute:a,entity:b}}","triggeringItem":"{return {\"function\":\"getTriggeringItem\",_returnType:'item'}}","getItemParticle":"a:particleType#b:item#{return {\"function\":\"getItemParticle\",_returnType:'particle',particleType:a,entity:b}}","allProjectilesAttachedToUnit":"a:unit#{return {\"function\":\"allProjectilesAttachedToUnit\",_returnType:'projectileGroup',entity:a}}","showUiTextForEveryone":"a:updateUiText.target#{return {\"function\":\"showUiTextForEveryone\",_returnType:'ui',target:a}}","forAllItems":"a:itemGroup#{return {\"function\":\"forAllItems\",_returnType:'loop',itemGroup:a}}","removePlayerFromPlayerGroup":"a:player#b:playerGroup#{return {\"function\":\"removePlayerFromPlayerGroup\",_returnType:'playerGroup',player:a,playerGroup:b}}","getPlayerAttribute":"a:attributeType#b:player#{return {\"function\":\"getPlayerAttribute\",_returnType:'number',attribute:a,entity:b}}","playerIsControlledByHuman":"a:player#{return {\"function\":\"playerIsControlledByHuman\",_returnType:'boolean',player:a}}","setUnitOwner":"a:unit#b:player#{return {\"function\":\"setUnitOwner\",_returnType:'unit',unit:a,player:b}}","getMapWidth":"{return {\"function\":\"getMapWidth\",_returnType:'number'}}","updateItemQuantity":"a:item#b:number#{return {\"function\":\"updateItemQuantity\",_returnType:'item',entity:a,quantity:b}}","applyForceOnEntityAngleLT":"a:number#b:entity#c:number#{return {\"function\":\"applyForceOnEntityAngleLT\",_returnType:'entity',force:a,entity:b,angle:c}}","setEntityState":"a:entity#b:state#{return {\"function\":\"setEntityState\",_returnType:'entity',entity:a,state:b}}","entityWidth":"a:entity#{return {\"function\":\"entityWidth\",_returnType:'number',entity:a}}","hideUnitInPlayerMinimap":"a:unit#b:player#{return {\"function\":\"hideUnitInPlayerMinimap\",_returnType:'unit',unit:a,player:b}}","selectedItemType":"{return {\"function\":\"selectedItemType\",_returnType:'itemType'}}","getPlayerCount":"{return {\"function\":\"getPlayerCount\",_returnType:'number'}}","getItemCurrentlyHeldByUnit":"a:unit#{return {\"function\":\"getItemCurrentlyHeldByUnit\",_returnType:'item',entity:a}}","allItemsDroppedOnGround":"{return {\"function\":\"allItemsDroppedOnGround\",_returnType:'itemGroup'}}","return":"{return {\"function\":\"return\",_returnType:'system'}}","runScript":"a:string#{return {\"function\":\"runScript\",_returnType:'script',scriptName:a}}","addUnitToUnitGroup":"a:unit#b:unitGroup#{return {\"function\":\"addUnitToUnitGroup\",_returnType:'unitGroup',unit:a,unitGroup:b}}","humanPlayers":"{return {\"function\":\"humanPlayers\",_returnType:'playerGroup'}}","lastUsedItem":"{return {\"function\":\"lastUsedItem\",_returnType:'item'}}","lastPlayerInput":"a:player#{return {\"function\":\"playerCustomInput\",_returnType:'string',player:a}}","arctan":"a:number#{return {\"function\":\"arctan\",_returnType:'number',number:a}}","concat":"a:string,number#b:string,number#{return {\"function\":\"concat\",_returnType:'string',textA:a,textB:b}}","getPlayerName":"a:player#{return {\"function\":\"getPlayerName\",_returnType:'string',entity:a}}","getSourceItemOfProjectile":"a:projectile#{return {\"function\":\"getSourceItemOfProjectile\",_returnType:'item',entity:a}}","triggeringRegion":"{return {\"function\":\"getTriggeringRegion\",_returnType:'region'}}","playerCameraSetZoom":"a:player#b:number#{return {\"function\":\"playerCameraSetZoom\",_returnType:'camera',player:a,zoom:b}}","floor":"a:number#{return {\"function\":\"mathFloor\",_returnType:'number',value:a}}","setUnitNameLabel":"a:unit#b:string#{return {\"function\":\"setUnitNameLabel\",_returnType:'ui',unit:a,name:b}}","getUnitTypeName":"a:unitType#{return {\"function\":\"getUnitTypeName\",_returnType:'string',unitType:a}}","openShopForPlayer":"a:shop#b:player#{return {\"function\":\"openShopForPlayer\",_returnType:'shop',shop:a,player:b}}","sqrt":"a:number#{return {\"function\":\"squareRoot\",_returnType:'number',number:a}}","closeDialogueForPlayer":"a:player#{return {\"function\":\"closeDialogueForPlayer\",_returnType:'dialogue',player:a}}","comment":"{return {\"function\":\"comment\",_returnType:'ui'}}","createEntityAtPositionWithDimensions":"a:entity#b:position#c:player#d:number#e:number#f:number#{return {\"function\":\"createEntityAtPositionWithDimensions\",_returnType:'entity',entity:a,position:b,player:c,height:d,width:e,angle:f}}","increaseVariableByNumber":"a:variable#b:number#{return {\"function\":\"increaseVariableByNumber\",_returnType:'number',variable:a,number:b}}","getMouseCursorPosition":"a:player#{return {\"function\":\"getMouseCursorPosition\",_returnType:'position',player:a}}","lastOverlappingUnit":"{return {\"function\":\"getLastOverlappingUnit\",_returnType:'unit'}}","allItems":"{return {\"function\":\"allItems\",_returnType:'itemGroup'}}","allItemsAttachedToUnit":"a:unit#{return {\"function\":\"allItemsAttachedToUnit\",_returnType:'itemGroup',entity:a}}","getEntireMapRegion":"{return {\"function\":\"getEntireMapRegion\",_returnType:'region'}}","playerCameraTrackUnit":"a:player#b:unit#{return {\"function\":\"playerCameraTrackUnit\",_returnType:'camera',player:a,unit:b}}","castAbility":"a:unit#b:ability#{return {\"function\":\"castAbility\",_returnType:'unit',entity:a,abilityName:b}}","playersAreHostile":"a:player#b:player#{return {\"function\":\"playersAreHostile\",_returnType:'boolean',playerA:a,playerB:b}}","allItemsOwnedByUnit":"a:unit#{return {\"function\":\"allItemsOwnedByUnit\",_returnType:'itemGroup',entity:a}}","computerPlayers":"{return {\"function\":\"computerPlayers\",_returnType:'playerGroup'}}","playEntityAnimation":"a:entity#b:animationType#{return {\"function\":\"playEntityAnimation\",_returnType:'entity',entity:a,animation:b}}","while":"a:conditions#{return {\"function\":\"while\",_returnType:'loop',conditions:a}}","allEntities":"{return {\"function\":\"allEntities\",_returnType:'entityGroup'}}","lastPurchasedUnitType":"{return {\"function\":\"lastPurchasedUnitTypetId\",_returnType:'unitType'}}","applyForceOnEntityXY":"a:number#b:number#c:entity#{return {\"function\":\"applyForceOnEntityXY\",_returnType:'entity',force.x:a,force.y:b,entity:c}}","showUnitInPlayerMinimap":"a:unit#b:string#c:player#{return {\"function\":\"showUnitInPlayerMinimap\",_returnType:'unit',unit:a,color:b,player:c}}","savePlayerData":"a:player#{return {\"function\":\"savePlayerData\",_returnType:'player',player:a}}","hideUnitNameLabelFromPlayer":"a:unit#b:player#{return {\"function\":\"hideUnitNameLabelFromPlayer\",_returnType:'unit',entity:a,player:b}}","regionOverlapsWithRegion":"a:region#b:region#{return {\"function\":\"regionOverlapsWithRegion\",_returnType:'boolean',regionA:a,regionB:b}}","allItemTypesInGame":"{return {\"function\":\"allItemTypesInGame\",_returnType:'itemTypeGroup'}}","triggeringPlayer":"{return {\"function\":\"getTriggeringPlayer\",_returnType:'player'}}","getProjectileTypeOfProjectile":"a:projectile#{return {\"function\":\"getProjectileTypeOfProjectile\",_returnType:'projectileType',entity:a}}","allPlayers":"{return {\"function\":\"allPlayers\",_returnType:'playerGroup'}}","setPlayerAttribute":"a:attributeType#b:player#c:number#{return {\"function\":\"setPlayerAttribute\",_returnType:'player',attribute:a,entity:b,value:c}}","updateUiTextForPlayer":"a:updateUiText.target#b:string#c:player#{return {\"function\":\"updateUiTextForPlayer\",_returnType:'ui',target:a,value:b,entity:c}}","showUnitNameLabel":"a:unit#{return {\"function\":\"showUnitNameLabel\",_returnType:'unit',entity:a}}","closeShopForPlayer":"a:player#{return {\"function\":\"closeShopForPlayer\",_returnType:'shop',player:a}}","repeat":"a:number#{return {\"function\":\"repeat\",_returnType:'loop',count:a}}","stopMusic":"{return {\"function\":\"stopMusic\",_returnType:'sound'}}","setVelocityOfEntityXY":"a:number#b:number#c:entity#{return {\"function\":\"setVelocityOfEntityXY\",_returnType:'entity',velocity.x:a,velocity.y:b,entity:c}}","selectedRegion":"{return {\"function\":\"selectedRegion\",_returnType:'region'}}","showUnitNameLabelToPlayer":"a:unit#b:player#{return {\"function\":\"showUnitNameLabelToPlayer\",_returnType:'unit',entity:a,player:b}}","spawnItem":"a:itemType#b:position#{return {\"function\":\"spawnItem\",_returnType:'item',itemType:a,position:b}}","createItemWithMaxQuantityAtPosition":"a:itemType#b:position#{return {\"function\":\"createItemWithMaxQuantityAtPosition\",_returnType:'item',itemType:a,position:b}}","randItemType":"a:itemTypeGroup#{return {\"function\":\"getRandomItemTypeFromItemTypeGroup\",_returnType:'itemType',itemTypeGroup:a}}","lastOverlappedUnit":"{return {\"function\":\"getLastOverlappedUnit\",_returnType:'unit'}}","showMenu":"a:player#{return {\"function\":\"showMenu\",_returnType:'ui',player:a}}","startAcceptingPlayers":"{return {\"function\":\"startAcceptingPlayers\",_returnType:'player'}}","forAllEntities":"a:entityGroup#{return {\"function\":\"forAllEntities\",_returnType:'loop',entityGroup:a}}","makePlayerSelectUnit":"a:player#b:unit#{return {\"function\":\"makePlayerSelectUnit\",_returnType:'player',player:a,unit:b}}","setEntityAttribute":"a:attributeType#b:entity#c:number#{return {\"function\":\"setEntityAttribute\",_returnType:'entity',attribute:a,entity:b,value:c}}","lastCreatedItem":"{return {\"function\":\"getLastCreatedItem\",_returnType:'item'}}","lastCreatedProjectile":"{return {\"function\":\"getLastCreatedProjectile\",_returnType:'projectile'}}","forAllItemTypes":"a:itemTypeGroup#{return {\"function\":\"forAllItemTypes\",_returnType:'loop',itemTypeGroup:a}}","createEntityForPlayerAtPositionWithDimensions":"a:entity#b:player#c:position#d:number#e:number#f:number#{return {\"function\":\"createEntityForPlayerAtPositionWithDimensions\",_returnType:'unit',entity:a,player:b,position:c,height:d,width:e,angle:f}}","getUnitCount":"{return {\"function\":\"getUnitCount\",_returnType:'number'}}","lastTouchingUnit":"{return {\"function\":\"getLastTouchingUnit\",_returnType:'unit'}}","lastOverlappingItem":"{return {\"function\":\"getLastOverlappingItem\",_returnType:'item'}}","getItemInInventorySlot":"a:number#b:unit#{return {\"function\":\"getItemInInventorySlot\",_returnType:'item',slot:a,entity:b}}","updateUiTextForEveryone":"a:updateUiText.target#b:string#{return {\"function\":\"updateUiTextForEveryone\",_returnType:'ui',target:a,value:b}}","forAllProjectiles":"a:projectileGroup#{return {\"function\":\"forAllProjectiles\",_returnType:'loop',projectileGroup:a}}","angleBetweenPositions":"a:position#b:position#{return {\"function\":\"angleBetweenPositions\",_returnType:'number',positionA:a,positionB:b}}","stopMusicForPlayer":"a:player#{return {\"function\":\"stopMusicForPlayer\",_returnType:'music',player:a}}","positionCamera":"a:player#b:position#{return {\"function\":\"positionCamera\",_returnType:'camera',player:a,position:b}}","createProjectileAtPosition":"a:projectileType#b:position#c:number#d:number#{return {\"function\":\"createProjectileAtPosition\",_returnType:'projectile',projectileType:a,position:b,force:c,angle:d}}","getWidthOfRegion":"a:region#{return {\"function\":\"getWidthOfRegion\",_returnType:'number',region:a}}","showMenuAndSelectCurrentServer":"a:player#{return {\"function\":\"showMenuAndSelectCurrentServer\",_returnType:'ui',player:a}}","getSourceUnitOfProjectile":"a:projectile#{return {\"function\":\"getSourceUnitOfProjectile\",_returnType:'unit',entity:a}}","setFadingText":"a:unit#b:string#c:string#{return {\"function\":\"setFadingTextOfUnit\",_returnType:'unit',unit:a,text:b,color:c}}","changeScaleOfEntityBody":"a:entity#b:number#{return {\"function\":\"changeScaleOfEntityBody\",_returnType:'entity',entity:a,scale:b}}","entityBounds":"a:entity#{return {\"function\":\"entityBounds\",_returnType:'region',entity:a}}","entityAttributeMin":"a:attributeType#b:entity#{return {\"function\":\"entityAttributeMin\",_returnType:'number',attribute:a,entity:b}}","forAllRegions":"a:regionGroup#{return {\"function\":\"forAllRegions\",_returnType:'loop',regionGroup:a}}","rotateEntityToRadiansLT":"a:entity#b:number#{return {\"function\":\"rotateEntityToRadiansLT\",_returnType:'entity',entity:a,radians:b}}","str2num":"a:string#{return {\"function\":\"stringToNumber\",_returnType:'number',value:a}}","setPlayerAttributeMax":"a:attributeType#b:player#c:number#{return {\"function\":\"setPlayerAttributeMax\",_returnType:'player',attributeType:a,player:b,number:c}}","setPlayerAttributeRegenerationRate":"a:attributeType#b:player#c:number#{return {\"function\":\"setPlayerAttributeRegenerationRate\",_returnType:'player',attributeType:a,player:b,number:c}}","getQuantityOfUnitTypeInUnitTypeGroup":"a:unitType#b:unitTypeGroup#{return {\"function\":\"getQuantityOfUnitTypeInUnitTypeGroup\",_returnType:'number',unitType:a,unitTypeGroup:b}}","forAllUnitTypes":"a:unitTypeGroup#{return {\"function\":\"forAllUnitTypes\",_returnType:'loop',unitTypeGroup:a}}","centerOfRegion":"a:region#{return {\"function\":\"centerOfRegion\",_returnType:'position',region:a}}","lastRaycastCollisionPos":"a:entity#{return {\"function\":\"entityLastRaycastCollisionPosition\",_returnType:'position',entity:a}}","decreaseVariableByNumber":"a:variable#b:number#{return {\"function\":\"decreaseVariableByNumber\",_returnType:'number',variable:a,number:b}}","lastCastingUnit":"{return {\"function\":\"getLastCastingUnit\",_returnType:'unit'}}","lastTouchedUnit":"{return {\"function\":\"getLastTouchedUnit\",_returnType:'unit'}}","selectedParticle":"{return {\"function\":\"selectedParticle\",_returnType:'particle'}}","allUnitsAttachedToUnit":"a:unit#{return {\"function\":\"allUnitsAttachedToUnit\",_returnType:'unitGroup',entity:a}}","kickPlayer":"a:player#b:string#{return {\"function\":\"kickPlayer\",_returnType:'player',entity:a,message:b}}","forAllPlayers":"a:playerGroup#{return {\"function\":\"forAllPlayers\",_returnType:'loop',playerGroup:a}}","removeUnitFromUnitGroup":"a:unit#b:unitGroup#{return {\"function\":\"removeUnitFromUnitGroup\",_returnType:'unitGroup',unit:a,unitGroup:b}}","playersAreNeutral":"a:player#b:player#{return {\"function\":\"playersAreNeutral\",_returnType:'boolean',playerA:a,playerB:b}}","distanceBetweenPositions":"a:position#b:position#{return {\"function\":\"distanceBetweenPositions\",_returnType:'number',positionA:a,positionB:b}}","flipEntitySprite":"a:entity#b:flip#{return {\"function\":\"flipEntitySprite\",_returnType:'entity',entity:a,flip:b}}","makeUnitInvisibleToNeutralPlayers":"a:unit#{return {\"function\":\"makeUnitInvisibleToNeutralPlayers\",_returnType:'unit',entity:a}}","entityAttributeMax":"a:attributeType#b:entity#{return {\"function\":\"entityAttributeMax\",_returnType:'number',attribute:a,entity:b}}","getEntityPosition":"a:entity#{return {\"function\":\"getEntityPosition\",_returnType:'position',entity:a}}","playerHasAdblockEnabled":"a:player#{return {\"function\":\"playerHasAdblockEnabled\",_returnType:'boolean',player:a}}","saveUnitData":"a:unit#{return {\"function\":\"saveUnitData\",_returnType:'unit',unit:a}}","applyTorqueOnEntity":"a:number#b:entity#{return {\"function\":\"applyTorqueOnEntity\",_returnType:'entity',torque:a,entity:b}}","giveNewItemToUnit":"a:itemType#b:unit#{return {\"function\":\"giveNewItemToUnit\",_returnType:'item',itemType:a,unit:b}}","playerAttributeMin":"a:attributeType#b:player#{return {\"function\":\"playerAttributeMin\",_returnType:'number',attribute:a,entity:b}}","startUsingItem":"a:item#{return {\"function\":\"startUsingItem\",_returnType:'item',entity:a}}","moveEntity":"a:entity#b:position#{return {\"function\":\"moveEntity\",_returnType:'unit',entity:a,position:b}}","for":"a:variable#b:number#c:number#{return {\"function\":\"for\",_returnType:'loop',variableName:a,start:b,stop:c}}","sin":"a:number#{return {\"function\":\"sin\",_returnType:'number',angle:a}}","showMenuAndSelectBestServer":"a:player#{return {\"function\":\"showMenuAndSelectBestServer\",_returnType:'ui',player:a}}","getValueOfEntityVariable":"a:entityVariable#b:entity#{return {\"function\":\"getValueOfEntityVariable\",_returnType:'undefined',variable:a,entity:b}}","entitiesInRegion":"a:region#{return {\"function\":\"entitiesInRegion\",_returnType:'entityGroup',region:a}}","applyForceOnEntityXYRelative":"a:number#b:number#c:entity#{return {\"function\":\"applyForceOnEntityXYRelative\",_returnType:'entity',force.x:a,force.y:b,entity:c}}","applyForceOnEntityXYLT":"a:number#b:number#c:entity#{return {\"function\":\"applyForceOnEntityXYLT\",_returnType:'entity',force.x:a,force.y:b,entity:c}}","attachEntityToEntity":"a:entity#b:entity#{return {\"function\":\"attachEntityToEntity\",_returnType:'entity',entity:a,targetingEntity:b}}","entityExists":"a:entity#{return {\"function\":\"entityExists\",_returnType:'boolean',entity:a}}","nameOfRegion":"a:region#{return {\"function\":\"nameOfRegion\",_returnType:'string',region:a}}","undefined":"{return {\"function\":\"undefinedValue\",_returnType:'undefined'}}","banPlayerFromChat":"a:player#{return {\"function\":\"banPlayerFromChat\",_returnType:'player',player:a}}","getEntityVelocityY":"a:entity#{return {\"function\":\"getEntityVelocityY\",_returnType:'number',entity:a}}","allUnitTypesInGame":"{return {\"function\":\"allUnitTypesInGame\",_returnType:'unitTypeGroup'}}","randPos":"a:region#{return {\"function\":\"getRandomPositionInRegion\",_returnType:'position',region:a}}","triggeringProj":"{return {\"function\":\"getTriggeringProjectile\",_returnType:'projectile'}}","getUnitParticle":"a:particleType#b:unit#{return {\"function\":\"getUnitParticle\",_returnType:'particle',particleType:a,entity:b}}","changeUnitType":"a:unit#b:unitType#{return {\"function\":\"changeUnitType\",_returnType:'unit',entity:a,unitType:b}}","addPlayerToPlayerGroup":"a:player#b:playerGroup#{return {\"function\":\"addPlayerToPlayerGroup\",_returnType:'playerGroup',player:a,playerGroup:b}}","playMusicForPlayerRepeatedly":"a:music#b:player#{return {\"function\":\"playMusicForPlayerRepeatedly\",_returnType:'music',music:a,player:b}}","showGameSuggestionsForPlayer":"a:player#{return {\"function\":\"showGameSuggestionsForPlayer\",_returnType:'player',player:a}}","isPositionInWall":"a:number#b:number#{return {\"function\":\"isPositionInWall\",_returnType:'boolean',position.x:a,position.y:b}}","entitiesInRegionInFrontOfEntityAtDistance":"a:number#b:number#c:entity#d:number#{return {\"function\":\"entitiesInRegionInFrontOfEntityAtDistance\",_returnType:'entityGroup',width:a,height:b,entity:c,distance:d}}","setEntityAttributeRegenerationRate":"a:attributeType#b:entity#c:number#{return {\"function\":\"setEntityAttributeRegenerationRate\",_returnType:'entity',attribute:a,entity:b,value:c}}","lastPlayedTime":"a:player#{return {\"function\":\"lastPlayedTimeOfPlayer\",_returnType:'number',player:a}}","makeUnitSelectItemAtSlot":"a:selectedUnit#b:number#{return {\"function\":\"makeUnitSelectItemAtSlot\",_returnType:'unit',unit:a,slotIndex:b}}","getItemTypeName":"a:itemType#{return {\"function\":\"getItemTypeName\",_returnType:'string',itemType:a}}","lastCreatedUnit":"{return {\"function\":\"getLastCreatedUnit\",_returnType:'unit'}}","getRotateSpeed":"a:unitType#{return {\"function\":\"getRotateSpeed\",_returnType:'number',unitType:a}}","allUnits":"{return {\"function\":\"allUnits\",_returnType:'unitGroup'}}","stopUsingItem":"a:item#{return {\"function\":\"stopUsingItem\",_returnType:'item',entity:a}}","makeUnitVisible":"a:unit#{return {\"function\":\"makeUnitVisible\",_returnType:'unit',entity:a}}","makeUnitInvisible":"a:unit#{return {\"function\":\"makeUnitInvisible\",_returnType:'unit',entity:a}}","break":"{return {\"function\":\"break\",_returnType:'loop'}}","currentAmmo":"a:item#{return {\"function\":\"getCurrentAmmoOfItem\",_returnType:'number',item:a}}","getHeightOfRegion":"a:region#{return {\"function\":\"getHeightOfRegion\",_returnType:'number',region:a}}","changeScaleOfEntitySprite":"a:entity#b:number#{return {\"function\":\"changeScaleOfEntitySprite\",_returnType:'entity',entity:a,scale:b}}","slice":"a:string#b:number#c:number#{return {\"function\":\"substringOf\",_returnType:'string',string:a,fromIndex:b,toIndex:c}}","setPlayerName":"a:player#b:string#{return {\"function\":\"setPlayerName\",_returnType:'player',player:a,name:b}}","makeUnitPickupItemAtSlot":"a:selectedUnit#b:item#c:number#{return {\"function\":\"makeUnitPickupItemAtSlot\",_returnType:'unit',unit:a,item:b,slotIndex:c}}","dropItemInInventorySlot":"a:selectedUnit#b:number#{return {\"function\":\"dropItemInInventorySlot\",_returnType:'unit',unit:a,slotIndex:b}}","subString":"a:string#b:string#{return {\"function\":\"subString\",_returnType:'boolean',sourceString:a,patternString:b}}","getItemMaxQuantity":"a:item#{return {\"function\":\"getItemMaxQuantity\",_returnType:'number',item:a}}","unbanPlayerFromChat":"a:player#{return {\"function\":\"unbanPlayerFromChat\",_returnType:'player',player:a}}","abs":"a:number#{return {\"function\":\"absoluteValueOfNumber\",_returnType:'number',number:a}}","changeDesc":"a:item#b:string#{return {\"function\":\"changeDescriptionOfItem\",_returnType:'item',item:a,string:b}}","triggeringUnit":"{return {\"function\":\"getTriggeringUnit\",_returnType:'unit'}}","selectedPlayer":"{return {\"function\":\"selectedPlayer\",_returnType:'player'}}","lastTouchedItem":"{return {\"function\":\"getLastTouchedItem\",_returnType:'item'}}","lastTouchedProj":"{return {\"function\":\"getLastTouchedProjectile\",_returnType:'projectile'}}","allUnitsAttachedToItem":"a:item#{return {\"function\":\"allUnitsAttachedToItem\",_returnType:'unitGroup',entity:a}}","sendChatMessageToPlayer":"a:string#b:player#{return {\"function\":\"sendChatMessageToPlayer\",_returnType:'ui',message:a,player:b}}","playAdForEveryone":"{return {\"function\":\"playAdForEveryone\",_returnType:'ad'}}","hideUiTextForPlayer":"a:updateUiText.target#b:player#{return {\"function\":\"hideUiTextForPlayer\",_returnType:'ui',target:a,entity:b}}","showUiTextForPlayer":"a:updateUiText.target#b:player#{return {\"function\":\"showUiTextForPlayer\",_returnType:'ui',target:a,entity:b}}","playMusic":"a:music#{return {\"function\":\"playMusic\",_returnType:'music',music:a}}","assignPlayerType":"a:player#b:playerType#{return {\"function\":\"assignPlayerType\",_returnType:'player',entity:a,playerType:b}}","allProjectiles":"{return {\"function\":\"allProjectiles\",_returnType:'projectileGroup'}}","playMusicForPlayer":"a:music#b:player#{return {\"function\":\"playMusicForPlayer\",_returnType:'music',music:a,player:b}}","if":"a:conditions#{return {\"function\":\"condition\",_returnType:'system',conditions:a}}","makeUnitVisibleToNeutralPlayers":"a:unit#{return {\"function\":\"makeUnitVisibleToNeutralPlayers\",_returnType:'unit',entity:a}}","makeUnitVisibleToFriendlyPlayers":"a:unit#{return {\"function\":\"makeUnitVisibleToFriendlyPlayers\",_returnType:'unit',entity:a}}","makeUnitPickupItem":"a:selectedUnit#b:item#{return {\"function\":\"makeUnitPickupItem\",_returnType:'unit',unit:a,item:b}}","region":"a:number#b:number#c:number#d:number#{return {\"function\":\"dynamicRegion\",_returnType:'region',x:a,y:b,width:c,height:d}}","getEntityAttribute":"a:attributeType#b:entity#{return {\"function\":\"getEntityAttribute\",_returnType:'number',attribute:a,entity:b}}","currentTimeStamp":"{return {\"function\":\"currentTimeStamp\",_returnType:'number'}}","giveNewItemWithQuantityToUnit":"a:itemType#b:number#c:unit#{return {\"function\":\"giveNewItemWithQuantityToUnit\",_returnType:'item',itemType:a,number:b,unit:c}}","getEntityVelocityX":"a:entity#{return {\"function\":\"getEntityVelocityX\",_returnType:'number',entity:a}}","defaultQuantityOfItemType":"a:itemType#{return {\"function\":\"defaultQuantityOfItemType\",_returnType:'number',itemType:a}}","getQuantityOfItemTypeInItemTypeGroup":"a:itemType#b:itemTypeGroup#{return {\"function\":\"getQuantityOfItemTypeInItemTypeGroup\",_returnType:'number',itemType:a,itemTypeGroup:b}}","selectedUnitType":"{return {\"function\":\"selectedUnitType\",_returnType:'unitType'}}","getNumberOfItemsPresent":"{return {\"function\":\"getNumberOfItemsPresent\",_returnType:'number'}}","selectedUnit":"{return {\"function\":\"selectedUnit\",_returnType:'unit'}}","lastOverlappingProj":"{return {\"function\":\"getLastOverlappingProjectile\",_returnType:'projectile'}}","triggeringAttr":"{return {\"function\":\"getTriggeringAttribute\",_returnType:'attribute'}}","allUnitsMountedOnUnit":"a:unit#{return {\"function\":\"allUnitsMountedOnUnit\",_returnType:'unitGroup',entity:a}}","allUnitsInRegion":"a:region#{return {\"function\":\"allUnitsInRegion\",_returnType:'unitGroup',region:a}}","dropAllItems":"a:unit#{return {\"function\":\"dropAllItems\",_returnType:'unit',entity:a}}","useItemOnce":"a:item#{return {\"function\":\"useItemOnce\",_returnType:'item',item:a}}","stopAcceptingPlayers":"{return {\"function\":\"stopAcceptingPlayers\",_returnType:'player'}}","setEntityVelocityAtAngle":"a:entity#b:number#c:number#{return {\"function\":\"setEntityVelocityAtAngle\",_returnType:'entity',entity:a,speed:b,angle:c}}","setEntityAttributeMax":"a:attributeType#b:entity#c:number#{return {\"function\":\"setEntityAttributeMax\",_returnType:'entity',attribute:a,entity:b,value:c}}","getValueOfPlayerVariable":"a:playerVariable#b:player#{return {\"function\":\"getValueOfPlayerVariable\",_returnType:'undefined',variable:a,player:b}}","allRegions":"{return {\"function\":\"allRegions\",_returnType:'regionGroup'}}","maxValueOfItemType":"a:itemType#{return {\"function\":\"maxValueOfItemType\",_returnType:'number',itemType:a}}","angleBetweenMouseAndWindowCenter":"a:player#{return {\"function\":\"angleBetweenMouseAndWindowCenter\",_returnType:'number',player:a}}","setPlayerAttributeMin":"a:attributeType#b:player#c:number#{return {\"function\":\"setPlayerAttributeMin\",_returnType:'player',attributeType:a,player:b,number:c}}","makePlayerTradeWithPlayer":"a:player#b:player#{return {\"function\":\"makePlayerTradeWithPlayer\",_returnType:'player',playerA:a,playerB:b}}","pow":"a:number#b:number#{return {\"function\":\"getExponent\",_returnType:'number',base:a,power:b}}","lastAttackedUnit":"{return {\"function\":\"getLastAttackedUnit\",_returnType:'unit'}}","lastAttackingUnit":"{return {\"function\":\"getLastAttackingUnit\",_returnType:'unit'}}","updateUiTextForTimeForPlayer":"a:updateUiText.target#b:string#c:player#d:number#{return {\"function\":\"updateUiTextForTimeForPlayer\",_returnType:'ui',target:a,value:b,player:c,time:d}}","getNumberOfUnitsOfUnitType":"a:unitType#{return {\"function\":\"getNumberOfUnitsOfUnitType\",_returnType:'number',unitType:a}}","aiMoveToPosition":"a:unit#b:position#{return {\"function\":\"aiMoveToPosition\",_returnType:'AI',unit:a,position:b}}","aiAttackUnit":"a:unit#b:unit#{return {\"function\":\"aiAttackUnit\",_returnType:'AI',unit:a,targetUnit:b}}","getNumberOfPlayersOfPlayerType":"a:playerType#{return {\"function\":\"getNumberOfPlayersOfPlayerType\",_returnType:'number',playerType:a}}","changeSensorRadius":"a:sensor#b:number#{return {\"function\":\"changeSensorRadius\",_returnType:'sensor',sensor:a,radius:b}}","sensor":"a:unit#{return {\"function\":\"getSensorOfUnit\",_returnType:'sensor',unit:a}}","getTriggeringSensor":"{return {\"function\":\"getTriggeringSensor\",_returnType:'sensor'}}","lastChatMessageSent":"a:player#{return {\"function\":\"getLastChatMessageSentByPlayer\",_returnType:'string',player:a}}","loadPlayerDataAndApplyIt":"a:player#b:unit#{return {\"function\":\"loadPlayerDataAndApplyIt\",_returnType:'player',player:a,unit:b}}","createFloatingText":"a:string#b:position#c:string#{return {\"function\":\"createFloatingText\",_returnType:'ui',text:a,position:b,color:c}}","getLengthOfString":"a:string#{return {\"function\":\"getLengthOfString\",_returnType:'number',string:a}}","setLastAttackedUnit":"a:unit#{return {\"function\":\"setLastAttackedUnit\",_returnType:'unit',unit:a}}","setLastAttackingUnit":"a:unit#{return {\"function\":\"setLastAttackingUnit\",_returnType:'unit',unit:a}}","setItemFireRate":"a:number#b:item#{return {\"function\":\"setItemFireRate\",_returnType:'item',number:a,item:b}}","applyImpulseOnEntityXY":"a:number#b:number#c:entity#{return {\"function\":\"applyImpulseOnEntityXY\",_returnType:'entity',impulse.x:a,impulse.y:b,entity:c}}","toLowerCase":"a:string#{return {\"function\":\"toLowerCase\",_returnType:'string',string:a}}","stringStartsWith":"a:string#b:string#{return {\"function\":\"stringStartsWith\",_returnType:'boolean',sourceString:a,patternString:b}}","stringEndsWith":"a:string#b:string#{return {\"function\":\"stringEndsWith\",_returnType:'boolean',sourceString:a,patternString:b}}","replaceValuesInString":"a:string#b:string#c:string#{return {\"function\":\"replaceValuesInString\",_returnType:'string',matchString:a,sourceString:b,newString:c}}","lastAttackingItem":"{return {\"function\":\"getLastAttackingItem\",_returnType:'item'}}","playSoundForPlayer":"a:sound#b:player#{return {\"function\":\"playSoundForPlayer\",_returnType:'player',sound:a,player:b}}","stopSoundForPlayer":"a:sound#b:player#{return {\"function\":\"stopSoundForPlayer\",_returnType:'player',sound:a,player:b}}","showDismissibleInputModalToPlayer":"a:player#b:string#{return {\"function\":\"showDismissibleInputModalToPlayer\",_returnType:'ui',player:a,inputLabel:b}}","getTimeString":"a:number#{return {\"function\":\"getTimeString\",_returnType:'string',seconds:a}}","setItemName":"a:string#b:item#{return {\"function\":\"setItemName\",_returnType:'item',name:a,item:b}}","changeItemInventoryImage":"a:string#b:item#{return {\"function\":\"changeItemInventoryImage\",_returnType:'item',url:a,item:b}}","getItemDescription":"a:item#{return {\"function\":\"getItemDescription\",_returnType:'string',item:a}}","addAttributeBuffToUnit":"a:unit#b:number#c:attributeType#d:number#{return {\"function\":\"addAttributeBuffToUnit\",_returnType:'unit',entity:a,value:b,attribute:c,time:d}}","addPercentageAttributeBuffToUnit":"a:unit#b:number#c:attributeType#d:number#{return {\"function\":\"addPercentageAttributeBuffToUnit\",_returnType:'unit',entity:a,value:b,attribute:c,time:d}}","stunUnit":"a:unit#{return {\"function\":\"stunUnit\",_returnType:'unit',unit:a}}","removeStunFromUnit":"a:unit#{return {\"function\":\"removeStunFromUnit\",_returnType:'unit',unit:a}}","setLastAttackingItem":"a:item#{return {\"function\":\"setLastAttackingItem\",_returnType:'item',item:a}}","mutePlayerMicrophone":"a:player#{return {\"function\":\"mutePlayerMicrophone\",_returnType:'player',player:a}}","unmutePlayerMicrophone":"a:player#{return {\"function\":\"unmutePlayerMicrophone\",_returnType:'player',player:a}}","sendPostRequest":"a:string#b:string#c:variable#{return {\"function\":\"sendPostRequest\",_returnType:'system',string:a,url:b,varName:c}}","loadUnitDataFromString":"a:string#b:unit#{return {\"function\":\"loadUnitDataFromString\",_returnType:'unit',string:a,unit:b}}","loadPlayerDataFromString":"a:string#b:player#{return {\"function\":\"loadPlayerDataFromString\",_returnType:'player',string:a,player:b}}","getUnitData":"a:unit#{return {\"function\":\"getUnitData\",_returnType:'string',unit:a}}","getPlayerData":"a:player#{return {\"function\":\"getPlayerData\",_returnType:'string',player:a}}","getUnitId":"a:unit#{return {\"function\":\"getUnitId\",_returnType:'string',unit:a}}","getPlayerId":"a:player#{return {\"function\":\"getPlayerId\",_returnType:'string',player:a}}","getUnitFromId":"a:string#{return {\"function\":\"getUnitFromId\",_returnType:'unit',string:a}}","getPlayerFromId":"a:string#{return {\"function\":\"getPlayerFromId\",_returnType:'player',string:a}}","getStringArrayLength":"a:string#{return {\"function\":\"getStringArrayLength\",_returnType:'number',string:a}}","getStringArrayElement":"a:number#b:string#{return {\"function\":\"getStringArrayElement\",_returnType:'string',number:a,string:b}}","insertStringArrayElement":"a:string#b:string#{return {\"function\":\"insertStringArrayElement\",_returnType:'string',value:a,string:b}}","updateStringArrayElement":"a:number#b:string#c:string#{return {\"function\":\"updateStringArrayElement\",_returnType:'string',number:a,string:b,value:c}}","removeStringArrayElement":"a:number#b:string#{return {\"function\":\"removeStringArrayElement\",_returnType:'string',number:a,string:b}}","removeAllAttributeBuffs":"a:unit#{return {\"function\":\"removeAllAttributeBuffs\",_returnType:'unit',unit:a}}","changeInventorySlotColor":"a:item#b:string#{return {\"function\":\"changeInventorySlotColor\",_returnType:'item',item:a,string:b}}","setOwnerUnitOfProjectile":"a:projectile#b:unit#{return {\"function\":\"setOwnerUnitOfProjectile\",_returnType:'projectile',projectile:a,unit:b}}","thisEntity":"{return {\"function\":\"thisEntity\",_returnType:'entity'}}","entityName":"a:entity#{return {\"function\":\"entityName\",_returnType:'string',entity:a}}","selectedInventorySlot":"a:unit#{return {\"function\":\"selectedInventorySlot\",_returnType:'number',unit:a}}","log10":"a:number#{return {\"function\":\"log10\",_returnType:'number',value:a}}","addBotPlayer":"a:string#{return {\"function\":\"addBotPlayer\",_returnType:'AI',name:a}}","botPlayers":"{return {\"function\":\"botPlayers\",_returnType:'playerGroup'}}","enableAI":"a:unit#{return {\"function\":\"enableAI\",_returnType:'AI',unit:a}}","disableAI":"a:unit#{return {\"function\":\"disableAI\",_returnType:'AI',unit:a}}","isAIEnabled":"a:unit#{return {\"function\":\"isAIEnabled\",_returnType:'boolean',unit:a}}","isBotPlayer":"a:player#{return {\"function\":\"isBotPlayer\",_returnType:'boolean',player:a}}","isComputerPlayer":"a:player#{return {\"function\":\"isComputerPlayer\",_returnType:'boolean',player:a}}","entitiesBetweenTwoPositions":"a:position#b:position#{return {\"function\":\"entitiesBetweenTwoPositions\",_returnType:'entityGroup',positionA:a,positionB:b}}","unitSensorRadius":"a:unit#{return {\"function\":\"unitSensorRadius\",_returnType:'number',unit:a}}","aiGoIdle":"a:unit#{return {\"function\":\"aiGoIdle\",_returnType:'AI',unit:a}}","targetUnit":"a:unit#{return {\"function\":\"targetUnit\",_returnType:'unit',unit:a}}","sendCoinsToPlayer":"a:number#b:player#{return {\"function\":\"sendCoinsToPlayer\",_returnType:'Coins',coins:a,player:b}}","addChatFilter":"a:string#{return {\"function\":\"addChatFilter\",_returnType:'ui',words:a}}","num2str":"a:number#{return {\"function\":\"numberToString\",_returnType:'string',value:a}}","sendCoinsToPlayer2":"a:number#b:player#{return {\"function\":\"sendCoinsToPlayer2\",_returnType:'Coins',coins:a,player:b}}","playerIsCreator":"a:player#{return {\"function\":\"playerIsCreator\",_returnType:'boolean',player:a}}","setMaxAttackRange":"a:unit#b:number#{return {\"function\":\"setMaxAttackRange\",_returnType:'AI',unit:a,number:b}}","setLetGoDistance":"a:unit#b:number#{return {\"function\":\"setLetGoDistance\",_returnType:'AI',unit:a,number:b}}","setMaxTravelDistance":"a:unit#b:number#{return {\"function\":\"setMaxTravelDistance\",_returnType:'AI',unit:a,number:b}}","getPlayerSelectedUnit":"a:player#{return {\"function\":\"getPlayerSelectedUnit\",_returnType:'unit',player:a}}","toDegrees":"a:number#{return {\"function\":\"toDegrees\",_returnType:'number',number:a}}","toRadians":"a:number#{return {\"function\":\"toRadians\",_returnType:'number',number:a}}","polarProjection":"a:position#b:number#c:number#{return {\"function\":\"getPositionInFrontOfPosition\",_returnType:'position',position:a,distance:b,angle:c}}","editMapTile":"a:number#b:number#c:number#d:number#{return {\"function\":\"editMapTile\",_returnType:'Multiple',gid:a,layer:b,x:c,y:d}}","loadMapFromString":"a:string#{return {\"function\":\"loadMapFromString\",_returnType:'Multiple',string:a}}","getMapJson":"{return {\"function\":\"getMapJson\",_returnType:'string'}}","teleportEntity":"a:entity#b:position#{return {\"function\":\"teleportEntity\",_returnType:'unit',entity:a,position:b}}","forAllDebris":"a:debrisGroup#{return {\"function\":\"forAllDebris\",_returnType:'loop',debrisGroup:a}}","roleExistsForPlayer":"a:string#b:player#{return {\"function\":\"roleExistsForPlayer\",_returnType:'boolean',name:a,player:b}}","emitParticlesFromEntity":"a:particleType#b:number#c:entity#{return {\"function\":\"emitParticlesFromEntity\",_returnType:'particle',particleType:a,angle:b,entity:c}}","emitParticlesAtPosition":"a:particleType#b:position#c:number#{return {\"function\":\"emitParticlesAtPosition\",_returnType:'particle',particleType:a,position:b,angle:c}}","editMapTiles":"a:number#b:number#c:number#d:number#e:number#f:number#{return {\"function\":\"editMapTiles\",_returnType:'Multiple',gid:a,layer:b,x:c,y:d,width:e,height:f}}","getMapTileId":"a:number#b:number#c:number#{return {\"function\":\"getMapTileId\",_returnType:'number',x:a,y:b,layer:c}}","stringIsANumber":"a:string#{return {\"function\":\"stringIsANumber\",_returnType:'boolean',string:a}}","setSourceItemOfProjectile":"a:projectile#b:item#{return {\"function\":\"setSourceItemOfProjectile\",_returnType:'projectile',projectile:a,item:b}}","getGlobalVariable":"a:string#{return {\"function\":\"getGlobalVariable\",_returnType:'system',name:a}}","lastReceivedPostResponse":"{return {\"function\":\"lastReceivedPostResponse\",_returnType:'string'}}","lastUpdatedVariableName":"{return {\"function\":\"lastUpdatedVariableName\",_returnType:'string'}}","getVariable":"a:string#{return {\"function\":\"getVariable\",_returnType:'Multiple',variableName:a}}","str2obj":"a:string#{return {\"function\":\"stringToObject\",_returnType:'object',string:a}}","elementFromObject":"a:string#b:object#{return {\"function\":\"elementFromObject\",_returnType:'object',key:a,object:b}}","obj2Str":"a:object#{return {\"function\":\"objectToString\",_returnType:'string',object:a}}","removeElement":"a:string#b:object#{return {\"function\":\"removeElement\",_returnType:'object',key:a,object:b}}","makePlayerSendChatMessage":"a:player#b:string#{return {\"function\":\"makePlayerSendChatMessage\",_returnType:'Chat',player:a,message:b}}","emptyObject":"{return {\"function\":\"emptyObject\",_returnType:'object'}}","addStringElement":"a:string#b:string#c:object#{return {\"function\":\"addStringElement\",_returnType:'object',key:a,value:b,object:c}}","elementCount":"a:object#{return {\"function\":\"elementCount\",_returnType:'number',object:a}}","addObjectElement":"a:string#b:object#c:object#{return {\"function\":\"addObjectElement\",_returnType:'object',key:a,value:b,object:c}}","requestPost":"a:object#b:string#c:variable#{return {\"function\":\"requestPost\",_returnType:'system',data:a,url:b,varName:c}}","unitIsCarryingItemType":"a:unit#b:itemType#{return {\"function\":\"unitIsCarryingItemType\",_returnType:'boolean',unit:a,itemType:b}}","startCastingAbility":"a:unit#b:ability#{return {\"function\":\"startCastingAbility\",_returnType:'unit',entity:a,ability:b}}","stopCastingAbility":"a:unit#b:ability#{return {\"function\":\"stopCastingAbility\",_returnType:'unit',entity:a,ability:b}}","applyTorqueOnEntityToFacePosition":"a:number#b:entity#c:position#{return {\"function\":\"applyTorqueOnEntityToFacePosition\",_returnType:'entity',force:a,entity:b,position:c}}","changeRegionColor":"a:region#b:string#c:number#{return {\"function\":\"changeRegionColor\",_returnType:'region',region:a,inside:b,alpha:c}}","startMovingUnitUp":"a:unit#{return {\"function\":\"startMovingUnitUp\",_returnType:'unit',entity:a}}","startMovingUnitDown":"a:unit#{return {\"function\":\"startMovingUnitDown\",_returnType:'unit',entity:a}}","startMovingUnitLeft":"a:unit#{return {\"function\":\"startMovingUnitLeft\",_returnType:'unit',entity:a}}","startMovingUnitRight":"a:unit#{return {\"function\":\"startMovingUnitRight\",_returnType:'unit',entity:a}}","stopMovingUnitX":"a:unit#{return {\"function\":\"stopMovingUnitX\",_returnType:'unit',entity:a}}","stopMovingUnitY":"a:unit#{return {\"function\":\"stopMovingUnitY\",_returnType:'unit',entity:a}}","openBackpackForPlayer":"a:player#{return {\"function\":\"openBackpackForPlayer\",_returnType:'ui',player:a}}","closeBackpackForPlayer":"a:player#{return {\"function\":\"closeBackpackForPlayer\",_returnType:'ui',player:a}}","setUnitNameLabelColor":"a:unit#b:string#{return {\"function\":\"setUnitNameLabelColor\",_returnType:'ui',unit:a,color:b}}","getCameraPosition":"{return {\"function\":\"getCameraPosition\",_returnType:'position'}}","getCameraWidth":"{return {\"function\":\"getCameraWidth\",_returnType:'number'}}","getCameraHeight":"{return {\"function\":\"getCameraHeight\",_returnType:'number'}}","allUnitsOfUnitType":"a:unitType#{return {\"function\":\"allUnitsOfUnitType\",_returnType:'unitGroup',unitType:a}}","forAllUnits":"a:unitGroup#{return {\"function\":\"forAllUnits\",_returnType:'loop',unitGroup:a}}","allItemsOfItemType":"a:itemType#{return {\"function\":\"allItemsOfItemType\",_returnType:'itemGroup',itemType:a}}","setUnitNameLabelColorForPlayer":"a:unit#b:string#c:player#{return {\"function\":\"setUnitNameLabelColorForPlayer\",_returnType:'ui',unit:a,color:b,player:c}}","getDefaultAttributeValueOfUnitType":"a:attributeType#b:unitType#{return {\"function\":\"getDefaultAttributeValueOfUnitType\",_returnType:'number',attribute:a,unitType:b}}","playerCameraStopTracking":"a:player#{return {\"function\":\"playerCameraStopTracking\",_returnType:'camera',player:a}}","hideUiElementForPlayer":"a:string#b:player#{return {\"function\":\"hideUiElementForPlayer\",_returnType:'ui',elementId:a,player:b}}","showUiElementForPlayer":"a:string#b:player#{return {\"function\":\"showUiElementForPlayer\",_returnType:'ui',elementId:a,player:b}}","setUIElementHtml":"a:string#b:string#c:player#{return {\"function\":\"setUIElementHtml\",_returnType:'ui',htmlStr:a,elementId:b,player:c}}","lastClickedUiElementId":"a:player#{return {\"function\":\"lastClickedUiElementId\",_returnType:'string',player:a}}","appendRealtimeCSSForPlayer":"a:string#b:player#{return {\"function\":\"appendRealtimeCSSForPlayer\",_returnType:'ui',value:a,player:b}}","updateRealtimeCSSForPlayer":"a:string#b:player#{return {\"function\":\"updateRealtimeCSSForPlayer\",_returnType:'ui',value:a,player:b}}","realtimeCSSOfPlayer":"a:player#{return {\"function\":\"realtimeCSSOfPlayer\",_returnType:'string',player:a}}","ceil":"a:number#{return {\"function\":\"mathCeiling\",_returnType:'number',value:a}}","stopMovingUnit":"a:unit#{return {\"function\":\"stopMovingUnit\",_returnType:'unit',entity:a}}","toUpperCase":"a:string#{return {\"function\":\"toUpperCase\",_returnType:'string',string:a}}","getHighScoreOfPlayer":"a:player#{return {\"function\":\"getHighScoreOfPlayer\",_returnType:'number',player:a}}","isUnitMoving":"a:unit#{return {\"function\":\"isUnitMoving\",_returnType:'boolean',unit:a}}","forIn":"a:variable#b:variable#{return {\"function\":\"forIn\",_returnType:'loop',variableNameMain:a,variableNameSource:b}}","addClassToUIElement":"a:string#b:string#c:player#{return {\"function\":\"addClassToUIElement\",_returnType:'ui',className:a,elementId:b,player:c}}","removeClassFromUIElement":"a:string#b:string#c:player#{return {\"function\":\"removeClassFromUIElement\",_returnType:'ui',className:a,elementId:b,player:c}}","isPlayerClient":"a:player#{return {\"function\":\"isPlayerClient\",_returnType:'boolean',player:a}}","setCameraDeadzone":"a:number#b:number#{return {\"function\":\"setCameraDeadzone\",_returnType:'camera',width:a,height:b}}","purchaseItemFromShop":"a:itemType#b:shop#c:player#{return {\"function\":\"purchaseItemFromShop\",_returnType:'shop',itemType:a,shop:b,player:c}}","getUnitType":"a:string#{return {\"function\":\"getUnitType\",_returnType:'unitType',unitType:a}}","getItemType":"a:string#{return {\"function\":\"getItemType\",_returnType:'itemType',itemType:a}}","getProjectileType":"a:string#{return {\"function\":\"getProjectileType\",_returnType:'projectileType',projectileType:a}}","getSecondaryTouchPosition":"{return {\"function\":\"getSecondaryTouchPosition\",_returnType:'position'}}","allProjectilesOfProjectileType":"a:projectileType#{return {\"function\":\"allProjectilesOfProjectileType\",_returnType:'projectileGroup',projectileType:a}}","unitTypeWidth":"a:unitType#{return {\"function\":\"unitTypeWidth\",_returnType:'number',unitType:a}}","unitTypeHeight":"a:unitType#{return {\"function\":\"unitTypeHeight\",_returnType:'number',unitType:a}}","notValue":"a:boolean#{return {\"function\":\"notValue\",_returnType:'boolean',boolean:a}}","isPlayerOnMobile":"a:player#{return {\"function\":\"isPlayerOnMobile\",_returnType:'boolean',player:a}}","getPlayerUsername":"a:player#{return {\"function\":\"getPlayerUsername\",_returnType:'string',player:a}}","repeatWithDelay":"a:number#b:number#{return {\"function\":\"repeatWithDelay\",_returnType:'loop',count:a,delay:b}}","entityFacingAngle":"a:entity#{return {\"function\":\"entityFacingAngle\",_returnType:'number',entity:a}}","playersOfPlayerType":"a:playerType#{return {\"function\":\"playersOfPlayerType\",_returnType:'playerGroup',playerType:a}}","sendSecurePostRequest":"a:secrets#b:object#c:variable#{return {\"function\":\"sendSecurePostRequest\",_returnType:'system',apiCredentials:a,data:b,varName:c}}","openSkinShop":"a:player#{return {\"function\":\"openSkinShop\",_returnType:'shop',player:a}}","openSkinSubmissionPage":"a:player#{return {\"function\":\"openSkinSubmissionPage\",_returnType:'shop',player:a}}","playerCameraSetPitch":"a:player#b:number#{return {\"function\":\"playerCameraSetPitch\",_returnType:'camera',player:a,angle:b}}","getRegionByName":"a:string#{return {\"function\":\"getRegionByName\",_returnType:'region',name:a}}","changeLayerOpacity":"a:number#b:number#{return {\"function\":\"changeLayerOpacity\",_returnType:'Multiple',layer:a,alpha:b}}","forAllElementsInObject":"a:object#{return {\"function\":\"forAllElementsInObject\",_returnType:'loop',object:a}}","selectedElement":"{return {\"function\":\"selectedElement\",_returnType:'object'}}","objectContainsElement":"a:object#b:string#{return {\"function\":\"objectContainsElement\",_returnType:'boolean',object:a,key:b}}","selectedElementsKey":"{return {\"function\":\"selectedElementsKey\",_returnType:'string'}}","playMusicForPlayerAtTime":"a:music#b:player#c:time#{return {\"function\":\"playMusicForPlayerAtTime\",_returnType:'music',music:a,player:b,time:c}}","getServerAge":"{return {\"function\":\"getServerAge\",_returnType:'number'}}","getServerStartTime":"{return {\"function\":\"getServerStartTime\",_returnType:'number'}}","mathRound":"a:number#{return {\"function\":\"mathRound\",_returnType:'number',value:a}}","addNumberElement":"a:string#b:number#c:object#{return {\"function\":\"addNumberElement\",_returnType:'object',key:a,value:b,object:c}}","mathSign":"a:number#{return {\"function\":\"mathSign\",_returnType:'number',value:a}}","itemFiresProjectiles":"a:item#{return {\"function\":\"itemFiresProjectiles\",_returnType:'boolean',item:a}}","lerp":"a:number#b:number#c:number#{return {\"function\":\"lerp\",_returnType:'number',valueA:a,valueB:b,alpha:c}}","getLerpPosition":"a:position#b:position#c:number#{return {\"function\":\"getLerpPosition\",_returnType:'position',positionA:a,positionB:b,alpha:c}}","x":"a:position#{return a._returnType === 'position' || a._returnType === 'entity'? {\"function\":\"getPositionX\",position:a} : a._returnType === 'region' || a._returnType === 'entity'? {\"function\":\"getXCoordinateOfRegion\",region:a} : {'error': a}}","y":"a:position#{return a._returnType === 'position' || a._returnType === 'entity'? {\"function\":\"getPositionY\",position:a} : a._returnType === 'region' || a._returnType === 'entity'? {\"function\":\"getYCoordinateOfRegion\",region:a} : {'error': a}}","type":"a:item#{return a._returnType === 'item' || a._returnType === 'entity'? {\"function\":\"getItemTypeOfItem\",entity:a} : a._returnType === 'unit' || a._returnType === 'entity'? {\"function\":\"getUnitTypeOfUnit\",entity:a} : a._returnType === 'player' || a._returnType === 'entity'? {\"function\":\"playerTypeOfPlayer\",player:a} : a._returnType === 'unitTypeGroup' || a._returnType === 'entity'? {\"function\":\"getRandomUnitTypeFromUnitTypeGroup\",unitTypeGroup:a} : a._returnType === 'attribute' || a._returnType === 'entity'? {\"function\":\"getAttributeTypeOfAttribute\",entity:a} : {'error': a}}","owner":"a:item#{return a._returnType === 'item' || a._returnType === 'entity'? {\"function\":\"getOwnerOfItem\",entity:a} : a._returnType === 'unit' || a._returnType === 'entity'? {\"function\":\"getOwner\",entity:a} : a._returnType === 'sensor' || a._returnType === 'entity'? {\"function\":\"ownerUnitOfSensor\",sensor:a} : {'error': a}}","max":"a:entity#b:number#c:number#{return a._returnType === 'Math' || a._returnType === 'entity'? {\"function\":\"getMax\",num1:b,num2:c} : a._returnType === 'entity' || a._returnType === 'entity'? {\"function\":\"entityAttributeMax\",attribute:a,entity:b} : a._returnType === 'player' || a._returnType === 'entity'? {\"function\":\"playerAttributeMax\",attribute:a,entity:b} : {'error': a}}","min":"a:entity#b:number#c:number#{return a._returnType === 'Math' || a._returnType === 'entity'? {\"function\":\"getMin\",num1:b,num2:c} : a._returnType === 'entity' || a._returnType === 'entity'? {\"function\":\"entityAttributeMin\",attribute:a,entity:b} : a._returnType === 'player' || a._returnType === 'entity'? {\"function\":\"playerAttributeMin\",attribute:a,entity:b} : {'error': a}}","Math":"return {_isNameSpace: true,_returnType: 'Math'}"}









  function getType(o: any) {
    return typeof o === 'object'? o._returnType : typeof o
  }

  function moveObjectToIndex(array: any, objectIndex: number, targetIndex:number) {
    const object = array.splice(objectIndex, 1)[0];
    array.splice(targetIndex, 0, object);
    return array;
  }

  function autoInsertParameters(name: string, p: any, other_p?: any[]) {
    let pos = -1
    const type = getType(p)
    const newArray = other_p || []
    funcs[name].split('#').forEach((s: string, idx: number)=> {
      if(pos === -1 && s.includes('return') === false && s.split(':')[1]?.includes(type)) {
        pos = idx
      }
    })
    if(other_p !== undefined) {
      newArray.splice(pos, 0, p)  
    } else {
      for(let i = 0; i < pos; i++) {
        newArray.push(undefined)
      }
      newArray.push(p)      
    }    
    for (let i = 0; i < newArray.length; i++) {
      const nowObj = newArray[i]
      if(typeof nowObj === 'object' && nowObj._isNameSpace === true) {
        moveObjectToIndex(newArray, i, 0)
        break
      }
    }
    return newArray
  } 

  function getFunc(name: string) {
    return new Function(...funcs[name].split('#').map((o:string)=>o.includes('return')?o : o.split(':')[0]))
  }
  function throwError(s: string) {
    throw new Error(s)
  }
  function removeHtmlTag(s: string) {
    return typeof s=== 'string' ? s.replaceAll(/<\/?.+?>/g, "") : s
  }
  function convertCalcToConcat(o: any): any {   
  return o.items && o.items[1] && o.brackets === undefined? {
    "function": "concat",
    "_returnType": "string",
    "textA": typeof o.items[1] === 'object'?convertCalcToConcat(o.items[1]): o.items[1],
    "textB":typeof o.items[2] === 'object'?convertCalcToConcat(o.items[2]): o.items[2],
    }: o
  }
%}

/* lexical grammar */
%lex

%%

\s+                   /* skip whitespace */
'true'                return "true"
'false'               return "false"
["][^"]*["]|['][^']*[']           return 'STRING'
[0-9]+("."[0-9]+)?\b  return 'NUMBER'
"&&"|"and"                  return 'AND'
"||"|"or"                 return 'OR'
[a-zA-Z0-9_]+          return 'NAME'
((">="|"<=")|"=="|">"|"<"|"!=")           return 'COMPARE'
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
'@'                   return '@'
'#'                   return '#'
".$"                  return '.$'
"."                   return '.'
"="                   return '='
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
    { $$ = [
      {
        "operandType": typeof $3 === 'object'?$3._returnType : typeof $3,
        "operator": $COMPARE
      },
      $1,
      $3
    ]
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
        { $$ = (typeof $1 === 'string' || (typeof $1 === 'object' && $1._returnType === 'string')) || (typeof $3 === 'string' || (typeof $3 === 'object' && $3._returnType === 'string')) ?{"function": "concat",_returnType:"string","textA": convertCalcToConcat($1),"textB": convertCalcToConcat($3)}: {function: 'calculate', _returnType:'number', items: [{operator:"+"},$1, $3]}}    
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
        { $$ = typeof $2 === 'object'?{...$2, brackets: true}: $2; }
    | condition_list
        {$$ = $condition_list}
    | condition_list COMPARE e 
        { $$ = [
                    {
                         "operandType": typeof $3 === 'object'?$3._returnType : typeof $3,
                         "operator": $COMPARE
                    },
                    $1,
                    $3
               ]
    }
    | e AND e {
          $$ = 
            [
            {
              "operandType": "and",
              "operator": "AND"
            },
            $1.conditions ?? $1,
            $3.conditions ?? $3
            ]
          }
    
    | e OR e {
          $$ = [
            {
              "operandType": "or",
              "operator": "OR"
            },
            $1.conditions ?? $1,
            $3.conditions ?? $3
            ]
          }
    | NUMBER
        {$$ = Number(yytext);}
    | NAME
    {
      if(funcs[$NAME]) {
        if (funcs[$NAME].split('#').length === 1) {
          $$ = getFunc($NAME).apply(undefined, undefined);
        }
        else throwError($NAME + " need parameters")
      }
      else throwError($NAME + " is undefined")
    }
    | NAME '('')'
    {
      if(funcs[$NAME]) {
        if (funcs[$NAME].split('#').length === 1) {
          $$ = getFunc($NAME).apply(undefined, undefined);
        }
        else throwError($NAME + " need parameters")
      }
      else throwError($NAME + " is undefined")
    }
    | NAME '(' '"' expression_list '"' ')'
    | NAME '(' expression_list ')'
        {if(funcs[$NAME]) $$ = getFunc($NAME).apply(undefined, $expression_list); else throwError($NAME + " is undefined")}
    | STRING
        {$$ = yytext.slice(1, yytext.length-1)}
    | e'.' NAME
     {if(funcs[$NAME]) $$ = getFunc($NAME).apply(undefined, autoInsertParameters($NAME, $1)); else {
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
    | 'true' {
      $$ = true
    }
    | 'false' {
      $$ = false
    }
    | e'.' NAME'(' expression_list ')'
     {if(funcs[$NAME]) $$ = getFunc($NAME).apply(undefined, autoInsertParameters($NAME, $1, $expression_list)); else throwError($NAME + " is undefined")}
     | e '.$' NAME
    {
      if ($1._returnType === "entity") {
        $$ = {
          function: "getEntityAttribute",
          attribute: $NAME,
          entity: $1
        }
      } else {
        throwError($NAME + " is undefined")
      }
    }
    | e '.' NAME '=' e {
      $$ = {
        type: "setEntityVariable",
        entity: $1,
        variable: {
            function: "getEntityVariable",
            variable: {
                  text: $NAME,
                  dataType: undefined,
                  entity: $1,
                  key: $NAME
            }
        },
        value: $5,
      }
    }
    | '#' NAME '=' e {
      $$ = {
        type: "setVariable",
        value: $4,
        variableName: $NAME,
      }
    
    }
    | e '.$' NAME '=' e {
      $$ = {
        type: "setEntityAttribute",
        attribute: $NAME,
        entity: $1,
        value: $5
        
      }
    }
    | '@'NAME {
      $$ = {
        type: $NAME
      }
    }
    | '#'NAME {
      $$ = {
        function: "getVariable",
        variableName: $NAME
      }
    }
    ;
     
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