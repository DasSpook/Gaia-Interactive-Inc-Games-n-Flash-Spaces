package mx.controls
{
   import flash.ui.Keyboard;
   import mx.controls.scrollClasses.ScrollBar;
   import mx.controls.scrollClasses.ScrollBarDirection;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class HScrollBar extends ScrollBar
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      public function HScrollBar()
      {
         super();
         super.direction = ScrollBarDirection.HORIZONTAL;
         scaleX = -1;
         rotation = -90;
      }
      
      override mx_internal function get virtualHeight() : Number
      {
         return unscaledWidth;
      }
      
      override protected function measure() : void
      {
         super.measure();
         measuredWidth = _minHeight;
         measuredHeight = _minWidth;
      }
      
      override public function get minHeight() : Number
      {
         return _minWidth;
      }
      
      override mx_internal function get virtualWidth() : Number
      {
         return unscaledHeight;
      }
      
      override public function get minWidth() : Number
      {
         return _minHeight;
      }
      
      override mx_internal function isScrollBarKey(key:uint) : Boolean
      {
         if(key == Keyboard.LEFT)
         {
            lineScroll(-1);
            return true;
         }
         if(key == Keyboard.RIGHT)
         {
            lineScroll(1);
            return true;
         }
         return super.isScrollBarKey(key);
      }
      
      override public function set direction(value:String) : void
      {
      }
   }
}
