package fl.motion
{
   import flash.geom.ColorTransform;
   
   public class Color extends ColorTransform
   {
       
      
      private var _tintColor:Number = 0;
      
      private var _tintMultiplier:Number = 0;
      
      public function Color(redMultiplier:Number = 1.0, greenMultiplier:Number = 1.0, blueMultiplier:Number = 1.0, alphaMultiplier:Number = 1.0, redOffset:Number = 0, greenOffset:Number = 0, blueOffset:Number = 0, alphaOffset:Number = 0)
      {
         super(redMultiplier,greenMultiplier,blueMultiplier,alphaMultiplier,redOffset,greenOffset,blueOffset,alphaOffset);
      }
      
      public static function interpolateColor(fromColor:uint, toColor:uint, progress:Number) : uint
      {
         var q:Number = 1 - progress;
         var fromA:uint = fromColor >> 24 & 255;
         var fromR:uint = fromColor >> 16 & 255;
         var fromG:uint = fromColor >> 8 & 255;
         var fromB:uint = fromColor & 255;
         var toA:uint = toColor >> 24 & 255;
         var toR:uint = toColor >> 16 & 255;
         var toG:uint = toColor >> 8 & 255;
         var toB:uint = toColor & 255;
         var resultA:uint = fromA * q + toA * progress;
         var resultR:uint = fromR * q + toR * progress;
         var resultG:uint = fromG * q + toG * progress;
         var resultB:uint = fromB * q + toB * progress;
         var resultColor:uint = resultA << 24 | resultR << 16 | resultG << 8 | resultB;
         return resultColor;
      }
      
      public static function interpolateTransform(fromColor:ColorTransform, toColor:ColorTransform, progress:Number) : ColorTransform
      {
         var q:Number = 1 - progress;
         var resultColor:ColorTransform = new ColorTransform(fromColor.redMultiplier * q + toColor.redMultiplier * progress,fromColor.greenMultiplier * q + toColor.greenMultiplier * progress,fromColor.blueMultiplier * q + toColor.blueMultiplier * progress,fromColor.alphaMultiplier * q + toColor.alphaMultiplier * progress,fromColor.redOffset * q + toColor.redOffset * progress,fromColor.greenOffset * q + toColor.greenOffset * progress,fromColor.blueOffset * q + toColor.blueOffset * progress,fromColor.alphaOffset * q + toColor.alphaOffset * progress);
         return resultColor;
      }
      
      public static function fromXML(xml:XML) : Color
      {
         return Color(new Color().parseXML(xml));
      }
      
      private function deriveTintColor() : uint
      {
         var ratio:Number = 1 / this.tintMultiplier;
         var r:uint = Math.round(this.redOffset * ratio);
         var g:uint = Math.round(this.greenOffset * ratio);
         var b:uint = Math.round(this.blueOffset * ratio);
         var colorNum:uint = r << 16 | g << 8 | b;
         return colorNum;
      }
      
      public function set brightness(value:Number) : void
      {
         if(value > 1)
         {
            value = 1;
         }
         else if(value < -1)
         {
            value = -1;
         }
         var percent:Number = 1 - Math.abs(value);
         var offset:Number = 0;
         if(value > 0)
         {
            offset = value * 255;
         }
         this.redMultiplier = this.greenMultiplier = this.blueMultiplier = percent;
         this.redOffset = this.greenOffset = this.blueOffset = offset;
      }
      
      private function parseXML(xml:XML = null) : Color
      {
         var att:XML = null;
         var name:String = null;
         var tintColorNumber:uint = 0;
         if(!xml)
         {
            return this;
         }
         var firstChild:XML = xml.elements()[0];
         if(!firstChild)
         {
            return this;
         }
         for each(att in firstChild.attributes())
         {
            name = att.localName();
            if(name == "tintColor")
            {
               tintColorNumber = Number(att.toString()) as uint;
               this.tintColor = tintColorNumber;
            }
            else
            {
               this[name] = Number(att.toString());
            }
         }
         return this;
      }
      
      public function get tintColor() : uint
      {
         return this._tintColor;
      }
      
      public function set tintColor(value:uint) : void
      {
         this.setTint(value,this.tintMultiplier);
      }
      
      public function get brightness() : Number
      {
         return !!this.redOffset?Number(1 - this.redMultiplier):Number(this.redMultiplier - 1);
      }
      
      public function set tintMultiplier(value:Number) : void
      {
         this.setTint(this.tintColor,value);
      }
      
      public function get tintMultiplier() : Number
      {
         return this._tintMultiplier;
      }
      
      public function setTint(tintColor:uint, tintMultiplier:Number) : void
      {
         this._tintColor = tintColor;
         this._tintMultiplier = tintMultiplier;
         this.redMultiplier = this.greenMultiplier = this.blueMultiplier = 1 - tintMultiplier;
         var r:uint = tintColor >> 16 & 255;
         var g:uint = tintColor >> 8 & 255;
         var b:uint = tintColor & 255;
         this.redOffset = Math.round(r * tintMultiplier);
         this.greenOffset = Math.round(g * tintMultiplier);
         this.blueOffset = Math.round(b * tintMultiplier);
      }
   }
}
