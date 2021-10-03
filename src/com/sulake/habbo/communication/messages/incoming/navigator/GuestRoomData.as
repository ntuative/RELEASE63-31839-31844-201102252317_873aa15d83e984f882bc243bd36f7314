package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_319:int;
      
      private var var_683:Boolean;
      
      private var var_813:String;
      
      private var _ownerName:String;
      
      private var var_2046:int;
      
      private var var_2108:int;
      
      private var var_2559:int;
      
      private var var_1588:String;
      
      private var var_2562:int;
      
      private var var_2273:Boolean;
      
      private var var_744:int;
      
      private var var_1288:int;
      
      private var var_2560:String;
      
      private var var_798:Array;
      
      private var var_2561:RoomThumbnailData;
      
      private var var_2045:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_798 = new Array();
         super();
         this.var_319 = param1.readInteger();
         this.var_683 = param1.readBoolean();
         this.var_813 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2046 = param1.readInteger();
         this.var_2108 = param1.readInteger();
         this.var_2559 = param1.readInteger();
         this.var_1588 = param1.readString();
         this.var_2562 = param1.readInteger();
         this.var_2273 = param1.readBoolean();
         this.var_744 = param1.readInteger();
         this.var_1288 = param1.readInteger();
         this.var_2560 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_798.push(_loc4_);
            _loc3_++;
         }
         this.var_2561 = new RoomThumbnailData(param1);
         this.var_2045 = param1.readBoolean();
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
      
      public function get flatId() : int
      {
         return this.var_319;
      }
      
      public function get event() : Boolean
      {
         return this.var_683;
      }
      
      public function get roomName() : String
      {
         return this.var_813;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2046;
      }
      
      public function get userCount() : int
      {
         return this.var_2108;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2559;
      }
      
      public function get description() : String
      {
         return this.var_1588;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2562;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2273;
      }
      
      public function get score() : int
      {
         return this.var_744;
      }
      
      public function get categoryId() : int
      {
         return this.var_1288;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2560;
      }
      
      public function get tags() : Array
      {
         return this.var_798;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2561;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2045;
      }
   }
}
