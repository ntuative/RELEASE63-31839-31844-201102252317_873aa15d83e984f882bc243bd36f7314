package com.sulake.habbo.inventory
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.avatar.IAvatarRenderManager;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.incoming.handshake.AuthenticationOKMessageEvent;
   import com.sulake.habbo.communication.messages.outgoing.inventory.badges.GetBadgePointLimitsComposer;
   import com.sulake.habbo.communication.messages.outgoing.inventory.purse.GetCreditsInfoComposer;
   import com.sulake.habbo.communication.messages.outgoing.users.ScrGetUserInfoMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.inventory.achievements.AchievementsModel;
   import com.sulake.habbo.inventory.badges.BadgesModel;
   import com.sulake.habbo.inventory.effects.EffectsModel;
   import com.sulake.habbo.inventory.enum.InventoryCategory;
   import com.sulake.habbo.inventory.enum.InventorySubCategory;
   import com.sulake.habbo.inventory.events.HabboInventoryEffectsEvent;
   import com.sulake.habbo.inventory.events.HabboInventoryTrackingEvent;
   import com.sulake.habbo.inventory.furni.FurniModel;
   import com.sulake.habbo.inventory.marketplace.MarketplaceModel;
   import com.sulake.habbo.inventory.pets.PetsModel;
   import com.sulake.habbo.inventory.purse.Purse;
   import com.sulake.habbo.inventory.recycler.RecyclerModel;
   import com.sulake.habbo.inventory.trading.TradingModel;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.session.HabboClubLevelEnum;
   import com.sulake.habbo.session.IRoomSession;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.ISessionDataManager;
   import com.sulake.habbo.session.events.RoomSessionEvent;
   import com.sulake.habbo.session.events.RoomSessionPropertyUpdateEvent;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDAvatarRenderManager;
   import com.sulake.iid.IIDHabboCatalog;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import com.sulake.iid.IIDHabboToolbar;
   import com.sulake.iid.IIDRoomEngine;
   import com.sulake.iid.IIDSessionDataManager;
   import flash.events.Event;
   import iid.IIDHabboWindowManager;
   
   public class HabboInventory extends Component implements IHabboInventory
   {
       
      
      private var _communication:IHabboCommunicationManager;
      
      private var _incomingMessages:IncomingMessages;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_409:ISessionDataManager;
      
      private var var_15:IRoomSessionManager;
      
      private var _localization:IHabboLocalizationManager;
      
      private var _config:IHabboConfigurationManager;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var _view:InventoryMainView;
      
      private var var_49:Map;
      
      private var _roomEngine:IRoomEngine;
      
      private var var_1054:IRoomSession;
      
      private var var_845:Array;
      
      private var var_96:Purse;
      
      private var _avatarRenderer:IAvatarRenderManager;
      
      private var _catalog:IHabboCatalog;
      
      private var var_181:IHabboToolbar;
      
      private var var_184:Boolean;
      
      private var var_2192:Boolean;
      
      private const const_1959:int = 500;
      
      public function HabboInventory(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         super(param1,param2,param3);
         this._assetLibrary = param3;
         this.var_96 = new Purse();
         this.var_845 = new Array();
         queueInterface(new IIDHabboCommunicationManager(),this.onCommunicationComponentInit);
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerReady);
         queueInterface(new IIDHabboLocalizationManager(),this.onLocalizationManagerReady);
         queueInterface(new IIDRoomEngine(),this.onRoomEngineReady);
         queueInterface(new IIDSessionDataManager(),this.onSessionDataManagerReady);
         queueInterface(new IIDHabboConfigurationManager(),this.onConfigurationManagerReady);
         queueInterface(new IIDHabboCatalog(),this.onCatalogReady);
         queueInterface(new IIDAvatarRenderManager(),this.onAvatarRenderManagerReady);
         queueInterface(new IIDHabboRoomSessionManager(),this.onRoomSessionManagerReady);
         queueInterface(new IIDHabboToolbar(),this.onToolbarReady);
      }
      
      public function get isVisible() : Boolean
      {
         return this._view.isVisible;
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         super.dispose();
         if(this.var_49)
         {
            _loc1_ = this.var_49.getKeys();
            _loc2_ = 0;
            while(_loc2_ < _loc1_.length)
            {
               _loc3_ = _loc1_[_loc2_];
               _loc4_ = this.var_49.getValue(_loc3_) as IInventoryModel;
               if(_loc4_ != null)
               {
                  _loc4_.dispose();
               }
               _loc2_++;
            }
            this.var_49.dispose();
            this.var_49 = null;
         }
         if(this._view != null)
         {
            this._view.dispose();
            this._view = null;
         }
         this.var_1054 = null;
         this._incomingMessages = null;
         if(this._communication != null)
         {
            release(new IIDHabboCommunicationManager());
            this._communication = null;
         }
         if(this._incomingMessages != null)
         {
            this._incomingMessages.dispose();
         }
         if(this._windowManager != null)
         {
            release(new IIDHabboWindowManager());
            this._windowManager = null;
         }
         if(this._localization != null)
         {
            release(new IIDHabboLocalizationManager());
            this._localization = null;
         }
         if(this._roomEngine != null)
         {
            release(new IIDRoomEngine());
            this._roomEngine = null;
         }
         if(this._config)
         {
            this._config.release(new IIDHabboConfigurationManager());
            this._config = null;
         }
         if(this.var_409)
         {
            this.var_409.release(new IIDSessionDataManager());
            this.var_409 = null;
         }
         if(this._avatarRenderer)
         {
            this._avatarRenderer.release(new IIDAvatarRenderManager());
            this._avatarRenderer = null;
         }
         if(this._catalog)
         {
            this._catalog.release(new IIDHabboCatalog());
            this._catalog = null;
         }
         if(this.var_15 != null)
         {
            this.var_15.events.removeEventListener(RoomSessionEvent.const_90,this.roomSessionEventHandler);
            this.var_15.events.removeEventListener(RoomSessionEvent.const_98,this.roomSessionEventHandler);
            this.var_15.events.removeEventListener(RoomSessionPropertyUpdateEvent.const_556,this.roomSessionEventHandler);
            this.var_15.release(new IIDHabboRoomSessionManager());
            this.var_15 = null;
         }
         if(this.var_181)
         {
            this.var_181.release(new IIDHabboToolbar());
            this.var_181 = null;
         }
      }
      
      public function get communication() : IHabboCommunicationManager
      {
         return this._communication;
      }
      
      public function get furniModel() : FurniModel
      {
         return FurniModel(this.var_49.getValue(InventoryCategory.const_78));
      }
      
      public function get tradingModel() : TradingModel
      {
         return TradingModel(this.var_49.getValue(InventorySubCategory.const_292));
      }
      
      public function get effectsModel() : EffectsModel
      {
         return EffectsModel(this.var_49.getValue(InventoryCategory.const_747));
      }
      
      public function get badgesModel() : BadgesModel
      {
         return BadgesModel(this.var_49.getValue(InventoryCategory.const_274));
      }
      
      public function get achievementsModel() : AchievementsModel
      {
         return AchievementsModel(this.var_49.getValue(InventoryCategory.const_333));
      }
      
      public function get recyclerModel() : RecyclerModel
      {
         return RecyclerModel(this.var_49.getValue(InventorySubCategory.RECYCLER));
      }
      
      public function get petsModel() : PetsModel
      {
         return PetsModel(this.var_49.getValue(InventoryCategory.const_132));
      }
      
      public function get marketplaceModel() : MarketplaceModel
      {
         return this.var_49.getValue(InventoryCategory.const_388) as MarketplaceModel;
      }
      
      public function get sessionData() : ISessionDataManager
      {
         return this.var_409;
      }
      
      public function get roomSession() : IRoomSession
      {
         return this.var_1054;
      }
      
      public function get clubDays() : int
      {
         return this.var_96.clubDays;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_96.clubPeriods;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_96.clubPastPeriods;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_96.clubHasEverBeenMember;
      }
      
      public function get clubLevel() : int
      {
         if(this.clubDays == 0 && this.clubPeriods == 0)
         {
            return HabboClubLevelEnum.const_51;
         }
         if(this.var_96.isVIP)
         {
            return HabboClubLevelEnum.const_42;
         }
         return HabboClubLevelEnum.const_40;
      }
      
      public function get hasRoomSession() : Boolean
      {
         return this.var_1054 != null;
      }
      
      public function getCategoryViewId() : String
      {
         return this._view.getCategoryViewId();
      }
      
      public function getSubCategoryViewId() : String
      {
         return this._view.getSubCategoryViewId();
      }
      
      public function setClubStatus(param1:int, param2:int, param3:Boolean, param4:Boolean) : void
      {
         this.var_96.clubPeriods = param1;
         this.var_96.clubDays = param2;
         this.var_96.clubHasEverBeenMember = param3;
         this.var_96.isVIP = param4;
         this._view.setClubStatus(this.clubPeriods,this.clubDays);
      }
      
      private function onCommunicationComponentInit(param1:IID = null, param2:IUnknown = null) : void
      {
         this._communication = IHabboCommunicationManager(param2);
         this._incomingMessages = new IncomingMessages(this);
         this._communication.addHabboConnectionMessageEvent(new AuthenticationOKMessageEvent(this.onAuthenticationOK));
         this.initInventory();
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._windowManager = IHabboWindowManager(param2);
         this.initInventory();
      }
      
      private function onLocalizationManagerReady(param1:IID, param2:IUnknown) : void
      {
         this._localization = param2 as IHabboLocalizationManager;
         this.initInventory();
      }
      
      private function onRoomEngineReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._roomEngine = IRoomEngine(param2);
         this.initInventory();
      }
      
      private function onSessionDataManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_409 = ISessionDataManager(param2);
         this.initInventory();
      }
      
      private function onConfigurationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._config = param2 as IHabboConfigurationManager;
         this.initInventory();
      }
      
      private function onCatalogReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._catalog = param2 as IHabboCatalog;
         this.initInventory();
      }
      
      private function onAvatarRenderManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._avatarRenderer = param2 as IAvatarRenderManager;
         this.initInventory();
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_15 = IRoomSessionManager(param2);
         this.var_15.events.addEventListener(RoomSessionEvent.const_90,this.roomSessionEventHandler);
         this.var_15.events.addEventListener(RoomSessionEvent.const_98,this.roomSessionEventHandler);
         this.var_15.events.addEventListener(RoomSessionPropertyUpdateEvent.const_556,this.roomSessionEventHandler);
         this.initInventory();
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_181 = IHabboToolbar(param2);
         this.initInventory();
      }
      
      private function onAuthenticationOK(param1:IMessageEvent) : void
      {
         if(!this.var_184)
         {
            this.var_2192 = true;
            return;
         }
         this.requestData();
      }
      
      private function requestData() : void
      {
         this._communication.getHabboMainConnection(null).send(new GetCreditsInfoComposer());
         this._communication.getHabboMainConnection(null).send(new ScrGetUserInfoMessageComposer("habbo_club"));
         this._communication.getHabboMainConnection(null).send(new GetBadgePointLimitsComposer());
      }
      
      private function roomSessionEventHandler(param1:RoomSessionEvent) : void
      {
         if(!this.var_184)
         {
            return;
         }
         switch(param1.type)
         {
            case RoomSessionEvent.const_90:
               this.var_1054 = param1.session;
               this._view.setHabboToolbarIcon();
               this.petsModel.updatePetsAllowed();
               this.furniModel.updateView();
               break;
            case RoomSessionEvent.const_98:
               this.var_1054 = null;
               break;
            case RoomSessionPropertyUpdateEvent.const_556:
               this.petsModel.updatePetsAllowed();
         }
      }
      
      private function initInventory() : void
      {
         if(!this._communication || !this._windowManager || !this._localization || !this._roomEngine || !this.var_409 || !this._config || !this._catalog || !this._avatarRenderer || !this.var_15 || !this.var_181)
         {
            return;
         }
         this._view = new InventoryMainView(this,this._windowManager,this._assetLibrary);
         this._view.setToolbar(this.var_181);
         this.var_49 = new Map();
         var _loc1_:MarketplaceModel = new MarketplaceModel(this,this._windowManager,this._communication,this._assetLibrary,this._roomEngine,this._localization,this._config);
         this.var_49.add(InventoryCategory.const_388,_loc1_);
         var _loc2_:FurniModel = new FurniModel(this,_loc1_,this._windowManager,this._communication,this._assetLibrary,this._roomEngine,this._catalog);
         this.var_49.add(InventoryCategory.const_78,_loc2_);
         var _loc3_:BadgesModel = new BadgesModel(this,this._windowManager,this._communication,this._assetLibrary,this.var_409);
         this.var_49.add(InventoryCategory.const_274,_loc3_);
         var _loc4_:EffectsModel = new EffectsModel(this,this._windowManager,this._communication,this._assetLibrary,this._localization);
         this.var_49.add(InventoryCategory.const_747,_loc4_);
         var _loc5_:AchievementsModel = new AchievementsModel(this,this._windowManager,this._communication,this._assetLibrary,this._localization,this.var_409);
         this.var_49.add(InventoryCategory.const_333,_loc5_);
         var _loc6_:TradingModel = new TradingModel(this,this._windowManager,this._communication,this._assetLibrary,this._roomEngine,this._localization);
         this.var_49.add(InventorySubCategory.const_292,_loc6_);
         var _loc7_:RecyclerModel = new RecyclerModel(this,this._windowManager,this._communication,this._assetLibrary,this._roomEngine,this._localization);
         this.var_49.add(InventorySubCategory.RECYCLER,_loc7_);
         var _loc8_:PetsModel = new PetsModel(this,this._windowManager,this._communication,this._assetLibrary,this._localization,this._roomEngine,this._avatarRenderer,this._catalog);
         this.var_49.add(InventoryCategory.const_132,_loc8_);
         this.var_184 = true;
         if(this.var_2192)
         {
            this.requestData();
         }
      }
      
      public function getCategoryWindowContainer(param1:String) : IWindowContainer
      {
         var _loc2_:IInventoryModel = IInventoryModel(this.var_49.getValue(param1));
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.getWindowContainer();
      }
      
      public function getCategorySubWindowContainer(param1:String) : IWindowContainer
      {
         var _loc2_:IInventoryModel = IInventoryModel(this.var_49.getValue(param1));
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.getWindowContainer();
      }
      
      public function getActivatedAvatarEffects() : Array
      {
         return this.effectsModel.getEffects(1);
      }
      
      public function getAvatarEffects() : Array
      {
         return this.effectsModel.getEffects();
      }
      
      public function setEffectSelected(param1:int) : void
      {
         var _loc2_:EffectsModel = this.effectsModel;
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.useEffect(param1);
         this.notifyChangedEffects();
      }
      
      public function setEffectDeselected(param1:int) : void
      {
         var _loc2_:EffectsModel = this.effectsModel;
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.stopUsingEffect(param1,true);
         this.notifyChangedEffects();
      }
      
      public function deselectAllEffects() : void
      {
         var _loc1_:EffectsModel = this.effectsModel;
         if(_loc1_ == null)
         {
            return;
         }
         _loc1_.stopUsingAllEffects();
         this.notifyChangedEffects();
      }
      
      public function closeView() : void
      {
         this._view.hideInventory();
      }
      
      public function showView() : void
      {
         this._view.showInventory();
      }
      
      public function toggleInventoryPage(param1:String) : void
      {
         this._view.toggleCategoryView(param1,false);
         this.inventoryViewOpened(param1);
         if(!this.isVisible)
         {
            events.dispatchEvent(new Event(HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_CLOSED));
         }
      }
      
      public function toggleInventorySubPage(param1:String) : void
      {
         var _loc3_:* = null;
         this._view.toggleSubCategoryView(param1,false);
         var _loc2_:int = 0;
         while(_loc2_ < this.var_49.length)
         {
            _loc3_ = this.var_49.getWithIndex(_loc2_) as IInventoryModel;
            _loc3_.subCategorySwitch(param1);
            _loc2_++;
         }
         switch(param1)
         {
            case InventorySubCategory.const_292:
               this._view.toggleCategoryView(InventoryCategory.const_78,false);
         }
      }
      
      public function updateSubView() : void
      {
         this._view.updateSubCategoryView();
      }
      
      public function closingInventoryView() : void
      {
         var _loc2_:* = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.var_49.length)
         {
            _loc2_ = this.var_49.getWithIndex(_loc1_) as IInventoryModel;
            _loc2_.closingInventoryView();
            _loc1_++;
         }
         events.dispatchEvent(new Event(HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_CLOSED));
      }
      
      public function inventoryViewOpened(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.var_49.length)
         {
            _loc3_ = this.var_49.getWithIndex(_loc2_) as IInventoryModel;
            _loc3_.categorySwitch(param1);
            _loc2_++;
         }
      }
      
      public function setupTrading(param1:int, param2:String) : void
      {
         var _loc3_:TradingModel = this.tradingModel;
         if(_loc3_)
         {
            _loc3_.requestOpenTrading(param1);
         }
      }
      
      public function get tradingActive() : Boolean
      {
         var _loc1_:TradingModel = this.tradingModel;
         if(!_loc1_)
         {
            return false;
         }
         return _loc1_.running;
      }
      
      public function setupRecycler(param1:Boolean) : void
      {
         if(this.recyclerModel != null)
         {
            if(param1)
            {
               this.recyclerModel.startRecycler();
            }
            else
            {
               this.recyclerModel.stopRecycler();
            }
         }
      }
      
      public function requestSelectedFurniToRecycler() : int
      {
         if(this.recyclerModel != null)
         {
            return this.recyclerModel.lockSelectedFurni();
         }
         return 0;
      }
      
      public function returnInventoryFurniFromRecycler(param1:int) : Boolean
      {
         if(this.recyclerModel != null)
         {
            return this.recyclerModel.releaseFurni(param1);
         }
         return false;
      }
      
      public function canUserOfferToTrade() : Boolean
      {
         var _loc1_:TradingModel = this.tradingModel;
         return !!_loc1_ ? Boolean(_loc1_.ownUserCanTrade) : false;
      }
      
      public function setInventoryCategoryInit(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         if(param2)
         {
            if(this.var_845.indexOf(param1) == -1)
            {
               this.var_845.push(param1);
            }
         }
         else
         {
            _loc3_ = this.var_845.indexOf(param1);
            if(_loc3_ >= 0)
            {
               this.var_845.splice(_loc3_,1);
            }
         }
      }
      
      public function isInventoryCategoryInit(param1:String) : Boolean
      {
         if(this.var_845.indexOf(param1) >= 0)
         {
            return true;
         }
         return false;
      }
      
      public function checkCategoryInitilization(param1:String) : Boolean
      {
         if(this.isInventoryCategoryInit(param1))
         {
            return true;
         }
         this.requestInventoryCategoryInit(param1);
         return false;
      }
      
      public function requestInventoryCategoryInit(param1:String) : void
      {
         var _loc2_:IInventoryModel = this.var_49.getValue(param1) as IInventoryModel;
         if(_loc2_ != null)
         {
            _loc2_.requestInitialization(this.const_1959);
         }
      }
      
      public function notifyChangedEffects() : void
      {
         events.dispatchEvent(new HabboInventoryEffectsEvent(HabboInventoryEffectsEvent.const_784));
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return this._localization;
      }
   }
}
