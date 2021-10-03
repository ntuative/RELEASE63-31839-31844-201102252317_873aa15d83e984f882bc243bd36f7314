package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_868:IAssetLoader;
      
      private var var_1803:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_1803 = param1;
         this.var_868 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_1803;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_868;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_868 != null)
            {
               if(!this.var_868.disposed)
               {
                  this.var_868.dispose();
                  this.var_868 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
