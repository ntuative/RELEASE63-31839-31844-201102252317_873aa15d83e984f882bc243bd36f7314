package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_81:String = "i";
      
      public static const const_91:String = "s";
      
      public static const const_241:String = "e";
       
      
      private var var_1639:String;
      
      private var var_2318:int;
      
      private var var_1328:String;
      
      private var var_1329:int;
      
      private var var_1638:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1639 = param1.readString();
         this.var_2318 = param1.readInteger();
         this.var_1328 = param1.readString();
         this.var_1329 = param1.readInteger();
         this.var_1638 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1639;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2318;
      }
      
      public function get extraParam() : String
      {
         return this.var_1328;
      }
      
      public function get productCount() : int
      {
         return this.var_1329;
      }
      
      public function get expiration() : int
      {
         return this.var_1638;
      }
   }
}
