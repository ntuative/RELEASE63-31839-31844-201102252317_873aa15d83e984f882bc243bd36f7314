package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1399:Boolean = false;
      
      private var var_1702:int;
      
      private var var_1737:Array;
      
      private var var_752:Array;
      
      private var var_753:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1399 = _loc2_.isWrappingEnabled;
         this.var_1702 = _loc2_.wrappingPrice;
         this.var_1737 = _loc2_.stuffTypes;
         this.var_752 = _loc2_.boxTypes;
         this.var_753 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1399;
      }
      
      public function get price() : int
      {
         return this.var_1702;
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
   }
}
