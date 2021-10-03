package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_170:int = 0;
       
      
      private var var_2439:int = 0;
      
      private var var_1476:Dictionary;
      
      private var var_1921:int = 0;
      
      private var var_1920:int = 0;
      
      private var var_2145:Boolean = false;
      
      private var var_2146:int = 0;
      
      private var var_2141:int = 0;
      
      public function Purse()
      {
         this.var_1476 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2439;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2439 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1921;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1921 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1920;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1920 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1921 > 0 || this.var_1920 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2145;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2145 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2146;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2146 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2141;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2141 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1476;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1476 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1476[param1];
      }
   }
}
