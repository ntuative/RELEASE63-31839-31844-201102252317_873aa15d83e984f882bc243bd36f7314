package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1447:int;
      
      private var var_1448:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1447 = this.var_1447;
         _loc1_.var_1448 = this.var_1448;
         return _loc1_;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1447 = param1;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1448 = param1;
      }
      
      public function get pos() : int
      {
         return this.var_1447;
      }
      
      public function get imgId() : int
      {
         return this.var_1448;
      }
   }
}
