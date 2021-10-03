package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_342:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1132:String = "RWOCM_CLUB_MAIN";
      
      public static const const_1124:String = "RWOCM_PIXELS";
      
      public static const const_1083:String = "RWOCM_CREDITS";
       
      
      private var var_2393:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_342);
         this.var_2393 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2393;
      }
   }
}
