package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1921:int = 0;
      
      private var var_1920:int = 0;
      
      private var var_2659:int = 0;
      
      private var var_2658:Boolean = false;
      
      private var var_2145:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1921 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1920 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2659 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2658 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2145 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1921;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1920;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2659;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2658;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2145;
      }
   }
}
