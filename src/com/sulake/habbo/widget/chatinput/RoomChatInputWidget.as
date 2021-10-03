package com.sulake.habbo.widget.chatinput
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.exceptions.CrashMeError;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetChatInputContentUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetChatInputDisplayEvent;
   import com.sulake.habbo.widget.events.RoomWidgetFloodControlEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomViewUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetChatInputWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetChatMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetRoomObjectMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomChatInputWidget extends RoomWidgetBase
   {
       
      
      private var _visualization:RoomChatInputView;
      
      private var var_1715:String = "";
      
      private var var_730:int = 0;
      
      private var var_1380:Boolean = false;
      
      private var var_729:Timer = null;
      
      private var var_2426:Boolean = false;
      
      private var var_2776:Boolean = false;
      
      private var _component:Component = null;
      
      private var _disposed:Boolean = false;
      
      public function RoomChatInputWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:Component)
      {
         super(param1,param2,param3);
         this._component = param4;
      }
      
      public function get allowPaste() : Boolean
      {
         return this.var_2426;
      }
      
      public function get floodBlocked() : Boolean
      {
         return this.var_1380;
      }
      
      public function sendChat(param1:String, param2:int, param3:String = "") : void
      {
         if(this.var_1380)
         {
            return;
         }
         var _loc4_:RoomWidgetChatMessage = new RoomWidgetChatMessage(RoomWidgetChatMessage.const_731,param1,param2,param3);
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc4_);
         }
      }
      
      override public function dispose() : void
      {
         if(this._visualization != null)
         {
            this._visualization.dispose();
            this._visualization = null;
         }
         this._disposed = true;
         super.dispose();
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_362,this.onRoomObjectSelected);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_141,this.onRoomObjectDeselected);
         param1.addEventListener(RoomWidgetRoomViewUpdateEvent.const_325,this.onRoomViewUpdate);
         param1.addEventListener(RoomWidgetChatInputContentUpdateEvent.const_629,this.onChatInputUpdate);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_146,this.onUserInfo);
         param1.addEventListener(RoomWidgetChatInputDisplayEvent.const_648,this.onSettings);
         param1.addEventListener(RoomWidgetFloodControlEvent.const_736,this.onFloodControl);
         super.registerUpdateEvents(param1);
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_362,this.onRoomObjectSelected);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_141,this.onRoomObjectDeselected);
         param1.removeEventListener(RoomWidgetRoomViewUpdateEvent.const_325,this.onRoomViewUpdate);
         param1.removeEventListener(RoomWidgetChatInputContentUpdateEvent.const_629,this.onChatInputUpdate);
         param1.removeEventListener(RoomWidgetChatInputDisplayEvent.const_648,this.onSettings);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_146,this.onUserInfo);
         param1.removeEventListener(RoomWidgetFloodControlEvent.const_736,this.onFloodControl);
      }
      
      private function onRoomViewUpdate(param1:RoomWidgetRoomViewUpdateEvent) : void
      {
         if(this._visualization == null)
         {
            this._visualization = new RoomChatInputView(this,windowManager,assets,localizations);
         }
         this.refreshWindowPosition();
      }
      
      private function onRoomObjectSelected(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         var _loc2_:RoomWidgetRoomObjectMessage = new RoomWidgetRoomObjectMessage(RoomWidgetRoomObjectMessage.const_375,param1.id,param1.category);
      }
      
      private function onRoomObjectDeselected(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         this.var_1715 = "";
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         this.var_1715 = param1.name;
      }
      
      private function onChatInputUpdate(param1:RoomWidgetChatInputContentUpdateEvent) : void
      {
         var _loc2_:String = "";
         switch(param1.messageType)
         {
            case RoomWidgetChatInputContentUpdateEvent.const_1201:
               _loc2_ = localizations.getKey("widgets.chatinput.mode.whisper",":tell");
               this._visualization.displaySpecialChatMessage(_loc2_,param1.userName);
               break;
            case RoomWidgetChatInputContentUpdateEvent.const_1580:
         }
      }
      
      private function onSettings(param1:RoomWidgetChatInputDisplayEvent) : void
      {
         this.var_2426 = param1.allowPaste;
      }
      
      private function refreshWindowPosition() : void
      {
         if(this._visualization == null)
         {
            return;
         }
         var _loc1_:RoomWidgetChatInputWidgetMessage = new RoomWidgetChatInputWidgetMessage(RoomWidgetChatInputWidgetMessage.const_830,this._visualization.window);
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc1_);
         }
      }
      
      private function onReleaseTimerComplete(param1:TimerEvent) : void
      {
         Logger.log("Releasing flood blocking");
         this.var_1380 = false;
         if(this._visualization != null)
         {
            this._visualization.hideFloodBlocking();
         }
         this.var_729 = null;
      }
      
      private function onReleaseTimerTick(param1:TimerEvent) : void
      {
         if(this._visualization != null)
         {
            this.var_730 = this.var_730 - 1;
            this._visualization.showFloodBlocking(this.var_730);
         }
      }
      
      public function get selectedUserName() : String
      {
         return this.var_1715;
      }
      
      public function triggerManualCrash() : void
      {
         this.var_2776 = true;
         throw new CrashMeError();
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function onFloodControl(param1:RoomWidgetFloodControlEvent) : void
      {
         this.var_1380 = true;
         this.var_730 = param1.seconds;
         Logger.log("Enabling flood blocking for " + this.var_730 + " seconds");
         if(this.var_729)
         {
            this.var_729.reset();
         }
         else
         {
            this.var_729 = new Timer(1000,this.var_730);
            this.var_729.addEventListener(TimerEvent.TIMER,this.onReleaseTimerTick);
            this.var_729.addEventListener(TimerEvent.TIMER_COMPLETE,this.onReleaseTimerComplete);
         }
         this.var_729.start();
         if(this._visualization != null)
         {
            this._visualization.showFloodBlocking(this.var_730);
         }
      }
   }
}
