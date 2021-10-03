package com.sulake.core.utils
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class XMLVariableParser
   {
      
      public static const const_150:String = "hex";
      
      public static const const_39:String = "int";
      
      public static const const_249:String = "uint";
      
      public static const const_212:String = "Number";
      
      public static const const_1366:String = "float";
      
      public static const const_35:String = "Boolean";
      
      public static const const_1661:String = "bool";
      
      public static const const_52:String = "String";
      
      public static const const_221:String = "Point";
      
      public static const const_219:String = "Rectangle";
      
      public static const const_124:String = "Array";
      
      public static const const_248:String = "Map";
      
      private static const const_587:String = "key";
      
      private static const const_910:String = "type";
      
      private static const const_586:String = "value";
      
      private static const const_589:String = "true";
      
      private static const const_1682:String = "IInventoryView";
      
      private static const X:String = "x";
      
      private static const Y:String = "y";
      
      private static const const_1228:String = "width";
      
      private static const const_1227:String = "height";
      
      private static const const_1229:String = ",";
       
      
      public function XMLVariableParser()
      {
         super();
      }
      
      public static function parseVariableList(param1:XMLList, param2:Map, param3:Array = null) : uint
      {
         var _loc5_:int = 0;
         var _loc4_:uint = param1.length();
         _loc5_ = 0;
         while(_loc5_ < _loc4_)
         {
            XMLVariableParser.parseVariableToken(param1[_loc5_],param2,param3);
            _loc5_++;
         }
         return _loc4_;
      }
      
      private static function parseVariableToken(param1:XML, param2:Map, param3:Array = null) : void
      {
         var _loc4_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc5_:String = const_52;
         _loc7_ = param1.attribute(const_587);
         if(_loc7_.length() > 0)
         {
            _loc4_ = String(param1.attribute(const_587));
         }
         else
         {
            _loc4_ = param1.child(const_587)[0];
         }
         _loc7_ = param1.attribute(const_910);
         if(_loc7_.length() > 0)
         {
            _loc5_ = String(param1.attribute(const_910));
         }
         _loc7_ = param1.attribute(const_586);
         if(_loc7_.length() > 0)
         {
            _loc6_ = String(param1.attribute(const_586));
         }
         if(_loc6_ != null)
         {
            param2[_loc4_] = XMLVariableParser.castStringToType(_loc6_,_loc5_);
         }
         else
         {
            _loc8_ = param1.child(const_586)[0];
            if(_loc8_ != null)
            {
               _loc9_ = _loc8_.child(0)[0];
               _loc6_ = _loc9_.children()[0];
               _loc5_ = _loc9_.localName();
               param2[_loc4_] = XMLVariableParser.parseValueType(_loc9_,_loc5_);
            }
            else if(_loc5_ == const_248 || _loc5_ == const_124)
            {
               param2[_loc4_] = XMLVariableParser.parseValueType(param1,_loc5_);
            }
         }
         if(param3)
         {
            param3.push(_loc5_);
         }
      }
      
      public static function castStringToType(param1:String, param2:String) : Object
      {
         switch(param2)
         {
            case const_249:
               return uint(param1);
            case const_39:
               return int(param1);
            case const_212:
               return Number(param1);
            case const_1366:
               return Number(param1);
            case const_35:
               return param1 == const_589 || int(param1) > 0;
            case const_1661:
               return param1 == const_589 || int(param1) > 0;
            case const_150:
               return uint(param1);
            case const_124:
               return param1.split(const_1229);
            default:
               return String(param1);
         }
      }
      
      public static function parseValueType(param1:XML, param2:String) : Object
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         switch(param2)
         {
            case const_52:
               return String(param1);
            case const_221:
               _loc4_ = new Point();
               _loc4_.x = Number(param1.attribute(X));
               _loc4_.y = Number(param1.attribute(Y));
               return _loc4_;
            case const_219:
               _loc5_ = new Rectangle();
               _loc5_.x = Number(param1.attribute(X));
               _loc5_.y = Number(param1.attribute(Y));
               _loc5_.width = Number(param1.attribute(const_1228));
               _loc5_.height = Number(param1.attribute(const_1227));
               return _loc5_;
            case const_124:
               _loc3_ = new Map();
               parseVariableList(param1.children(),_loc3_);
               _loc6_ = new Array();
               for(_loc7_ in _loc3_)
               {
                  _loc6_.push(_loc3_[_loc7_]);
               }
               return _loc6_;
            case const_248:
               _loc3_ = new Map();
               XMLVariableParser.parseVariableList(param1.children(),_loc3_);
               return _loc3_;
            default:
               throw new Error("Unable to parse data type \"" + param2 + "\", unknown type!");
         }
      }
   }
}
