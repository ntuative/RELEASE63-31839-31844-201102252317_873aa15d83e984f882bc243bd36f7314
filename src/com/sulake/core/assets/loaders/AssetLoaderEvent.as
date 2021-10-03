package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_28:String = "AssetLoaderEventComplete";
      
      public static const const_1019:String = "AssetLoaderEventProgress";
      
      public static const const_1166:String = "AssetLoaderEventUnload";
      
      public static const const_1196:String = "AssetLoaderEventStatus";
      
      public static const const_46:String = "AssetLoaderEventError";
      
      public static const const_1092:String = "AssetLoaderEventOpen";
       
      
      private var var_377:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         this.var_377 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return this.var_377;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,this.var_377);
      }
   }
}
