package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1399:Boolean;
      
      private var var_2487:int;
      
      private var var_1758:int;
      
      private var var_1759:int;
      
      private var var_2486:int;
      
      private var var_2485:int;
      
      private var var_2488:int;
      
      private var var_2263:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1399;
      }
      
      public function get commission() : int
      {
         return this.var_2487;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1758;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1759;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2485;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2486;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2488;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2263;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1399 = param1.readBoolean();
         this.var_2487 = param1.readInteger();
         this.var_1758 = param1.readInteger();
         this.var_1759 = param1.readInteger();
         this.var_2485 = param1.readInteger();
         this.var_2486 = param1.readInteger();
         this.var_2488 = param1.readInteger();
         this.var_2263 = param1.readInteger();
         return true;
      }
   }
}
