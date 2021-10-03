package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2761:uint;
      
      private var var_135:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var _windowContext:IWindowContext;
      
      private var var_1030:IMouseDraggingService;
      
      private var var_1031:IMouseScalingService;
      
      private var var_1029:IMouseListenerService;
      
      private var var_1027:IFocusManagerService;
      
      private var var_1032:IToolTipAgentService;
      
      private var var_1028:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2761 = 0;
         this.var_135 = param2;
         this._windowContext = param1;
         this.var_1030 = new WindowMouseDragger(param2);
         this.var_1031 = new WindowMouseScaler(param2);
         this.var_1029 = new WindowMouseListener(param2);
         this.var_1027 = new FocusManager(param2);
         this.var_1032 = new WindowToolTipAgent(param2);
         this.var_1028 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1030 != null)
         {
            this.var_1030.dispose();
            this.var_1030 = null;
         }
         if(this.var_1031 != null)
         {
            this.var_1031.dispose();
            this.var_1031 = null;
         }
         if(this.var_1029 != null)
         {
            this.var_1029.dispose();
            this.var_1029 = null;
         }
         if(this.var_1027 != null)
         {
            this.var_1027.dispose();
            this.var_1027 = null;
         }
         if(this.var_1032 != null)
         {
            this.var_1032.dispose();
            this.var_1032 = null;
         }
         if(this.var_1028 != null)
         {
            this.var_1028.dispose();
            this.var_1028 = null;
         }
         this.var_135 = null;
         this._windowContext = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1030;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1031;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1029;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1027;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1032;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1028;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
