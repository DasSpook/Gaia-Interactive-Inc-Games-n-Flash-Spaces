package mx.containers.errors
{
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class ConstraintError extends Error
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
       
      
      public function ConstraintError(message:String)
      {
         super(message);
      }
   }
}
