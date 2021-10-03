package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1588:String;
      
      private var var_2046:int;
      
      private var _password:String;
      
      private var var_1288:int;
      
      private var var_2049:int;
      
      private var var_798:Array;
      
      private var var_2043:Array;
      
      private var var_2045:Boolean;
      
      private var var_2050:Boolean;
      
      private var var_2044:Boolean;
      
      private var var_2048:Boolean;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2045;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2045 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2050;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2050 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2044;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2044 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2048;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2048 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1588;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1588 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2046;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2046 = param1;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1288;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1288 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2049;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2049 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_798;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_798 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2043;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2043 = param1;
      }
   }
}
