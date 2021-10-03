package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2705:int;
      
      private var var_2706:int;
      
      private var var_736:Boolean;
      
      private var var_2702:int;
      
      private var var_2704:int;
      
      private var var_2703:int;
      
      private var var_2701:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2705 = param1.readInteger();
         this.var_2706 = param1.readInteger();
         this.var_736 = param1.readBoolean();
         this.var_2702 = param1.readInteger();
         this.var_2704 = param1.readInteger();
         this.var_2703 = param1.readInteger();
         this.var_2701 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2705;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2706;
      }
      
      public function get online() : Boolean
      {
         return this.var_736;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2702;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2704;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2703;
      }
      
      public function get banCount() : int
      {
         return this.var_2701;
      }
   }
}
