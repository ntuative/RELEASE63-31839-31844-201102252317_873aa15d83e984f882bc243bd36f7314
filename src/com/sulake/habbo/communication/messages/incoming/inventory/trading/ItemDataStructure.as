package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2085:int;
      
      private var var_1371:String;
      
      private var var_2081:int;
      
      private var var_2082:int;
      
      private var _category:int;
      
      private var var_1994:String;
      
      private var var_1304:int;
      
      private var var_2084:int;
      
      private var var_2083:int;
      
      private var var_2086:int;
      
      private var var_2080:int;
      
      private var var_2087:Boolean;
      
      private var var_2804:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2085 = param1;
         this.var_1371 = param2;
         this.var_2081 = param3;
         this.var_2082 = param4;
         this._category = param5;
         this.var_1994 = param6;
         this.var_1304 = param7;
         this.var_2084 = param8;
         this.var_2083 = param9;
         this.var_2086 = param10;
         this.var_2080 = param11;
         this.var_2087 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2085;
      }
      
      public function get itemType() : String
      {
         return this.var_1371;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2081;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2082;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1994;
      }
      
      public function get extra() : int
      {
         return this.var_1304;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2084;
      }
      
      public function get creationDay() : int
      {
         return this.var_2083;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2086;
      }
      
      public function get creationYear() : int
      {
         return this.var_2080;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2087;
      }
      
      public function get songID() : int
      {
         return this.var_1304;
      }
   }
}
