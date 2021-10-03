package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_1626:String = "WE_CREATE";
      
      public static const const_1638:String = "WE_CREATED";
      
      public static const const_1379:String = "WE_DESTROY";
      
      public static const const_311:String = "WE_DESTROYED";
      
      public static const const_1410:String = "WE_OPEN";
      
      public static const const_1652:String = "WE_OPENED";
      
      public static const const_1514:String = "WE_CLOSE";
      
      public static const const_1534:String = "WE_CLOSED";
      
      public static const const_1554:String = "WE_FOCUS";
      
      public static const const_312:String = "WE_FOCUSED";
      
      public static const const_1649:String = "WE_UNFOCUS";
      
      public static const const_1499:String = "WE_UNFOCUSED";
      
      public static const const_1606:String = "WE_ACTIVATE";
      
      public static const const_1375:String = "WE_ACTIVATED";
      
      public static const const_1656:String = "WE_DEACTIVATE";
      
      public static const const_672:String = "WE_DEACTIVATED";
      
      public static const const_443:String = "WE_SELECT";
      
      public static const const_57:String = "WE_SELECTED";
      
      public static const const_876:String = "WE_UNSELECT";
      
      public static const const_895:String = "WE_UNSELECTED";
      
      public static const const_1919:String = "WE_ATTACH";
      
      public static const const_1835:String = "WE_ATTACHED";
      
      public static const const_1744:String = "WE_DETACH";
      
      public static const const_1742:String = "WE_DETACHED";
      
      public static const const_1618:String = "WE_LOCK";
      
      public static const const_1371:String = "WE_LOCKED";
      
      public static const const_1653:String = "WE_UNLOCK";
      
      public static const const_1603:String = "WE_UNLOCKED";
      
      public static const const_812:String = "WE_ENABLE";
      
      public static const const_278:String = "WE_ENABLED";
      
      public static const const_694:String = "WE_DISABLE";
      
      public static const const_235:String = "WE_DISABLED";
      
      public static const const_1519:String = "WE_RELOCATE";
      
      public static const const_335:String = "WE_RELOCATED";
      
      public static const const_1372:String = "WE_RESIZE";
      
      public static const const_48:String = "WE_RESIZED";
      
      public static const const_1455:String = "WE_MINIMIZE";
      
      public static const const_1454:String = "WE_MINIMIZED";
      
      public static const const_1615:String = "WE_MAXIMIZE";
      
      public static const const_1526:String = "WE_MAXIMIZED";
      
      public static const const_1592:String = "WE_RESTORE";
      
      public static const const_1435:String = "WE_RESTORED";
      
      public static const const_1727:String = "WE_ARRANGE";
      
      public static const const_1781:String = "WE_ARRANGED";
      
      public static const const_103:String = "WE_UPDATE";
      
      public static const const_1890:String = "WE_UPDATED";
      
      public static const const_1938:String = "WE_CHILD_RELOCATE";
      
      public static const const_423:String = "WE_CHILD_RELOCATED";
      
      public static const const_1833:String = "WE_CHILD_RESIZE";
      
      public static const const_304:String = "WE_CHILD_RESIZED";
      
      public static const const_1777:String = "WE_CHILD_REMOVE";
      
      public static const const_445:String = "WE_CHILD_REMOVED";
      
      public static const const_1868:String = "WE_PARENT_RELOCATE";
      
      public static const const_1921:String = "WE_PARENT_RELOCATED";
      
      public static const const_1753:String = "WE_PARENT_RESIZE";
      
      public static const const_1515:String = "WE_PARENT_RESIZED";
      
      public static const const_172:String = "WE_OK";
      
      public static const const_719:String = "WE_CANCEL";
      
      public static const const_107:String = "WE_CHANGE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_502:String = "WE_SCROLL";
      
      public static const const_162:String = "";
       
      
      protected var _type:String = "";
      
      protected var _window:IWindow;
      
      protected var var_1976:IWindow;
      
      protected var var_1975:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         this._type = param1;
         this._window = param2;
         this.var_1976 = param3;
         this.var_1975 = false;
         super(param1,param4,param5);
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      override public function get type() : String
      {
         return this._type;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_1976;
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(this._type,this.window,this.related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            this.var_1975 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1975;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
   }
}
