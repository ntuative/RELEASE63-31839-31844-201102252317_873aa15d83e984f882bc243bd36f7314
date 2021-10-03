package com.sulake.habbo.communication.messages.parser.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class QuestingEnabledMessageParser implements IMessageParser
   {
       
      
      private var var_1399:Boolean;
      
      private var var_1831:String;
      
      public function QuestingEnabledMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1399 = false;
         this.var_1831 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1399 = param1.readBoolean();
         this.var_1831 = param1.readString();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1399;
      }
      
      public function get defaultCampaignCode() : String
      {
         return this.var_1831;
      }
   }
}
