package com.sulake.habbo.session
{
   public class GivableBadgeData
   {
       
      
      private var var_295:int;
      
      private var var_2055:String;
      
      public function GivableBadgeData(param1:int, param2:String)
      {
         super();
         this.var_295 = param1;
         this.var_2055 = param2;
      }
      
      public function get badgeId() : int
      {
         return this.var_295;
      }
      
      public function get achievementTypeName() : String
      {
         return this.var_2055;
      }
   }
}
