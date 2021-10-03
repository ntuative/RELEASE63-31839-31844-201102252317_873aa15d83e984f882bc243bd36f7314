package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDanceMessage extends RoomWidgetMessage
   {
      
      public static const const_639:String = "RWCM_MESSAGE_DANCE";
      
      public static const const_1154:int = 0;
      
      public static const const_1523:Array = [2,3,4];
       
      
      private var var_82:int = 0;
      
      public function RoomWidgetDanceMessage(param1:int)
      {
         super(const_639);
         this.var_82 = param1;
      }
      
      public function get style() : int
      {
         return this.var_82;
      }
   }
}
