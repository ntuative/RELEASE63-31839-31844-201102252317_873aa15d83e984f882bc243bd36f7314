package com.sulake.core.window.services
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IInteractiveWindow;
   import com.sulake.core.window.components.IToolTipWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowType;
   import flash.display.DisplayObject;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class WindowToolTipAgent extends WindowMouseOperator implements IToolTipAgentService
   {
       
      
      protected var var_1239:String;
      
      protected var var_271:IToolTipWindow;
      
      protected var var_380:Timer;
      
      protected var var_1241:Point;
      
      protected var var_1240:Point;
      
      protected var var_1490:uint;
      
      public function WindowToolTipAgent(param1:DisplayObject)
      {
         this.var_1240 = new Point();
         this.var_1241 = new Point(20,20);
         this.var_1490 = 500;
         super(param1);
      }
      
      override public function begin(param1:IWindow, param2:uint = 0) : IWindow
      {
         if(param1 && !param1.disposed)
         {
            if(param1 is IInteractiveWindow)
            {
               this.var_1239 = IInteractiveWindow(param1).toolTipCaption;
               this.var_1490 = IInteractiveWindow(param1).toolTipDelay;
            }
            else
            {
               this.var_1239 = param1.caption;
               this.var_1490 = 500;
            }
            _mouse.x = var_135.mouseX;
            _mouse.y = var_135.mouseY;
            getMousePositionRelativeTo(param1,_mouse,this.var_1240);
            if(this.var_1239 != null && this.var_1239 != "")
            {
               if(this.var_380 == null)
               {
                  this.var_380 = new Timer(this.var_1490,1);
                  this.var_380.addEventListener(TimerEvent.TIMER,this.showToolTip);
               }
               this.var_380.reset();
               this.var_380.start();
            }
         }
         return super.begin(param1,param2);
      }
      
      override public function end(param1:IWindow) : IWindow
      {
         if(this.var_380 != null)
         {
            this.var_380.stop();
            this.var_380.removeEventListener(TimerEvent.TIMER,this.showToolTip);
            this.var_380 = null;
         }
         this.hideToolTip();
         return super.end(param1);
      }
      
      override public function operate(param1:int, param2:int) : void
      {
         if(_window && true)
         {
            _mouse.x = param1;
            _mouse.y = param2;
            getMousePositionRelativeTo(_window,_mouse,this.var_1240);
            if(this.var_271 != null && !this.var_271.disposed)
            {
               this.var_271.x = param1 + this.var_1241.x;
               this.var_271.y = param2 + this.var_1241.y;
            }
         }
      }
      
      protected function showToolTip(param1:TimerEvent) : void
      {
         var _loc2_:* = null;
         if(this.var_380 != null)
         {
            this.var_380.reset();
         }
         if(_window && true)
         {
            if(this.var_271 == null || this.var_271.disposed)
            {
               this.var_271 = _window.context.create("undefined::ToolTip",this.var_1239,WindowType.const_384,_window.style,0 | 0,null,null,null,0,null,null) as IToolTipWindow;
            }
            _loc2_ = new Point();
            _window.getGlobalPosition(_loc2_);
            this.var_271.x = _loc2_.x + this.var_1240.x + this.var_1241.x;
            this.var_271.y = _loc2_.y + this.var_1240.y + this.var_1241.y;
         }
      }
      
      protected function hideToolTip() : void
      {
         if(this.var_271 != null && !this.var_271.disposed)
         {
            this.var_271.destroy();
            this.var_271 = null;
         }
      }
   }
}
