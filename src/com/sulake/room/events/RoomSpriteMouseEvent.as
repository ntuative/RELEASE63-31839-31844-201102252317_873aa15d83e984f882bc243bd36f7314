package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1795:String = "";
      
      private var var_1799:String = "";
      
      private var var_2521:String = "";
      
      private var var_2524:Number = 0;
      
      private var var_2526:Number = 0;
      
      private var var_2122:Number = 0;
      
      private var var_2123:Number = 0;
      
      private var var_2522:Boolean = false;
      
      private var var_2525:Boolean = false;
      
      private var var_2523:Boolean = false;
      
      private var var_2520:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1795 = param2;
         this.var_1799 = param3;
         this.var_2521 = param4;
         this.var_2524 = param5;
         this.var_2526 = param6;
         this.var_2122 = param7;
         this.var_2123 = param8;
         this.var_2522 = param9;
         this.var_2525 = param10;
         this.var_2523 = param11;
         this.var_2520 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1795;
      }
      
      public function get canvasId() : String
      {
         return this.var_1799;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2521;
      }
      
      public function get screenX() : Number
      {
         return this.var_2524;
      }
      
      public function get screenY() : Number
      {
         return this.var_2526;
      }
      
      public function get localX() : Number
      {
         return this.var_2122;
      }
      
      public function get localY() : Number
      {
         return this.var_2123;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2522;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2525;
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
