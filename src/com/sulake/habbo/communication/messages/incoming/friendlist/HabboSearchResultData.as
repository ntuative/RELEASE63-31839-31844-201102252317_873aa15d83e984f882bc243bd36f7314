package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2022:int;
      
      private var var_1742:String;
      
      private var var_2017:String;
      
      private var var_2020:Boolean;
      
      private var var_2018:Boolean;
      
      private var var_2016:int;
      
      private var var_2021:String;
      
      private var var_2019:String;
      
      private var var_1500:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2022 = param1.readInteger();
         this.var_1742 = param1.readString();
         this.var_2017 = param1.readString();
         this.var_2020 = param1.readBoolean();
         this.var_2018 = param1.readBoolean();
         param1.readString();
         this.var_2016 = param1.readInteger();
         this.var_2021 = param1.readString();
         this.var_2019 = param1.readString();
         this.var_1500 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2022;
      }
      
      public function get avatarName() : String
      {
         return this.var_1742;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2017;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2020;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2018;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2016;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2021;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2019;
      }
      
      public function get realName() : String
      {
         return this.var_1500;
      }
   }
}
