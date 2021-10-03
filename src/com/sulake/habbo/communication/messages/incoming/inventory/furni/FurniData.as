package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2100:int;
      
      private var var_1371:String;
      
      private var _objId:int;
      
      private var var_1775:int;
      
      private var _category:int;
      
      private var var_1994:String;
      
      private var var_2634:Boolean;
      
      private var var_2635:Boolean;
      
      private var var_2633:Boolean;
      
      private var var_2348:Boolean;
      
      private var var_2578:int;
      
      private var var_1304:int;
      
      private var var_1751:String = "";
      
      private var var_2068:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2100 = param1;
         this.var_1371 = param2;
         this._objId = param3;
         this.var_1775 = param4;
         this._category = param5;
         this.var_1994 = param6;
         this.var_2634 = param7;
         this.var_2635 = param8;
         this.var_2633 = param9;
         this.var_2348 = param10;
         this.var_2578 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1751 = param1;
         this.var_1304 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2100;
      }
      
      public function get itemType() : String
      {
         return this.var_1371;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1775;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1994;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2634;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2635;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2633;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2348;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2578;
      }
      
      public function get slotId() : String
      {
         return this.var_1751;
      }
      
      public function get songId() : int
      {
         return this.var_2068;
      }
      
      public function get extra() : int
      {
         return this.var_1304;
      }
   }
}
