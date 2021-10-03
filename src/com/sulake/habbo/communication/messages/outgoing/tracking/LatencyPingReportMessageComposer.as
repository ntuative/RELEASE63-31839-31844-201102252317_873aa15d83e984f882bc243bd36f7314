package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2179:int;
      
      private var var_2178:int;
      
      private var var_2180:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2179 = param1;
         this.var_2178 = param2;
         this.var_2180 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2179,this.var_2178,this.var_2180];
      }
      
      public function dispose() : void
      {
      }
   }
}
