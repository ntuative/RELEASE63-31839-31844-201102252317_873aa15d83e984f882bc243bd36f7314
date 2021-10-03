package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1116:String = "M";
      
      public static const const_1600:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_152:Number = 0;
      
      private var var_153:Number = 0;
      
      private var var_263:int = 0;
      
      private var _name:String = "";
      
      private var _userType:int = 0;
      
      private var var_922:String = "";
      
      private var var_589:String = "";
      
      private var var_2188:String = "";
      
      private var var_2172:int;
      
      private var var_2190:int = 0;
      
      private var var_2185:String = "";
      
      private var var_2186:int = 0;
      
      private var var_2189:int = 0;
      
      private var var_2187:String = "";
      
      private var var_169:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_169 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_169)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_152;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_169)
         {
            this.var_152 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_153;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_169)
         {
            this.var_153 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_263;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_169)
         {
            this.var_263 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_169)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this._userType;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_169)
         {
            this._userType = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_922;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_169)
         {
            this.var_922 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_589;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_169)
         {
            this.var_589 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2188;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_169)
         {
            this.var_2188 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2172;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_169)
         {
            this.var_2172 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2190;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_169)
         {
            this.var_2190 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2185;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_169)
         {
            this.var_2185 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2186;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_169)
         {
            this.var_2186 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2189;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_169)
         {
            this.var_2189 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2187;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_169)
         {
            this.var_2187 = param1;
         }
      }
   }
}
