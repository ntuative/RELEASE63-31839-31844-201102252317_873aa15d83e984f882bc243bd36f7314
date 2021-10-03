package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_721:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1212:String = "inventory_effects";
      
      public static const const_1018:String = "inventory_badges";
      
      public static const const_1566:String = "inventory_clothes";
      
      public static const const_1637:String = "inventory_furniture";
       
      
      private var var_2489:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_721);
         this.var_2489 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2489;
      }
   }
}
