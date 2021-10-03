package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1377:int;
      
      private var var_1621:int;
      
      private var var_2418:int;
      
      private var var_1709:int;
      
      private var var_1376:int;
      
      private var var_2175:String = "";
      
      private var var_2642:String = "";
      
      private var var_2643:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1377 = param1.readInteger();
         this.var_2175 = param1.readString();
         this.var_1621 = param1.readInteger();
         this.var_2418 = param1.readInteger();
         this.var_1709 = param1.readInteger();
         this.var_1376 = param1.readInteger();
         this.var_2643 = param1.readInteger();
         this.var_2642 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1377;
      }
      
      public function get points() : int
      {
         return this.var_1621;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2418;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1709;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1376;
      }
      
      public function get badgeID() : String
      {
         return this.var_2175;
      }
      
      public function get achievementID() : int
      {
         return this.var_2643;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2642;
      }
   }
}
