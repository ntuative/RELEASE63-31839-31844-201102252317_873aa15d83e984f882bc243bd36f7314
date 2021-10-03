package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_979:RoomObjectLocationCacheItem = null;
      
      private var var_188:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_979 = new RoomObjectLocationCacheItem(param1);
         this.var_188 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_979;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_188;
      }
      
      public function dispose() : void
      {
         if(this.var_979 != null)
         {
            this.var_979.dispose();
            this.var_979 = null;
         }
         if(this.var_188 != null)
         {
            this.var_188.dispose();
            this.var_188 = null;
         }
      }
   }
}
