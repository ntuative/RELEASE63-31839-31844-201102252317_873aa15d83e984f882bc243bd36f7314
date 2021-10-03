package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var _id:int;
      
      private var var_2351:String = "";
      
      private var var_918:String;
      
      private var var_1449:Boolean;
      
      private var var_2348:Boolean = true;
      
      private var var_2349:int;
      
      private var var_2350:String;
      
      public function Breed(param1:XML)
      {
         super(param1);
         this._id = parseInt(param1.@id);
         this.var_2349 = parseInt(param1.@pattern);
         this.var_918 = String(param1.@gender);
         this.var_1449 = Boolean(parseInt(param1.@colorable));
         this.var_2351 = String(param1.@localizationKey);
         if(param1.@sellable && param1.@sellable == "0")
         {
            this.var_2348 = false;
         }
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get gender() : String
      {
         return this.var_918;
      }
      
      public function get isColorable() : Boolean
      {
         return this.var_1449;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2348;
      }
      
      public function get patternId() : int
      {
         return this.var_2349;
      }
      
      public function get avatarFigureString() : String
      {
         return this.var_2350;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         this.var_2350 = param1;
      }
      
      public function get localizationKey() : String
      {
         return this.var_2351;
      }
   }
}
