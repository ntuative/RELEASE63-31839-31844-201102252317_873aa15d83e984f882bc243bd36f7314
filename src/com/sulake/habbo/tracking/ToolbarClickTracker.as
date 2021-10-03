package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1242:IHabboTracking;
      
      private var var_1646:Boolean = false;
      
      private var var_2155:int = 0;
      
      private var var_1560:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1242 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1242 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1646 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2155 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1646)
         {
            return;
         }
         ++this.var_1560;
         if(this.var_1560 <= this.var_2155)
         {
            this.var_1242.track("toolbar",param1);
         }
      }
   }
}
