package org.igniterealtime.xiff.events
{
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class IncomingDataEvent extends Event
   {
      
      public static const INCOMING_DATA:String = "incomingData";
       
      
      private var _data:ByteArray;
      
      public function IncomingDataEvent()
      {
         super(IncomingDataEvent.INCOMING_DATA,false,false);
      }
      
      public function set data(value:ByteArray) : void
      {
         _data = value;
      }
      
      public function get data() : ByteArray
      {
         return _data;
      }
      
      override public function toString() : String
      {
         return "[IncomingDataEvent type=\"" + type + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
      
      override public function clone() : Event
      {
         var event:IncomingDataEvent = new IncomingDataEvent();
         event.data = _data;
         return event;
      }
   }
}
