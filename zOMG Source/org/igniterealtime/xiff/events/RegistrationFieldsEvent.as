package org.igniterealtime.xiff.events
{
   import flash.events.Event;
   import org.igniterealtime.xiff.data.register.RegisterExtension;
   
   public class RegistrationFieldsEvent extends Event
   {
      
      public static const REG_FIELDS:String = "registrationFields";
       
      
      private var _fields:Array;
      
      private var _data:RegisterExtension;
      
      public function RegistrationFieldsEvent()
      {
         super(RegistrationFieldsEvent.REG_FIELDS,false,false);
      }
      
      public function get fields() : Array
      {
         return _fields;
      }
      
      public function set data(value:RegisterExtension) : void
      {
         _data = value;
      }
      
      public function get data() : RegisterExtension
      {
         return _data;
      }
      
      override public function toString() : String
      {
         return "[RegistrationFieldsEvent type=\"" + type + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
      
      override public function clone() : Event
      {
         var event:RegistrationFieldsEvent = new RegistrationFieldsEvent();
         event.data = _data;
         event.fields = _fields;
         return event;
      }
      
      public function set fields(value:Array) : void
      {
         _fields = value;
      }
   }
}
