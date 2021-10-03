package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2152:String;
      
      private var var_2151:Class;
      
      private var var_2150:Class;
      
      private var var_1559:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2152 = param1;
         this.var_2151 = param2;
         this.var_2150 = param3;
         if(rest == null)
         {
            this.var_1559 = new Array();
         }
         else
         {
            this.var_1559 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2152;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2151;
      }
      
      public function get method_15() : Class
      {
         return this.var_2150;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1559;
      }
   }
}
