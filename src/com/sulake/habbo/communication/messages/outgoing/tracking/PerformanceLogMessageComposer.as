package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2014:int = 0;
      
      private var var_1427:String = "";
      
      private var var_1807:String = "";
      
      private var var_2501:String = "";
      
      private var var_2499:String = "";
      
      private var var_1762:int = 0;
      
      private var var_2500:int = 0;
      
      private var var_2498:int = 0;
      
      private var var_1425:int = 0;
      
      private var var_2502:int = 0;
      
      private var var_1428:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2014 = param1;
         this.var_1427 = param2;
         this.var_1807 = param3;
         this.var_2501 = param4;
         this.var_2499 = param5;
         if(param6)
         {
            this.var_1762 = 1;
         }
         else
         {
            this.var_1762 = 0;
         }
         this.var_2500 = param7;
         this.var_2498 = param8;
         this.var_1425 = param9;
         this.var_2502 = param10;
         this.var_1428 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2014,this.var_1427,this.var_1807,this.var_2501,this.var_2499,this.var_1762,this.var_2500,this.var_2498,this.var_1425,this.var_2502,this.var_1428];
      }
   }
}
