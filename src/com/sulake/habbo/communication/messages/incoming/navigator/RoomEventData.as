package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1115:Boolean;
      
      private var var_2071:int;
      
      private var var_2073:String;
      
      private var var_319:int;
      
      private var var_2070:int;
      
      private var var_2075:String;
      
      private var var_2072:String;
      
      private var var_2074:String;
      
      private var var_798:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_798 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1115 = false;
            return;
         }
         this.var_1115 = true;
         this.var_2071 = int(_loc2_);
         this.var_2073 = param1.readString();
         this.var_319 = int(param1.readString());
         this.var_2070 = param1.readInteger();
         this.var_2075 = param1.readString();
         this.var_2072 = param1.readString();
         this.var_2074 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_798.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_798 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2071;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2073;
      }
      
      public function get flatId() : int
      {
         return this.var_319;
      }
      
      public function get eventType() : int
      {
         return this.var_2070;
      }
      
      public function get eventName() : String
      {
         return this.var_2075;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2072;
      }
      
      public function get creationTime() : String
      {
         return this.var_2074;
      }
      
      public function get tags() : Array
      {
         return this.var_798;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1115;
      }
   }
}
