package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarExperienceUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2449:int;
      
      public function RoomObjectAvatarExperienceUpdateMessage(param1:int)
      {
         super();
         this.var_2449 = param1;
      }
      
      public function get gainedExperience() : int
      {
         return this.var_2449;
      }
   }
}