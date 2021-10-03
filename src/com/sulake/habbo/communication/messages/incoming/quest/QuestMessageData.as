package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var _id:int;
      
      private var var_377:int;
      
      private var _type:String;
      
      private var var_1723:String;
      
      private var var_1720:int;
      
      private var var_1721:String;
      
      private var var_731:String;
      
      private var var_1722:String;
      
      private var _questBadgeAchievementTypeId:String;
      
      private var var_2434:uint;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this.var_377 = param1.readInteger();
         this._type = param1.readString();
         this.var_1723 = param1.readString();
         this.var_1720 = param1.readInteger();
         this.var_1721 = param1.readString();
         this.var_731 = param1.readString();
         this._questBadgeAchievementTypeId = param1.readString();
         var _loc2_:String = "";
         var _loc3_:int = this.var_731.length - 1;
         while(_loc3_ > 0 && this.isNumber(this.var_731.charAt(_loc3_)))
         {
            _loc2_ = this.var_731.charAt(_loc3_) + _loc2_;
            _loc3_--;
         }
         if(_loc3_ > 0)
         {
            this.var_1722 = this.var_731.substring(0,_loc3_ + 1);
         }
         else
         {
            this.var_1722 = this.var_731;
         }
         this.var_2434 = uint(_loc2_);
      }
      
      private function getNumber(param1:String) : int
      {
         var _loc2_:int = param1.charCodeAt(0);
         return _loc2_ - 48;
      }
      
      private function isNumber(param1:String) : Boolean
      {
         var _loc2_:int = param1.charCodeAt(0);
         return _loc2_ >= 48 && _loc2_ <= 57;
      }
      
      public function dispose() : void
      {
         this._id = 0;
         this.var_377 = 0;
         this._type = "";
         this.var_1723 = "";
         this.var_1720 = 0;
         this.var_1721 = "";
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get status() : int
      {
         return this.var_377;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get roomItemTypeName() : String
      {
         return this.var_1723;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_1720;
      }
      
      public function get endDateTimeStamp() : String
      {
         return this.var_1721;
      }
      
      public function get localizationCode() : String
      {
         return this.var_731;
      }
      
      public function get sortCode() : uint
      {
         return this.var_2434;
      }
      
      public function get localizationPrefix() : String
      {
         return this.var_1722;
      }
      
      public function get questBadgeAchievementTypeId() : String
      {
         return this._questBadgeAchievementTypeId;
      }
   }
}
