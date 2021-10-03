package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2621:String;
      
      private var var_1849:String;
      
      private var var_2620:String;
      
      private var var_1848:Boolean;
      
      private var var_1850:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2621 = String(param1["set-type"]);
         this.var_1849 = String(param1["flipped-set-type"]);
         this.var_2620 = String(param1["remove-set-type"]);
         this.var_1848 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_1850 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_1850;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_1850 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2621;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_1849;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2620;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_1848;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_1848 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_1849 = param1;
      }
   }
}
