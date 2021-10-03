package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1787:int = 0;
      
      private var var_1786:int = 0;
      
      private var var_1644:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1787;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1786;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1644;
      }
      
      public function flush() : Boolean
      {
         this.var_1787 = 0;
         this.var_1786 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1787 = param1.readInteger();
         this.var_1786 = param1.readInteger();
         this.var_1644 = param1.readInteger();
         return true;
      }
   }
}
