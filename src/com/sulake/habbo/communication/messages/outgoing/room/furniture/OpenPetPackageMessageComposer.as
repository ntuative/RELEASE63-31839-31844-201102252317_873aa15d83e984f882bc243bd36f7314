package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class OpenPetPackageMessageComposer implements IMessageComposer
   {
       
      
      private var var_327:int;
      
      private var var_2009:String;
      
      public function OpenPetPackageMessageComposer(param1:int, param2:String)
      {
         super();
         this.var_327 = param1;
         this.var_2009 = param2;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_327,this.var_2009];
      }
      
      public function dispose() : void
      {
      }
   }
}
