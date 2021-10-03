package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_685:String = "RWUAM_WHISPER_USER";
      
      public static const const_730:String = "RWUAM_IGNORE_USER";
      
      public static const const_729:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_435:String = "RWUAM_KICK_USER";
      
      public static const const_744:String = "RWUAM_BAN_USER";
      
      public static const const_861:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_626:String = "RWUAM_RESPECT_USER";
      
      public static const const_770:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_863:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_638:String = "RWUAM_START_TRADING";
      
      public static const const_619:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_534:String = "RWUAM_KICK_BOT";
      
      public static const const_657:String = "RWUAM_REPORT";
      
      public static const const_447:String = "RWUAM_PICKUP_PET";
      
      public static const const_1509:String = "RWUAM_TRAIN_PET";
      
      public static const const_537:String = " RWUAM_RESPECT_PET";
      
      public static const const_382:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_795:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
