package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2459:Boolean;
      
      private var var_2458:int;
      
      private var var_1737:Array;
      
      private var var_752:Array;
      
      private var var_753:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2459;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2458;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1737;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_752;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_753;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1737 = [];
         this.var_752 = [];
         this.var_753 = [];
         this.var_2459 = param1.readBoolean();
         this.var_2458 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1737.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_752.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_753.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
