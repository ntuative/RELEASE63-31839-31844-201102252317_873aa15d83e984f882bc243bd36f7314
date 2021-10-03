package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_407:int = 1;
      
      public static const const_250:int = 2;
      
      public static const const_307:int = 3;
      
      public static const const_396:int = 4;
      
      public static const const_237:int = 5;
      
      public static const const_341:int = 1;
      
      public static const const_681:int = 2;
      
      public static const const_839:int = 3;
      
      public static const const_718:int = 4;
      
      public static const const_240:int = 5;
      
      public static const const_625:int = 6;
      
      public static const const_853:int = 7;
      
      public static const const_246:int = 8;
      
      public static const const_386:int = 9;
      
      public static const const_1867:int = 10;
      
      public static const const_891:int = 11;
      
      public static const const_579:int = 12;
       
      
      private var var_408:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_408 = new Array();
         this.var_408.push(new Tab(this._navigator,const_407,const_579,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_469));
         this.var_408.push(new Tab(this._navigator,const_250,const_341,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_469));
         this.var_408.push(new Tab(this._navigator,const_396,const_891,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1075));
         this.var_408.push(new Tab(this._navigator,const_307,const_240,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_469));
         this.var_408.push(new Tab(this._navigator,const_237,const_246,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_743));
         this.setSelectedTab(const_407);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_396;
      }
      
      public function get tabs() : Array
      {
         return this.var_408;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_408)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_408)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_408)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
