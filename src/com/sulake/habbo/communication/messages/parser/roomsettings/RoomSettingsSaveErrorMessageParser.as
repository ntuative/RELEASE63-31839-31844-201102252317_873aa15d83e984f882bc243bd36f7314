package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1872:int = 1;
      
      public static const const_1843:int = 2;
      
      public static const const_1733:int = 3;
      
      public static const const_1776:int = 4;
      
      public static const const_1528:int = 5;
      
      public static const const_1912:int = 6;
      
      public static const const_1374:int = 7;
      
      public static const const_1493:int = 8;
      
      public static const const_1859:int = 9;
      
      public static const const_1404:int = 10;
      
      public static const const_1467:int = 11;
      
      public static const const_1552:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1596:int;
      
      private var var_1330:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1596 = param1.readInteger();
         this.var_1330 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1596;
      }
      
      public function get info() : String
      {
         return this.var_1330;
      }
   }
}
