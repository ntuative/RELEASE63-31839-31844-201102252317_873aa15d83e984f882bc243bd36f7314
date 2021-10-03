package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_918:int;
      
      private var var_736:Boolean;
      
      private var var_1503:Boolean;
      
      private var var_589:String;
      
      private var var_1288:int;
      
      private var var_1501:String;
      
      private var var_1502:String;
      
      private var var_1500:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_918 = param1.readInteger();
         this.var_736 = param1.readBoolean();
         this.var_1503 = param1.readBoolean();
         this.var_589 = param1.readString();
         this.var_1288 = param1.readInteger();
         this.var_1501 = param1.readString();
         this.var_1502 = param1.readString();
         this.var_1500 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_918;
      }
      
      public function get online() : Boolean
      {
         return this.var_736;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1503;
      }
      
      public function get figure() : String
      {
         return this.var_589;
      }
      
      public function get categoryId() : int
      {
         return this.var_1288;
      }
      
      public function get motto() : String
      {
         return this.var_1501;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1502;
      }
      
      public function get realName() : String
      {
         return this.var_1500;
      }
   }
}
