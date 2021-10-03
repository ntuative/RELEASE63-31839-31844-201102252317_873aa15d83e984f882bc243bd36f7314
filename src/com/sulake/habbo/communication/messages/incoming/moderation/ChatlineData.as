package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2475:int;
      
      private var var_2477:int;
      
      private var var_2474:int;
      
      private var var_2476:String;
      
      private var var_1671:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2475 = param1.readInteger();
         this.var_2477 = param1.readInteger();
         this.var_2474 = param1.readInteger();
         this.var_2476 = param1.readString();
         this.var_1671 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2475;
      }
      
      public function get minute() : int
      {
         return this.var_2477;
      }
      
      public function get chatterId() : int
      {
         return this.var_2474;
      }
      
      public function get chatterName() : String
      {
         return this.var_2476;
      }
      
      public function get msg() : String
      {
         return this.var_1671;
      }
   }
}
