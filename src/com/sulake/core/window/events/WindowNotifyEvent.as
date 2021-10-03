package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1418:String = "WN_CRETAE";
      
      public static const const_1471:String = "WN_CREATED";
      
      public static const const_1173:String = "WN_DESTROY";
      
      public static const const_1022:String = "WN_DESTROYED";
      
      public static const const_1091:String = "WN_OPEN";
      
      public static const const_1038:String = "WN_OPENED";
      
      public static const const_1102:String = "WN_CLOSE";
      
      public static const const_1125:String = "WN_CLOSED";
      
      public static const const_987:String = "WN_FOCUS";
      
      public static const const_1192:String = "WN_FOCUSED";
      
      public static const const_1073:String = "WN_UNFOCUS";
      
      public static const const_1095:String = "WN_UNFOCUSED";
      
      public static const const_1175:String = "WN_ACTIVATE";
      
      public static const const_370:String = "WN_ACTVATED";
      
      public static const const_1016:String = "WN_DEACTIVATE";
      
      public static const const_1078:String = "WN_DEACTIVATED";
      
      public static const const_440:String = "WN_SELECT";
      
      public static const const_360:String = "WN_SELECTED";
      
      public static const const_860:String = "WN_UNSELECT";
      
      public static const const_789:String = "WN_UNSELECTED";
      
      public static const const_1020:String = "WN_LOCK";
      
      public static const const_1151:String = "WN_LOCKED";
      
      public static const const_1025:String = "WN_UNLOCK";
      
      public static const const_1170:String = "WN_UNLOCKED";
      
      public static const const_975:String = "WN_ENABLE";
      
      public static const const_620:String = "WN_ENABLED";
      
      public static const const_1045:String = "WN_DISABLE";
      
      public static const const_787:String = "WN_DISABLED";
      
      public static const const_703:String = "WN_RESIZE";
      
      public static const const_188:String = "WN_RESIZED";
      
      public static const const_1161:String = "WN_RELOCATE";
      
      public static const const_566:String = "WN_RELOCATED";
      
      public static const const_1152:String = "WN_MINIMIZE";
      
      public static const const_1140:String = "WN_MINIMIZED";
      
      public static const const_1114:String = "WN_MAXIMIZE";
      
      public static const const_1028:String = "WN_MAXIMIZED";
      
      public static const const_1203:String = "WN_RESTORE";
      
      public static const const_1186:String = "WN_RESTORED";
      
      public static const const_1761:String = "WN_ARRANGE";
      
      public static const const_1763:String = "WN_ARRANGED";
      
      public static const const_1754:String = "WN_UPDATE";
      
      public static const const_1793:String = "WN_UPDATED";
      
      public static const const_350:String = "WN_CHILD_ADDED";
      
      public static const const_612:String = "WN_CHILD_REMOVED";
      
      public static const const_291:String = "WN_CHILD_RESIZED";
      
      public static const const_294:String = "WN_CHILD_RELOCATED";
      
      public static const const_238:String = "WN_CHILD_ACTIVATED";
      
      public static const const_498:String = "WN_PARENT_ADDED";
      
      public static const const_1090:String = "WN_PARENT_REMOVED";
      
      public static const const_515:String = "WN_PARENT_RESIZED";
      
      public static const const_1213:String = "WN_PARENT_RELOCATED";
      
      public static const const_637:String = "WN_PARENT_ACTIVATED";
      
      public static const const_458:String = "WN_STATE_UPDATED";
      
      public static const const_483:String = "WN_STYLE_UPDATED";
      
      public static const const_548:String = "WN_PARAM_UPDATED";
      
      public static const const_1774:String = "";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1976,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}
