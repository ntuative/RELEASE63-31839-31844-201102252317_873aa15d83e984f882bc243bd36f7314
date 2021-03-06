package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1590:String = "pricing_model_unknown";
      
      public static const const_555:String = "pricing_model_single";
      
      public static const const_554:String = "pricing_model_multi";
      
      public static const const_562:String = "pricing_model_bundle";
      
      public static const const_1473:String = "price_type_none";
      
      public static const const_811:String = "price_type_credits";
      
      public static const const_1054:String = "price_type_activitypoints";
      
      public static const const_1055:String = "price_type_credits_and_activitypoints";
       
      
      private var var_724:String;
      
      private var var_1095:String;
      
      private var _offerId:int;
      
      private var var_1693:String;
      
      private var var_1096:int;
      
      private var var_1094:int;
      
      private var var_1644:int;
      
      private var var_419:ICatalogPage;
      
      private var var_725:IProductContainer;
      
      private var var_2392:int;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         this._offerId = param1.offerId;
         this.var_1693 = param1.localizationId;
         this.var_1096 = param1.priceInCredits;
         this.var_1094 = param1.priceInActivityPoints;
         this.var_1644 = param1.activityPointType;
         this.var_419 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         this.analyzePricingModel(_loc3_);
         this.analyzePriceType();
         this.createProductContainer(_loc3_);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_419;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_1693;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1096;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1094;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1644;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_725;
      }
      
      public function get pricingModel() : String
      {
         return this.var_724;
      }
      
      public function get priceType() : String
      {
         return this.var_1095;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2392;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2392 = param1;
      }
      
      public function dispose() : void
      {
         this._offerId = 0;
         this.var_1693 = "";
         this.var_1096 = 0;
         this.var_1094 = 0;
         this.var_1644 = 0;
         this.var_419 = null;
         if(this.var_725 != null)
         {
            this.var_725.dispose();
            this.var_725 = null;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_724)
         {
            case const_555:
               this.var_725 = new SingleProductContainer(this,param1);
               break;
            case const_554:
               this.var_725 = new MultiProductContainer(this,param1);
               break;
            case const_562:
               this.var_725 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_724);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_724 = const_555;
            }
            else
            {
               this.var_724 = const_554;
            }
         }
         else if(param1.length > 1)
         {
            this.var_724 = const_562;
         }
         else
         {
            this.var_724 = const_1590;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1096 > 0 && this.var_1094 > 0)
         {
            this.var_1095 = const_1055;
         }
         else if(this.var_1096 > 0)
         {
            this.var_1095 = const_811;
         }
         else if(this.var_1094 > 0)
         {
            this.var_1095 = const_1054;
         }
         else
         {
            this.var_1095 = const_1473;
         }
      }
   }
}
