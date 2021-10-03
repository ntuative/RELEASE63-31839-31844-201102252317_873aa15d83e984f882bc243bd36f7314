package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1087:Boolean;
      
      private var var_1086:Boolean;
      
      private var var_1360:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1087;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1086;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1360;
      }
      
      public function flush() : Boolean
      {
         this.var_1087 = false;
         this.var_1086 = false;
         this.var_1360 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1087 = param1.readBoolean();
         this.var_1086 = param1.readBoolean();
         this.var_1360 = param1.readBoolean();
         return true;
      }
   }
}
