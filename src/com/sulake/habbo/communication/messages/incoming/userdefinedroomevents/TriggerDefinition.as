package com.sulake.habbo.communication.messages.incoming.userdefinedroomevents
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class TriggerDefinition extends Triggerable
   {
       
      
      private var var_1650:int;
      
      private var var_1651:Array;
      
      public function TriggerDefinition(param1:IMessageDataWrapper)
      {
         this.var_1651 = new Array();
         super(param1);
         this.var_1650 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1651.push(param1.readInteger());
            _loc3_++;
         }
      }
      
      public function get triggerConf() : int
      {
         return this.var_1650;
      }
      
      override public function get code() : int
      {
         return this.var_1650;
      }
      
      public function get conflictingActions() : Array
      {
         return this.var_1651;
      }
   }
}
