package com.sulake.habbo.session.events
{
   import flash.display.BitmapData;
   import flash.events.Event;
   
   public class BadgeImageReadyEvent extends Event
   {
      
      public static const const_151:String = "BIRE_BADGE_IMAGE_READY";
       
      
      private var var_295:String;
      
      private var var_44:BitmapData;
      
      public function BadgeImageReadyEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_151,param3,param4);
         this.var_295 = param1;
         this.var_44 = param2;
      }
      
      public function get badgeId() : String
      {
         return this.var_295;
      }
      
      public function get badgeImage() : BitmapData
      {
         return this.var_44;
      }
   }
}
