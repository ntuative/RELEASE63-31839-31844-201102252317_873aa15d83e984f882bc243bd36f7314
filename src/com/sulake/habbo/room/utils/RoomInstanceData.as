package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_681:TileHeightMap = null;
      
      private var var_1050:LegacyWallGeometry = null;
      
      private var var_1051:RoomCamera = null;
      
      private var var_679:SelectedRoomObjectData = null;
      
      private var var_680:SelectedRoomObjectData = null;
      
      private var var_2182:String = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1050 = new LegacyWallGeometry();
         this.var_1051 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_681;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_681 != null)
         {
            this.var_681.dispose();
         }
         this.var_681 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1050;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1051;
      }
      
      public function get worldType() : String
      {
         return this.var_2182;
      }
      
      public function set worldType(param1:String) : void
      {
         this.var_2182 = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_679;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_679 != null)
         {
            this.var_679.dispose();
         }
         this.var_679 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_680;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_680 != null)
         {
            this.var_680.dispose();
         }
         this.var_680 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_681 != null)
         {
            this.var_681.dispose();
            this.var_681 = null;
         }
         if(this.var_1050 != null)
         {
            this.var_1050.dispose();
            this.var_1050 = null;
         }
         if(this.var_1051 != null)
         {
            this.var_1051.dispose();
            this.var_1051 = null;
         }
         if(this.var_679 != null)
         {
            this.var_679.dispose();
            this.var_679 = null;
         }
         if(this.var_680 != null)
         {
            this.var_680.dispose();
            this.var_680 = null;
         }
      }
   }
}
