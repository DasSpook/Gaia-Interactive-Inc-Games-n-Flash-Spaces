package mx.core
{
   import flash.display.InteractiveObject;
   import flash.geom.Matrix;
   import mx.managers.ILayoutManager;
   
   use namespace mx_internal;
   
   public class UIComponentGlobals
   {
      
      mx_internal static var callLaterSuspendCount:int = 0;
      
      mx_internal static var layoutManager:ILayoutManager;
      
      mx_internal static var nextFocusObject:InteractiveObject;
      
      mx_internal static var designTime:Boolean = false;
      
      mx_internal static var tempMatrix:Matrix = new Matrix();
      
      mx_internal static var callLaterDispatcherCount:int = 0;
      
      private static var _catchCallLaterExceptions:Boolean = false;
       
      
      public function UIComponentGlobals()
      {
         super();
      }
      
      public static function set catchCallLaterExceptions(value:Boolean) : void
      {
         _catchCallLaterExceptions = value;
      }
      
      public static function get designMode() : Boolean
      {
         return designTime;
      }
      
      public static function set designMode(value:Boolean) : void
      {
         designTime = value;
      }
      
      public static function get catchCallLaterExceptions() : Boolean
      {
         return _catchCallLaterExceptions;
      }
   }
}
