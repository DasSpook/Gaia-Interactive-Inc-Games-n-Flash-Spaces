package mx.collections.errors
{
   import mx.core.mx_internal;
   import mx.rpc.IResponder;
   
   use namespace mx_internal;
   
   public class ItemPendingError extends Error
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var _responders:Array;
      
      public function ItemPendingError(message:String)
      {
         super(message);
      }
      
      public function get responders() : Array
      {
         return _responders;
      }
      
      public function addResponder(responder:IResponder) : void
      {
         if(!_responders)
         {
            _responders = [];
         }
         _responders.push(responder);
      }
   }
}
