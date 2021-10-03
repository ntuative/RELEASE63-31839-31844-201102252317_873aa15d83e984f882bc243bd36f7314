package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1377:int;
      
      private var var_295:String;
      
      private var var_2681:int;
      
      private var var_2418:int;
      
      private var var_1709:int;
      
      private var var_2682:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1377 = param1.readInteger();
         this.var_295 = param1.readString();
         this.var_2681 = param1.readInteger();
         this.var_2418 = param1.readInteger();
         this.var_1709 = param1.readInteger();
         this.var_2682 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_295;
      }
      
      public function get level() : int
      {
         return this.var_1377;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2681;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2418;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1709;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2682;
      }
   }
}
