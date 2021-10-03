package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2039:String;
      
      private var var_2038:Array;
      
      private var var_2037:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2039 = param1;
         this.var_2038 = param2;
         this.var_2037 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2039;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2038;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2037;
      }
   }
}
