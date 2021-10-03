package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1923:int;
      
      private var var_2711:int;
      
      private var var_1392:int;
      
      private var var_2534:int;
      
      private var var_109:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1923 = param1.readInteger();
         this.var_2711 = param1.readInteger();
         this.var_1392 = param1.readInteger();
         this.var_2534 = param1.readInteger();
         this.var_109 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1923);
      }
      
      public function get callId() : int
      {
         return this.var_1923;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2711;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1392;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2534;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_109;
      }
   }
}
