package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1801:IID;
      
      private var var_673:Boolean;
      
      private var var_1151:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1801 = param1;
         this.var_1151 = new Array();
         this.var_673 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1801;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_673;
      }
      
      public function get receivers() : Array
      {
         return this.var_1151;
      }
      
      public function dispose() : void
      {
         if(!this.var_673)
         {
            this.var_673 = true;
            this.var_1801 = null;
            while(this.var_1151.length > 0)
            {
               this.var_1151.pop();
            }
            this.var_1151 = null;
         }
      }
   }
}
