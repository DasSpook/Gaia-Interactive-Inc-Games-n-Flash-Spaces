package mx.collections
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import mx.collections.errors.SortError;
   import mx.core.mx_internal;
   import mx.resources.IResourceManager;
   import mx.resources.ResourceManager;
   import mx.utils.ObjectUtil;
   
   use namespace mx_internal;
   
   public class SortField extends EventDispatcher
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      private var _caseInsensitive:Boolean;
      
      private var _numeric:Object;
      
      private var _descending:Boolean;
      
      private var _compareFunction:Function;
      
      private var _usingCustomCompareFunction:Boolean;
      
      private var _name:String;
      
      private var resourceManager:IResourceManager;
      
      public function SortField(name:String = null, caseInsensitive:Boolean = false, descending:Boolean = false, numeric:Object = null)
      {
         resourceManager = ResourceManager.getInstance();
         super();
         _name = name;
         _caseInsensitive = caseInsensitive;
         _descending = descending;
         _numeric = numeric;
         _compareFunction = stringCompare;
      }
      
      [Bindable("caseInsensitiveChanged")]
      public function get caseInsensitive() : Boolean
      {
         return _caseInsensitive;
      }
      
      mx_internal function get usingCustomCompareFunction() : Boolean
      {
         return _usingCustomCompareFunction;
      }
      
      public function set caseInsensitive(value:Boolean) : void
      {
         if(value != _caseInsensitive)
         {
            _caseInsensitive = value;
            dispatchEvent(new Event("caseInsensitiveChanged"));
         }
      }
      
      [Bindable("nameChanged")]
      public function get name() : String
      {
         return _name;
      }
      
      [Bindable("numericChanged")]
      public function get numeric() : Object
      {
         return _numeric;
      }
      
      public function set name(n:String) : void
      {
         _name = n;
         dispatchEvent(new Event("nameChanged"));
      }
      
      private function numericCompare(a:Object, b:Object) : int
      {
         var fa:Number = NaN;
         var fb:Number = NaN;
         try
         {
            fa = _name == null?Number(Number(a)):Number(Number(a[_name]));
         }
         catch(error:Error)
         {
         }
         try
         {
            fb = _name == null?Number(Number(b)):Number(Number(b[_name]));
         }
         catch(error:Error)
         {
         }
         return ObjectUtil.numericCompare(fa,fb);
      }
      
      public function set numeric(value:Object) : void
      {
         if(_numeric != value)
         {
            _numeric = value;
            dispatchEvent(new Event("numericChanged"));
         }
      }
      
      private function stringCompare(a:Object, b:Object) : int
      {
         var fa:String = null;
         var fb:String = null;
         try
         {
            fa = _name == null?String(a):String(a[_name]);
         }
         catch(error:Error)
         {
         }
         try
         {
            fb = _name == null?String(b):String(b[_name]);
         }
         catch(error:Error)
         {
         }
         return ObjectUtil.stringCompare(fa,fb,_caseInsensitive);
      }
      
      public function get compareFunction() : Function
      {
         return _compareFunction;
      }
      
      public function reverse() : void
      {
         descending = !descending;
      }
      
      mx_internal function getArraySortOnOptions() : int
      {
         if(usingCustomCompareFunction || name == null || _compareFunction == xmlCompare || _compareFunction == dateCompare)
         {
            return -1;
         }
         var options:* = 0;
         if(caseInsensitive)
         {
            options = options | Array.CASEINSENSITIVE;
         }
         if(descending)
         {
            options = options | Array.DESCENDING;
         }
         if(numeric == true || _compareFunction == numericCompare)
         {
            options = options | Array.NUMERIC;
         }
         return options;
      }
      
      private function dateCompare(a:Object, b:Object) : int
      {
         var fa:Date = null;
         var fb:Date = null;
         try
         {
            fa = _name == null?a as Date:a[_name] as Date;
         }
         catch(error:Error)
         {
         }
         try
         {
            fb = _name == null?b as Date:b[_name] as Date;
         }
         catch(error:Error)
         {
         }
         return ObjectUtil.dateCompare(fa,fb);
      }
      
      mx_internal function internalCompare(a:Object, b:Object) : int
      {
         var result:int = compareFunction(a,b);
         if(descending)
         {
            result = result * -1;
         }
         return result;
      }
      
      override public function toString() : String
      {
         return ObjectUtil.toString(this);
      }
      
      private function nullCompare(a:Object, b:Object) : int
      {
         var value:Object = null;
         var left:Object = null;
         var right:Object = null;
         var message:String = null;
         var found:Boolean = false;
         if(a == null && b == null)
         {
            return 0;
         }
         if(_name)
         {
            try
            {
               left = a[_name];
            }
            catch(error:Error)
            {
            }
            try
            {
               right = b[_name];
            }
            catch(error:Error)
            {
            }
         }
         if(left == null && right == null)
         {
            return 0;
         }
         if(left == null && !_name)
         {
            left = a;
         }
         if(right == null && !_name)
         {
            right = b;
         }
         var typeLeft:String = typeof left;
         var typeRight:String = typeof right;
         if(typeLeft == "string" || typeRight == "string")
         {
            found = true;
            _compareFunction = stringCompare;
         }
         else if(typeLeft == "object" || typeRight == "object")
         {
            if(left is Date || right is Date)
            {
               found = true;
               _compareFunction = dateCompare;
            }
         }
         else if(typeLeft == "xml" || typeRight == "xml")
         {
            found = true;
            _compareFunction = xmlCompare;
         }
         else if(typeLeft == "number" || typeRight == "number" || typeLeft == "boolean" || typeRight == "boolean")
         {
            found = true;
            _compareFunction = numericCompare;
         }
         if(found)
         {
            return _compareFunction(left,right);
         }
         message = resourceManager.getString("collections","noComparatorSortField",[name]);
         throw new SortError(message);
      }
      
      public function set descending(value:Boolean) : void
      {
         if(_descending != value)
         {
            _descending = value;
            dispatchEvent(new Event("descendingChanged"));
         }
      }
      
      mx_internal function initCompare(obj:Object) : void
      {
         var value:Object = null;
         var typ:String = null;
         var test:String = null;
         if(!usingCustomCompareFunction)
         {
            if(numeric == true)
            {
               _compareFunction = numericCompare;
            }
            else if(caseInsensitive || numeric == false)
            {
               _compareFunction = stringCompare;
            }
            else
            {
               if(_name)
               {
                  try
                  {
                     value = obj[_name];
                  }
                  catch(error:Error)
                  {
                  }
               }
               if(value == null)
               {
                  value = obj;
               }
               typ = typeof value;
               switch(typ)
               {
                  case "string":
                     _compareFunction = stringCompare;
                     break;
                  case "object":
                     if(value is Date)
                     {
                        _compareFunction = dateCompare;
                     }
                     else
                     {
                        _compareFunction = stringCompare;
                        try
                        {
                           test = value.toString();
                        }
                        catch(error2:Error)
                        {
                        }
                        if(!test || test == "[object Object]")
                        {
                           _compareFunction = nullCompare;
                        }
                     }
                     break;
                  case "xml":
                     _compareFunction = xmlCompare;
                     break;
                  case "boolean":
                  case "number":
                     _compareFunction = numericCompare;
               }
            }
         }
      }
      
      [Bindable("descendingChanged")]
      public function get descending() : Boolean
      {
         return _descending;
      }
      
      public function set compareFunction(c:Function) : void
      {
         _compareFunction = c;
         _usingCustomCompareFunction = c != null;
      }
      
      private function xmlCompare(a:Object, b:Object) : int
      {
         var sa:String = null;
         var sb:String = null;
         try
         {
            sa = _name == null?a.toString():a[_name].toString();
         }
         catch(error:Error)
         {
         }
         try
         {
            sb = _name == null?b.toString():b[_name].toString();
         }
         catch(error:Error)
         {
         }
         if(numeric == true)
         {
            return ObjectUtil.numericCompare(parseFloat(sa),parseFloat(sb));
         }
         return ObjectUtil.stringCompare(sa,sb,_caseInsensitive);
      }
   }
}
