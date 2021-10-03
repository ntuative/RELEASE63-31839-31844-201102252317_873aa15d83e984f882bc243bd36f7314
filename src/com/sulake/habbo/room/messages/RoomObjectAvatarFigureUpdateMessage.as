package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_589:String;
      
      private var var_2594:String;
      
      private var var_918:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_589 = param1;
         this.var_918 = param2;
         this.var_2594 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_589;
      }
      
      public function get race() : String
      {
         return this.var_2594;
      }
      
      public function get gender() : String
      {
         return this.var_918;
      }
   }
}
