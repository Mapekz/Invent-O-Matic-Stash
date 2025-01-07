package utils
{
   public class ScrapboxFilter
   {
      
      private static const EVENT_SCRAPBOX_SCRAP_TRANSFER_CONFIRM:* = "Container::transferSelectionToScrapConfirm";
       
      
      public function ScrapboxFilter()
      {
         super();
      }
      
      public static function init(config:Object) : void
      {
      }
      
      public static function ScrapAndTransferAll() : void
      {
      }
      
      public static function scrapTransfer(serverHandleId:Number, quantity:uint) : void
      {
         BSUIDataManager.dispatchEvent(new CustomEvent(EVENT_SCRAPBOX_SCRAP_TRANSFER_CONFIRM,{
            "serverHandleId":serverHandleId,
            "quantity":quantity
         }));
      }
      
      public static function transfer(serverHandleId:Number, quantity:uint, containerID:Number) : void
      {
         BSUIDataManager.dispatchEvent(new CustomEvent(EVENT_TRANSFER_ITEM,{
            "serverHandleId":serverHandleId,
            "quantity":quantity,
            "fromContainer":false,
            "containerID":containerID
         }));
      }
   }
}
