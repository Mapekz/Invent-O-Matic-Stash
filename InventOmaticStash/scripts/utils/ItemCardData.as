package utils
{
   import Shared.AS3.Data.BSUIDataManager;
   import Shared.AS3.Data.FromClientDataEvent;
   import Shared.GlobalFunc;
   
   public class ItemCardData
   {
      
      public static var itemCardEntries:Object = {};
       
      
      public function ItemCardData()
      {
         super();
      }
      
      public static function init() : void
      {
         BSUIDataManager.Subscribe("InventoryItemCardData",onInventoryItemCardDataUpdate);
      }
      
      public static function get(serverHandleId:uint) : Object
      {
         return itemCardEntries[serverHandleId];
      }
      
      private static function onInventoryItemCardDataUpdate(e:FromClientDataEvent) : void
      {
         var data:Object = e.data;
         itemCardEntries[data.serverHandleID] = GlobalFunc.CloneObject(data);
      }
   }
}
