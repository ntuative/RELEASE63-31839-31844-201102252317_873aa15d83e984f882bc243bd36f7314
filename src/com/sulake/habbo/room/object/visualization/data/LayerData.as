package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_737:String = "";
      
      public static const const_549:int = 0;
      
      public static const const_464:int = 255;
      
      public static const const_644:Boolean = false;
      
      public static const const_512:int = 0;
      
      public static const const_550:int = 0;
      
      public static const const_431:int = 0;
      
      public static const const_990:int = 1;
      
      public static const const_1209:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2114:String = "";
      
      private var var_1494:int = 0;
      
      private var var_2377:int = 255;
      
      private var var_2378:Boolean = false;
      
      private var var_2376:int = 0;
      
      private var var_2379:int = 0;
      
      private var var_2375:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2114 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2114;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1494 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1494;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2377 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2377;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2378 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2378;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2376 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2376;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2379 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2379;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2375 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2375;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
