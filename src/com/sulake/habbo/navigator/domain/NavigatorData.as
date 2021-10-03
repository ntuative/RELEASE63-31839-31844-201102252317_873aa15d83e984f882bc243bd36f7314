package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1709:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_198:MsgWithRequestId;
      
      private var var_634:RoomEventData;
      
      private var var_2645:Boolean;
      
      private var var_2650:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2022:int;
      
      private var var_260:GuestRoomData;
      
      private var var_966:PublicRoomShortData;
      
      private var var_2646:int;
      
      private var var_2647:Boolean;
      
      private var var_2644:int;
      
      private var var_2652:Boolean;
      
      private var var_1862:int;
      
      private var var_2653:Boolean;
      
      private var var_1401:Array;
      
      private var var_1457:Array;
      
      private var var_2651:int;
      
      private var var_1456:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1185:Boolean;
      
      private var var_2648:int;
      
      private var var_2654:Boolean;
      
      private var var_2649:int = 0;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1401 = new Array();
         this.var_1457 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_260 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_260 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_966 = null;
         this.var_260 = null;
         this._currentRoomOwner = false;
         if(param1.guestRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_966 = param1.publicSpace;
            this.var_634 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_634 != null)
         {
            this.var_634.dispose();
            this.var_634 = null;
         }
         if(this.var_966 != null)
         {
            this.var_966.dispose();
            this.var_966 = null;
         }
         if(this.var_260 != null)
         {
            this.var_260.dispose();
            this.var_260 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_260 != null)
         {
            this.var_260.dispose();
         }
         this.var_260 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_634 != null)
         {
            this.var_634.dispose();
         }
         this.var_634 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_198 != null && this.var_198 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_198 != null && this.var_198 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_198 != null && this.var_198 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_198 = param1;
         this.var_1185 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_198 = param1;
         this.var_1185 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_198 = param1;
         this.var_1185 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_198 == null)
         {
            return;
         }
         this.var_198.dispose();
         this.var_198 = null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_198 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_198 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_198 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_634;
      }
      
      public function get avatarId() : int
      {
         return this.var_2022;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2645;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2650;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_260;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_966;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2647;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2644;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_1862;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2652;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2648;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2646;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2653;
      }
      
      public function get adIndex() : int
      {
         return this.var_2649;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2654;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2022 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2644 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2647 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2645 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2650 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2652 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_1862 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2648 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2646 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2653 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2649 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2654 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1401 = param1;
         this.var_1457 = new Array();
         for each(_loc2_ in this.var_1401)
         {
            if(_loc2_.visible)
            {
               this.var_1457.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1401;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1457;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2651 = param1.limit;
         this.var_1456 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1456 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_260.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_260 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_260.flatId;
         return this.var_1862 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1456 >= this.var_2651;
      }
      
      public function startLoading() : void
      {
         this.var_1185 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1185;
      }
   }
}
