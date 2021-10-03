package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_725:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_617:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_725);
         this.var_617 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_617;
      }
   }
}
