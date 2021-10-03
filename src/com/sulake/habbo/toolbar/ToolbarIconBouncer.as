package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2679:Number;
      
      private var var_1908:Number;
      
      private var var_978:Number;
      
      private var var_979:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2679 = param1;
         this.var_1908 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_978 = param1;
         this.var_979 = 0;
      }
      
      public function update() : void
      {
         this.var_978 += this.var_1908;
         this.var_979 += this.var_978;
         if(this.var_979 > 0)
         {
            this.var_979 = 0;
            this.var_978 = this.var_2679 * -1 * this.var_978;
         }
      }
      
      public function get location() : Number
      {
         return this.var_979;
      }
   }
}
