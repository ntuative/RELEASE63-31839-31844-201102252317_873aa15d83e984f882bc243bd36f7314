package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_2068:int;
      
      private var var_2065:int;
      
      private var var_2066:String;
      
      private var var_2067:String;
      
      private var var_2069:int = 0;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this.var_2068 = param1;
         this.var_2065 = param2;
         this.var_2066 = param3;
         this.var_2067 = param4;
      }
      
      public function get id() : int
      {
         return this.var_2068;
      }
      
      public function get length() : int
      {
         return this.var_2065;
      }
      
      public function get name() : String
      {
         return this.var_2066;
      }
      
      public function get creator() : String
      {
         return this.var_2067;
      }
      
      public function get startPlayHeadPos() : int
      {
         return this.var_2069;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         this.var_2069 = param1;
      }
   }
}
