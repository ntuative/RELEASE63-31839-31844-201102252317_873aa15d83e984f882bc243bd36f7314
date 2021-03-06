package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var _offerId:int;
      
      private var var_1659:String;
      
      private var var_1702:int;
      
      private var var_2229:Boolean;
      
      private var var_2231:Boolean;
      
      private var var_2232:int;
      
      private var var_2230:int;
      
      private var var_419:ICatalogPage;
      
      private var var_2226:int;
      
      private var var_2228:int;
      
      private var var_2227:int;
      
      private var var_2395:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this._offerId = param1;
         this.var_1659 = param2;
         this.var_1702 = param3;
         this.var_2229 = param4;
         this.var_2231 = param5;
         this.var_2232 = param6;
         this.var_2230 = param7;
         this.var_2226 = param8;
         this.var_2228 = param9;
         this.var_2227 = param10;
      }
      
      public function dispose() : void
      {
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1659;
      }
      
      public function get price() : int
      {
         return this.var_1702;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2229;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2231;
      }
      
      public function get periods() : int
      {
         return this.var_2232;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2230;
      }
      
      public function get year() : int
      {
         return this.var_2226;
      }
      
      public function get month() : int
      {
         return this.var_2228;
      }
      
      public function get day() : int
      {
         return this.var_2227;
      }
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return Purse.const_170;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1702;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_419;
      }
      
      public function get priceType() : String
      {
         return Offer.const_811;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1659;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_419 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2395;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2395 = param1;
      }
   }
}
