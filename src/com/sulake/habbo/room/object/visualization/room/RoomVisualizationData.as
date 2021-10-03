package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_452:WallRasterizer;
      
      private var var_451:FloorRasterizer;
      
      private var var_656:WallAdRasterizer;
      
      private var var_453:LandscapeRasterizer;
      
      private var var_657:PlaneMaskManager;
      
      private var var_655:Boolean = false;
      
      public function RoomVisualizationData()
      {
         super();
         this.var_452 = new WallRasterizer();
         this.var_451 = new FloorRasterizer();
         this.var_656 = new WallAdRasterizer();
         this.var_453 = new LandscapeRasterizer();
         this.var_657 = new PlaneMaskManager();
      }
      
      public function get initialized() : Boolean
      {
         return this.var_655;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return this.var_451;
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return this.var_452;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return this.var_656;
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return this.var_453;
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return this.var_657;
      }
      
      public function dispose() : void
      {
         if(this.var_452 != null)
         {
            this.var_452.dispose();
            this.var_452 = null;
         }
         if(this.var_451 != null)
         {
            this.var_451.dispose();
            this.var_451 = null;
         }
         if(this.var_656 != null)
         {
            this.var_656.dispose();
            this.var_656 = null;
         }
         if(this.var_453 != null)
         {
            this.var_453.dispose();
            this.var_453 = null;
         }
         if(this.var_657 != null)
         {
            this.var_657.dispose();
            this.var_657 = null;
         }
      }
      
      public function clearCache() : void
      {
         if(this.var_452 != null)
         {
            this.var_452.clearCache();
         }
         if(this.var_451 != null)
         {
            this.var_451.clearCache();
         }
         if(this.var_453 != null)
         {
            this.var_453.clearCache();
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         this.reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            this.var_452.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            this.var_451.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            this.var_656.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            this.var_453.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            this.var_657.initialize(_loc11_);
         }
         return true;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(this.var_655)
         {
            return;
         }
         this.var_452.initializeAssetCollection(param1);
         this.var_451.initializeAssetCollection(param1);
         this.var_656.initializeAssetCollection(param1);
         this.var_453.initializeAssetCollection(param1);
         this.var_657.initializeAssetCollection(param1);
         this.var_655 = true;
      }
      
      protected function reset() : void
      {
      }
   }
}
