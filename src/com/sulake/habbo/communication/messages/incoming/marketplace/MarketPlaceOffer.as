package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2389:int;
      
      private var var_1994:String;
      
      private var var_1702:int;
      
      private var var_377:int;
      
      private var var_2388:int = -1;
      
      private var var_2360:int;
      
      private var var_1847:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2389 = param3;
         this.var_1994 = param4;
         this.var_1702 = param5;
         this.var_377 = param6;
         this.var_2388 = param7;
         this.var_2360 = param8;
         this.var_1847 = param9;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2389;
      }
      
      public function get stuffData() : String
      {
         return this.var_1994;
      }
      
      public function get price() : int
      {
         return this.var_1702;
      }
      
      public function get status() : int
      {
         return this.var_377;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2388;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2360;
      }
      
      public function get offerCount() : int
      {
         return this.var_1847;
      }
   }
}
