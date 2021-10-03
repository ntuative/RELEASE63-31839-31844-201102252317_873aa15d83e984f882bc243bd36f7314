package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1662:int;
      
      private var var_1377:int;
      
      private var var_2510:int;
      
      private var var_2410:int;
      
      private var var_2512:int;
      
      private var _energy:int;
      
      private var var_2513:int;
      
      private var _nutrition:int;
      
      private var var_2511:int;
      
      private var var_2109:int;
      
      private var _ownerName:String;
      
      private var var_2411:int;
      
      private var var_463:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1662;
      }
      
      public function get level() : int
      {
         return this.var_1377;
      }
      
      public function get levelMax() : int
      {
         return this.var_2510;
      }
      
      public function get experience() : int
      {
         return this.var_2410;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2512;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2513;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2511;
      }
      
      public function get ownerId() : int
      {
         return this.var_2109;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2411;
      }
      
      public function get age() : int
      {
         return this.var_463;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1662 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1377 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2510 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2410 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2512 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2513 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2511 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2109 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2411 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_463 = param1;
      }
   }
}
