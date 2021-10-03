package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_122:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_146:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_1065:int = 2;
      
      public static const const_1110:int = 3;
      
      public static const const_1444:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1501:String = "";
      
      private var var_2172:int;
      
      private var var_2190:int = 0;
      
      private var var_2189:int = 0;
      
      private var var_589:String = "";
      
      private var var_44:BitmapData = null;
      
      private var var_254:Array;
      
      private var var_1609:Array;
      
      private var var_1302:int = 0;
      
      private var var_2248:String = "";
      
      private var var_2246:int = 0;
      
      private var var_2242:int = 0;
      
      private var var_1552:Boolean = false;
      
      private var var_1500:String = "";
      
      private var var_2244:Boolean = false;
      
      private var var_2237:Boolean = true;
      
      private var _respectLeft:int = 0;
      
      private var var_2240:Boolean = false;
      
      private var var_2239:Boolean = false;
      
      private var var_2238:Boolean = false;
      
      private var var_2243:Boolean = false;
      
      private var var_2247:Boolean = false;
      
      private var var_2245:Boolean = false;
      
      private var var_2241:int = 0;
      
      private var var_1553:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_254 = [];
         this.var_1609 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1501 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1501;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2172 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2172;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2190 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2190;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2189 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2189;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_589 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_589;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_44 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_44;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_254 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_254;
      }
      
      public function get givableBadges() : Array
      {
         return this.var_1609;
      }
      
      public function set givableBadges(param1:Array) : void
      {
         this.var_1609 = param1;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1302 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1302;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2248 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2248;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2244 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2244;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this._respectLeft = param1;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2240 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2240;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2239 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2239;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2238 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2238;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2243 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2243;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2247 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2247;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2245 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2245;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2241 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2241;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2237 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2237;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1553 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1553;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2246 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2246;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2242 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2242;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1552 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1552;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1500 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1500;
      }
   }
}
