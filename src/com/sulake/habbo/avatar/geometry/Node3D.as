package com.sulake.habbo.avatar.geometry
{
   public class Node3D
   {
       
      
      private var var_979:Vector3D;
      
      private var var_1922:Vector3D;
      
      private var var_2710:Boolean = false;
      
      public function Node3D(param1:Number, param2:Number, param3:Number)
      {
         this.var_1922 = new Vector3D();
         super();
         this.var_979 = new Vector3D(param1,param2,param3);
         if(param1 != 0 || param2 != 0 || param3 != 0)
         {
            this.var_2710 = true;
         }
      }
      
      public function get location() : Vector3D
      {
         return this.var_979;
      }
      
      public function get transformedLocation() : Vector3D
      {
         return this.var_1922;
      }
      
      public function applyTransform(param1:Matrix4x4) : void
      {
         if(this.var_2710)
         {
            this.var_1922 = param1.vectorMultiplication(this.var_979);
         }
      }
   }
}
