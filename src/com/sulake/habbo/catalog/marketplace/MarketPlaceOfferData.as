package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData implements IMarketPlaceOfferData
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2389:int;
      
      private var var_1994:String;
      
      private var var_1702:int;
      
      private var var_2360:int;
      
      private var var_2618:int;
      
      private var var_377:int;
      
      private var var_2388:int = -1;
      
      private var var_1847:int;
      
      private var var_44:BitmapData;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2389 = param3;
         this.var_1994 = param4;
         this.var_1702 = param5;
         this.var_377 = param6;
         this.var_2360 = param7;
         this.var_1847 = param8;
      }
      
      public function dispose() : void
      {
         if(this.var_44)
         {
            this.var_44.dispose();
            this.var_44 = null;
         }
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
      
      public function get averagePrice() : int
      {
         return this.var_2360;
      }
      
      public function get image() : BitmapData
      {
         return this.var_44;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(this.var_44 != null)
         {
            this.var_44.dispose();
         }
         this.var_44 = param1;
      }
      
      public function set imageCallback(param1:int) : void
      {
         this.var_2618 = param1;
      }
      
      public function get imageCallback() : int
      {
         return this.var_2618;
      }
      
      public function get status() : int
      {
         return this.var_377;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2388;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         this.var_2388 = param1;
      }
      
      public function set price(param1:int) : void
      {
         this.var_1702 = param1;
      }
      
      public function set offerId(param1:int) : void
      {
         this._offerId = param1;
      }
      
      public function get offerCount() : int
      {
         return this.var_1847;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_1847 = param1;
      }
   }
}
