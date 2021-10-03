package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_771:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_673)
         {
            _structure = null;
            _assets = null;
            var_241 = null;
            var_269 = null;
            var_589 = null;
            var_532 = null;
            var_315 = null;
            if(!var_1233 && var_44)
            {
               var_44.dispose();
            }
            var_44 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_790 = null;
            var_673 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_771[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_771[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_361:
               switch(_loc3_)
               {
                  case AvatarAction.const_804:
                  case AvatarAction.const_560:
                  case AvatarAction.const_366:
                  case AvatarAction.const_649:
                  case AvatarAction.const_369:
                  case AvatarAction.const_613:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_315:
            case AvatarAction.const_670:
            case AvatarAction.const_261:
            case AvatarAction.const_717:
            case AvatarAction.const_890:
            case AvatarAction.const_867:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
