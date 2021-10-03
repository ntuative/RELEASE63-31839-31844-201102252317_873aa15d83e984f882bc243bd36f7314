package com.sulake.habbo.help
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.help.cfh.data.CallForHelpData;
   import com.sulake.habbo.help.cfh.data.UserRegistry;
   import com.sulake.habbo.help.enum.HabboHelpViewEnum;
   import com.sulake.habbo.help.help.HelpUI;
   import com.sulake.habbo.help.help.data.FaqIndex;
   import com.sulake.habbo.help.hotelmerge.HotelMergeUI;
   import com.sulake.habbo.help.register.RegistrationUI;
   import com.sulake.habbo.help.tutorial.TutorialUI;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.ISessionDataManager;
   import com.sulake.habbo.session.events.RoomSessionEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import com.sulake.iid.IIDHabboToolbar;
   import com.sulake.iid.IIDSessionDataManager;
   import flash.utils.Dictionary;
   import iid.IIDHabboWindowManager;
   
   public class HabboHelp extends Component implements IHabboHelp
   {
       
      
      private var var_181:IHabboToolbar;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_291:IHabboCommunicationManager;
      
      private var var_927:IHabboLocalizationManager;
      
      private var var_746:IHabboConfigurationManager;
      
      private var var_409:ISessionDataManager;
      
      private var var_1133:FaqIndex;
      
      private var _incomingMessages:IncomingMessages;
      
      private var var_64:HelpUI;
      
      private var var_102:TutorialUI;
      
      private var var_745:HotelMergeUI;
      
      private var var_926:RegistrationUI;
      
      private var var_1414:CallForHelpData;
      
      private var var_2539:UserRegistry;
      
      private var var_2538:String = "";
      
      private var var_1776:WelcomeScreenController;
      
      public function HabboHelp(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         this.var_1414 = new CallForHelpData();
         this.var_2539 = new UserRegistry();
         super(param1,param2,param3);
         this._assetLibrary = param3;
         this.var_1133 = new FaqIndex();
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerReady);
         queueInterface(new IIDSessionDataManager(),this.onSessionDataManagerReady);
      }
      
      public function set ownUserName(param1:String) : void
      {
         this.var_2538 = param1;
      }
      
      public function get ownUserName() : String
      {
         return this.var_2538;
      }
      
      public function get callForHelpData() : CallForHelpData
      {
         return this.var_1414;
      }
      
      public function get userRegistry() : UserRegistry
      {
         return this.var_2539;
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return this.var_927;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return this._windowManager;
      }
      
      public function get toolbar() : IHabboToolbar
      {
         return this.var_181;
      }
      
      public function get sessionDataManager() : ISessionDataManager
      {
         return this.var_409;
      }
      
      public function get tutorialUI() : TutorialUI
      {
         return this.var_102;
      }
      
      public function get hotelMergeUI() : HotelMergeUI
      {
         return this.var_745;
      }
      
      public function hasChangedName() : Boolean
      {
         if(this.var_102)
         {
            return this.var_102.hasChangedName;
         }
         return true;
      }
      
      override public function dispose() : void
      {
         if(this.var_64 != null)
         {
            this.var_64.dispose();
            this.var_64 = null;
         }
         if(this.var_102 != null)
         {
            this.var_102.dispose();
            this.var_102 = null;
         }
         if(this.var_745)
         {
            this.var_745.dispose();
            this.var_745 = null;
         }
         if(this.var_926 != null)
         {
            this.var_926.dispose();
            this.var_926 = null;
         }
         if(this.var_1133 != null)
         {
            this.var_1133.dispose();
            this.var_1133 = null;
         }
         this._incomingMessages = null;
         if(this.var_181)
         {
            this.var_181.release(new IIDHabboToolbar());
            this.var_181 = null;
         }
         if(this.var_927)
         {
            this.var_927.release(new IIDHabboLocalizationManager());
            this.var_927 = null;
         }
         if(this.var_291)
         {
            this.var_291.release(new IIDHabboCommunicationManager());
            this.var_291 = null;
         }
         if(this.var_746)
         {
            this.var_746.release(new IIDHabboConfigurationManager());
            this.var_746 = null;
         }
         if(this._windowManager)
         {
            this._windowManager.release(new IIDHabboWindowManager());
            this._windowManager = null;
         }
         if(this.var_409 != null)
         {
            this.var_409.release(new IIDSessionDataManager());
            this.var_409 = null;
         }
         super.dispose();
      }
      
      public function showUI(param1:String = null) : void
      {
         if(this.var_64 != null)
         {
            this.var_64.showUI(param1);
         }
      }
      
      public function hideUI() : void
      {
         if(this.var_64 != null)
         {
            this.var_64.hideUI();
         }
      }
      
      public function tellUI(param1:String, param2:* = null) : void
      {
         if(this.var_64 != null)
         {
            this.var_64.tellUI(param1,param2);
         }
      }
      
      public function enableCallForGuideBotUI() : void
      {
         if(this.var_64 != null)
         {
            this.var_64.updateCallForGuideBotUI(true);
         }
      }
      
      public function disableCallForGuideBotUI() : void
      {
         if(this.var_64 != null)
         {
            this.var_64.updateCallForGuideBotUI(false);
         }
      }
      
      public function getFaq() : FaqIndex
      {
         return this.var_1133;
      }
      
      public function sendMessage(param1:IMessageComposer) : void
      {
         if(this.var_291 != null && param1 != null)
         {
            this.var_291.getHabboMainConnection(null).send(param1);
         }
      }
      
      public function getConfigurationKey(param1:String, param2:String = null, param3:Dictionary = null) : String
      {
         if(this.var_746 == null)
         {
            return param1;
         }
         return this.var_746.getKey(param1,param2,param3);
      }
      
      public function showCallForHelpReply(param1:String) : void
      {
         if(this.var_64 != null)
         {
            this.var_64.showCallForHelpReply(param1);
         }
      }
      
      public function showCallForHelpResult(param1:String) : void
      {
         if(this.var_64 != null)
         {
            this.var_64.showCallForHelpResult(param1);
         }
      }
      
      public function reportUser(param1:int, param2:String) : void
      {
         this.var_1414.reportedUserId = param1;
         this.var_1414.reportedUserName = param2;
         this.var_64.showUI(HabboHelpViewEnum.const_376);
      }
      
      private function toggleHelpUI() : void
      {
         if(this.var_64 == null)
         {
            if(!this.createHelpUI())
            {
               return;
            }
         }
         this.var_64.toggleUI();
      }
      
      private function createHelpUI() : Boolean
      {
         if(this.var_64 == null && this._assetLibrary != null && this._windowManager != null)
         {
            this.var_64 = new HelpUI(this,this._assetLibrary,this._windowManager,this.var_927,this.var_181);
         }
         return this.var_64 != null;
      }
      
      private function createTutorialUI() : Boolean
      {
         var _loc1_:* = false;
         if(this.var_102 == null && this._assetLibrary != null && this._windowManager != null)
         {
            _loc1_ = this.getConfigurationKey("avatar.widget.enabled","0") == "0";
            this.var_102 = new TutorialUI(this,_loc1_);
         }
         return this.var_102 != null;
      }
      
      public function removeTutorialUI() : void
      {
         if(this.var_102 != null)
         {
            this.var_102.dispose();
            this.var_102 = null;
         }
      }
      
      public function initHotelMergeUI() : void
      {
         if(!this.var_745)
         {
            this.var_745 = new HotelMergeUI(this);
         }
         this.var_745.startNameChange();
      }
      
      public function initRegistrationUI() : void
      {
         if(!this.var_926)
         {
            this.var_926 = new RegistrationUI(this);
         }
         this.var_926.showRegistrationView();
      }
      
      public function updateTutorial(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         if(param1 && param2 && param3)
         {
            this.removeTutorialUI();
            return;
         }
         if(this.var_102 == null)
         {
            if(!this.createTutorialUI())
            {
               return;
            }
         }
         this.var_102.update(param1,param2,param3);
      }
      
      public function startNameChange() : void
      {
         if(this.var_102)
         {
            this.var_102.showView(TutorialUI.const_316);
         }
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._windowManager = IHabboWindowManager(param2);
         queueInterface(new IIDHabboCommunicationManager(),this.onCommunicationManagerReady);
      }
      
      private function onCommunicationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_291 = IHabboCommunicationManager(param2);
         this._incomingMessages = new IncomingMessages(this,this.var_291);
         queueInterface(new IIDHabboToolbar(),this.onToolbarReady);
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_181 = IHabboToolbar(param2);
         queueInterface(new IIDHabboLocalizationManager(),this.onLocalizationManagerReady);
      }
      
      private function onLocalizationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_927 = IHabboLocalizationManager(param2);
         queueInterface(new IIDHabboConfigurationManager(),this.onConfigurationManagerReady);
      }
      
      private function onConfigurationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_746 = IHabboConfigurationManager(param2);
         queueInterface(new IIDHabboRoomSessionManager(),this.onRoomSessionManagerReady);
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:IRoomSessionManager = IRoomSessionManager(param2);
         _loc3_.events.addEventListener(RoomSessionEvent.const_90,this.onRoomSessionEvent);
         _loc3_.events.addEventListener(RoomSessionEvent.const_98,this.onRoomSessionEvent);
         this.var_181.events.addEventListener(HabboToolbarEvent.const_68,this.onHabboToolbarEvent);
         this.var_181.events.addEventListener(HabboToolbarEvent.const_38,this.onHabboToolbarEvent);
         this.createHelpUI();
         this.setHabboToolbarIcon();
      }
      
      private function onSessionDataManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this.var_409 = param2 as ISessionDataManager;
      }
      
      private function onRoomSessionEvent(param1:RoomSessionEvent) : void
      {
         switch(param1.type)
         {
            case RoomSessionEvent.const_90:
               if(this.var_64 != null)
               {
                  this.var_64.setRoomSessionStatus(true);
               }
               if(this.var_102 != null)
               {
                  this.var_102.setRoomSessionStatus(true);
               }
               this.showWelcomeScreen(true);
               break;
            case RoomSessionEvent.const_98:
               if(this.var_64 != null)
               {
                  this.var_64.setRoomSessionStatus(false);
               }
               if(this.var_102 != null)
               {
                  this.var_102.setRoomSessionStatus(false);
               }
               this.userRegistry.unregisterRoom();
               this.showWelcomeScreen(false);
         }
      }
      
      private function showWelcomeScreen(param1:Boolean) : void
      {
         if(!this.var_1776)
         {
            this.var_1776 = new WelcomeScreenController(this,this._windowManager,this.var_746);
         }
         this.var_1776.showWelcomeScreen(param1);
      }
      
      private function setHabboToolbarIcon() : void
      {
         if(this.var_181 != null)
         {
            this.var_181.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_120,HabboToolbarIconEnum.HELP));
         }
      }
      
      private function onHabboToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.type == HabboToolbarEvent.const_68)
         {
            this.setHabboToolbarIcon();
            return;
         }
         if(param1.type == HabboToolbarEvent.const_38)
         {
            if(param1.iconId == HabboToolbarIconEnum.HELP)
            {
               this.toggleHelpUI();
               return;
            }
         }
      }
   }
}
