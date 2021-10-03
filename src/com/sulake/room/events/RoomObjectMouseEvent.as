package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_256:String = "ROE_MOUSE_CLICK";
      
      public static const const_1893:String = "ROE_MOUSE_ENTER";
      
      public static const const_511:String = "ROE_MOUSE_MOVE";
      
      public static const const_1784:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1928:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_500:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1795:String = "";
      
      private var var_2525:Boolean;
      
      private var var_2522:Boolean;
      
      private var var_2523:Boolean;
      
      private var var_2520:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1795 = param2;
         this.var_2525 = param5;
         this.var_2522 = param6;
         this.var_2523 = param7;
         this.var_2520 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1795;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2525;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2522;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2523;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2520;
      }
   }
}
