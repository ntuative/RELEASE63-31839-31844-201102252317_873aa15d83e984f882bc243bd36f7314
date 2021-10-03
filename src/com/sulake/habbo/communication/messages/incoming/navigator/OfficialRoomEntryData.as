package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1181:int = 1;
      
      public static const const_843:int = 2;
      
      public static const const_750:int = 3;
      
      public static const const_1414:int = 4;
       
      
      private var _index:int;
      
      private var var_2669:String;
      
      private var var_2673:String;
      
      private var var_2670:Boolean;
      
      private var var_2671:String;
      
      private var var_940:String;
      
      private var var_2672:int;
      
      private var var_2108:int;
      
      private var _type:int;
      
      private var var_2114:String;
      
      private var var_974:GuestRoomData;
      
      private var var_975:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2669 = param1.readString();
         this.var_2673 = param1.readString();
         this.var_2670 = param1.readInteger() == 1;
         this.var_2671 = param1.readString();
         this.var_940 = param1.readString();
         this.var_2672 = param1.readInteger();
         this.var_2108 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1181)
         {
            this.var_2114 = param1.readString();
         }
         else if(this._type == const_750)
         {
            this.var_975 = new PublicRoomData(param1);
         }
         else if(this._type == const_843)
         {
            this.var_974 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_974 != null)
         {
            this.var_974.dispose();
            this.var_974 = null;
         }
         if(this.var_975 != null)
         {
            this.var_975.dispose();
            this.var_975 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2669;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2673;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2670;
      }
      
      public function get picText() : String
      {
         return this.var_2671;
      }
      
      public function get picRef() : String
      {
         return this.var_940;
      }
      
      public function get folderId() : int
      {
         return this.var_2672;
      }
      
      public function get tag() : String
      {
         return this.var_2114;
      }
      
      public function get userCount() : int
      {
         return this.var_2108;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_974;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_975;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1181)
         {
            return 0;
         }
         if(this.type == const_843)
         {
            return this.var_974.maxUserCount;
         }
         if(this.type == const_750)
         {
            return this.var_975.maxUsers;
         }
         return 0;
      }
   }
}
