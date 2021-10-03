package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_944:int = 10;
      
      private static const const_599:int = 20;
      
      private static const const_1309:int = 31;
      
      private static const ANIMATION_ID_ROLL:int = 32;
       
      
      private var var_299:Array;
      
      private var var_742:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
      {
         this.var_299 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_742)
            {
               this.var_742 = true;
               this.var_299 = new Array();
               this.var_299.push(const_1309);
               this.var_299.push(ANIMATION_ID_ROLL);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_944)
         {
            if(this.var_742)
            {
               this.var_742 = false;
               this.var_299 = new Array();
               this.var_299.push(const_944 + param1);
               this.var_299.push(const_599 + param1);
               this.var_299.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
         {
            if(this.var_299.length > 0)
            {
               super.setAnimation(this.var_299.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
