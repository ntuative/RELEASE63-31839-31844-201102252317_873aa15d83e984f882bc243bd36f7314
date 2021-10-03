package com.sulake.habbo.catalog.viewer
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.catalog.enum.ProductTypeEnum;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.room.IGetImageListener;
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.room.ImageResult;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   import flash.display.BitmapData;
   
   public class Product extends ProductGridItem implements IProduct, IGetImageListener
   {
       
      
      private var var_1639:String;
      
      private var var_1641:int;
      
      private var var_1328:String;
      
      private var var_1329:int;
      
      private var var_1638:int;
      
      private var var_1640:IProductData;
      
      private var _furnitureData:IFurnitureData;
      
      public function Product(param1:CatalogPageMessageProductData, param2:IProductData, param3:IFurnitureData)
      {
         super();
         this.var_1639 = param1.productType;
         this.var_1641 = param1.furniClassId;
         this.var_1328 = param1.extraParam;
         this.var_1329 = param1.productCount;
         this.var_1638 = param1.expiration;
         this.var_1640 = param2;
         this._furnitureData = param3;
      }
      
      public function get productType() : String
      {
         return this.var_1639;
      }
      
      public function get productClassId() : int
      {
         return this.var_1641;
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
      
      public function get productData() : IProductData
      {
         return this.var_1640;
      }
      
      public function get furnitureData() : IFurnitureData
      {
         return this._furnitureData;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.var_1639 = "";
         this.var_1641 = 0;
         this.var_1328 = "";
         this.var_1329 = 0;
         this.var_1638 = 0;
         this.var_1640 = null;
      }
      
      public function initIcon(param1:IProductContainer, param2:IGetImageListener = null) : BitmapData
      {
         var _loc6_:* = null;
         var _loc3_:* = null;
         if(param2 == null)
         {
            param2 = {};
         }
         var _loc4_:IRoomEngine = (param1 as ProductContainer).offer.page.viewer.roomEngine;
         var _loc5_:IHabboCatalog = (param1 as ProductContainer).offer.page.viewer.catalog;
         switch(this.productType)
         {
            case ProductTypeEnum.const_91:
               _loc6_ = _loc4_.getFurnitureIcon(this.productClassId,param2);
               break;
            case ProductTypeEnum.const_81:
               _loc6_ = _loc4_.getWallItemIcon(this.productClassId,param2,this.var_1328);
               break;
            case ProductTypeEnum.const_241:
               _loc3_ = _loc5_.getPixelEffectIcon(this.productClassId);
               break;
            case ProductTypeEnum.const_339:
               _loc3_ = _loc5_.getSubscriptionProductIcon(this.productClassId);
               break;
            default:
               Logger.log("[Product] Can not yet handle this type of product: " + this.productType);
         }
         if(_loc6_ != null)
         {
            _loc3_ = _loc6_.data;
            if(param2 == this)
            {
               this.setIconImage(_loc3_);
            }
         }
         return _loc3_;
      }
      
      public function imageReady(param1:int, param2:BitmapData) : void
      {
         Logger.log("[Product] Bundle Icon Image Ready!" + param1);
         setIconImage(param2);
      }
      
      override public function set view(param1:IWindowContainer) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(!param1)
         {
            return;
         }
         super.view = param1;
         if(this.var_1329 > 1)
         {
            _loc2_ = _view.findChildByName("multiContainer");
            if(_loc2_)
            {
               _loc2_.visible = true;
            }
            _loc3_ = _view.findChildByName("multiCounter") as ITextWindow;
            if(_loc3_)
            {
               _loc3_.text = "x" + this.productCount;
            }
         }
      }
   }
}
