package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_152:Number = 0;
      
      private var var_153:Number = 0;
      
      private var var_263:int = 0;
      
      private var var_466:int = 0;
      
      private var var_549:int = 0;
      
      private var _type:int = 0;
      
      private var var_2805:String = "";
      
      private var var_1304:int = -1;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_2578:int = 0;
      
      private var var_2579:String = null;
      
      private var var_169:Boolean = false;
      
      public function ObjectMessageData(param1:int)
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
      
      public function get sizeX() : int
      {
         return this.var_466;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_169)
         {
            this.var_466 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_549;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_169)
         {
            this.var_549 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_169)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_169)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_169)
         {
            this._data = param1;
         }
      }
      
      public function get staticClass() : String
      {
         return this.var_2579;
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!this.var_169)
         {
            this.var_2579 = param1;
         }
      }
      
      public function get extra() : int
      {
         return this.var_1304;
      }
      
      public function set extra(param1:int) : void
      {
         if(!this.var_169)
         {
            this.var_1304 = param1;
         }
      }
      
      public function get expiryTime() : int
      {
         return this.var_2578;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!this.var_169)
         {
            this.var_2578 = param1;
         }
      }
   }
}
