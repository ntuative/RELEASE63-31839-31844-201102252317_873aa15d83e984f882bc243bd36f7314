package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1314:IID;
      
      private var var_1610:String;
      
      private var var_106:IUnknown;
      
      private var var_701:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1314 = param1;
         this.var_1610 = getQualifiedClassName(this.var_1314);
         this.var_106 = param2;
         this.var_701 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1314;
      }
      
      public function get iis() : String
      {
         return this.var_1610;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_106;
      }
      
      public function get references() : uint
      {
         return this.var_701;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_106 == null;
      }
      
      public function dispose() : void
      {
         this.var_1314 = null;
         this.var_1610 = null;
         this.var_106 = null;
         this.var_701 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_701;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_701) : uint(0);
      }
   }
}
