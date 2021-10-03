package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1047:int;
      
      private var var_2256:String;
      
      private var var_2257:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1047 = param1.readInteger();
         this.var_2256 = param1.readString();
         this.var_2257 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_1047;
      }
      
      public function get requesterName() : String
      {
         return this.var_2256;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2257;
      }
   }
}
