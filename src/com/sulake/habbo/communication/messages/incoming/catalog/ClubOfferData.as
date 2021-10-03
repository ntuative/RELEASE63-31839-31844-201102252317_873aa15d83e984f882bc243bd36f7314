package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1659:String;
      
      private var var_1702:int;
      
      private var var_2229:Boolean;
      
      private var var_2231:Boolean;
      
      private var var_2232:int;
      
      private var var_2230:int;
      
      private var var_2226:int;
      
      private var var_2228:int;
      
      private var var_2227:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1659 = param1.readString();
         this.var_1702 = param1.readInteger();
         this.var_2229 = param1.readBoolean();
         this.var_2231 = param1.readBoolean();
         this.var_2232 = param1.readInteger();
         this.var_2230 = param1.readInteger();
         this.var_2226 = param1.readInteger();
         this.var_2228 = param1.readInteger();
         this.var_2227 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1659;
      }
      
      public function get price() : int
      {
         return this.var_1702;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2229;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2231;
      }
      
      public function get periods() : int
      {
         return this.var_2232;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2230;
      }
      
      public function get year() : int
      {
         return this.var_2226;
      }
      
      public function get month() : int
      {
         return this.var_2228;
      }
      
      public function get day() : int
      {
         return this.var_2227;
      }
   }
}
