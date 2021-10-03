package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2406:String;
      
      private var var_2194:int;
      
      private var var_2035:int;
      
      private var var_2193:String;
      
      private var var_2407:int;
      
      private var var_1590:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2406 = param1.readString();
         this.var_2194 = param1.readInteger();
         this.var_2035 = param1.readInteger();
         this.var_2193 = param1.readString();
         this.var_2407 = param1.readInteger();
         this.var_1590 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2406;
      }
      
      public function get unitPort() : int
      {
         return this.var_2194;
      }
      
      public function get worldId() : int
      {
         return this.var_2035;
      }
      
      public function get castLibs() : String
      {
         return this.var_2193;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2407;
      }
      
      public function get nodeId() : int
      {
         return this.var_1590;
      }
   }
}
