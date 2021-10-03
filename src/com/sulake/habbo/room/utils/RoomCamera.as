package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_925:int = 3;
       
      
      private var var_2292:int = -1;
      
      private var var_2289:int = -2;
      
      private var var_332:Vector3d = null;
      
      private var var_394:Vector3d = null;
      
      private var var_2286:Boolean = false;
      
      private var var_2294:Boolean = false;
      
      private var var_2290:Boolean = false;
      
      private var var_2288:Boolean = false;
      
      private var var_2291:int = 0;
      
      private var var_2287:int = 0;
      
      private var var_2295:int = 0;
      
      private var var_2293:int = 0;
      
      private var var_1319:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_394;
      }
      
      public function get targetId() : int
      {
         return this.var_2292;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2289;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2286;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2294;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2290;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2288;
      }
      
      public function get screenWd() : int
      {
         return this.var_2291;
      }
      
      public function get screenHt() : int
      {
         return this.var_2287;
      }
      
      public function get roomWd() : int
      {
         return this.var_2295;
      }
      
      public function get roomHt() : int
      {
         return this.var_2293;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2292 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2289 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2286 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2294 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2290 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2288 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2291 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2287 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2295 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2293 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_332 == null)
         {
            this.var_332 = new Vector3d();
         }
         if(this.var_332.x != param1.x || this.var_332.y != param1.y || this.var_332.z != param1.z)
         {
            this.var_332.assign(param1);
            this.var_1319 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_332 = null;
         this.var_394 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_394 != null)
         {
            return;
         }
         this.var_394 = new Vector3d();
         this.var_394.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_332 != null && this.var_394 != null)
         {
            ++this.var_1319;
            _loc4_ = Vector3d.dif(this.var_332,this.var_394);
            if(_loc4_.length <= param2)
            {
               this.var_394 = this.var_332;
               this.var_332 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_925 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1319 <= const_925)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_394 = Vector3d.sum(this.var_394,_loc4_);
            }
         }
      }
   }
}
