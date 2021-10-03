package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_319:int;
      
      private var var_2108:int;
      
      private var var_2107:Boolean;
      
      private var var_2109:int;
      
      private var _ownerName:String;
      
      private var var_109:RoomData;
      
      private var var_683:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_319 = param1.readInteger();
         this.var_2108 = param1.readInteger();
         this.var_2107 = param1.readBoolean();
         this.var_2109 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_109 = new RoomData(param1);
         this.var_683 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_109 != null)
         {
            this.var_109.dispose();
            this.var_109 = null;
         }
         if(this.var_683 != null)
         {
            this.var_683.dispose();
            this.var_683 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_319;
      }
      
      public function get userCount() : int
      {
         return this.var_2108;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2107;
      }
      
      public function get ownerId() : int
      {
         return this.var_2109;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_109;
      }
      
      public function get event() : RoomData
      {
         return this.var_683;
      }
   }
}
