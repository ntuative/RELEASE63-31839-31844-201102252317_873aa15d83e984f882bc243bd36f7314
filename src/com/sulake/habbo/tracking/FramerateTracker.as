package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1808:int;
      
      private var var_2628:int;
      
      private var var_1177:int;
      
      private var var_509:Number;
      
      private var var_2627:Boolean;
      
      private var var_2626:int;
      
      private var var_1852:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2628 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2626 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2627 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++this.var_1177;
         if(this.var_1177 == 1)
         {
            this.var_509 = param1;
            this.var_1808 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_1177);
            this.var_509 = this.var_509 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2627 && param3 - this.var_1808 >= this.var_2628 && this.var_1852 < this.var_2626)
         {
            _loc5_ = 1000 / this.var_509;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++this.var_1852;
            this.var_1808 = param3;
            this.var_1177 = 0;
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
