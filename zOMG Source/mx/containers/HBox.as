package mx.containers
{
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class HBox extends Box
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      public function HBox()
      {
         super();
         mx_internal::layoutObject.direction = BoxDirection.HORIZONTAL;
      }
      
      override public function set direction(value:String) : void
      {
      }
   }
}
