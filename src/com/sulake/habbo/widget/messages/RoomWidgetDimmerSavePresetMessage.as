package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_793:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2306:int;
      
      private var var_2308:int;
      
      private var _color:uint;
      
      private var var_1167:int;
      
      private var var_2307:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_793);
         this.var_2306 = param1;
         this.var_2308 = param2;
         this._color = param3;
         this.var_1167 = param4;
         this.var_2307 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2306;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2308;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1167;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2307;
      }
   }
}
