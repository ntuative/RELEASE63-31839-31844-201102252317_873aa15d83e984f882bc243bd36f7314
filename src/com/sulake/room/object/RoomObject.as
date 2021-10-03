package com.sulake.room.object
{
   import com.sulake.room.object.logic.IRoomObjectEventHandler;
   import com.sulake.room.object.logic.IRoomObjectMouseHandler;
   import com.sulake.room.object.visualization.IRoomObjectVisualization;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObject implements IRoomObjectController
   {
      
      private static var var_1026:int = 0;
       
      
      private var _id:int;
      
      private var _type:String = "";
      
      private var var_81:Vector3d;
      
      private var var_263:Vector3d;
      
      private var var_1861:Vector3d;
      
      private var var_1860:Vector3d;
      
      private var var_632:Array;
      
      private var var_65:RoomObjectModel;
      
      private var _visualization:IRoomObjectVisualization;
      
      private var var_633:IRoomObjectEventHandler;
      
      private var _updateID:int;
      
      private var _instanceId:int = 0;
      
      public function RoomObject(param1:int, param2:int)
      {
         super();
         this._id = param1;
         this.var_81 = new Vector3d();
         this.var_263 = new Vector3d();
         this.var_1861 = new Vector3d();
         this.var_1860 = new Vector3d();
         this.var_632 = new Array(param2);
         var _loc3_:Number = param2 - 1;
         while(_loc3_ >= 0)
         {
            this.var_632[_loc3_] = 0;
            _loc3_--;
         }
         this.var_65 = new RoomObjectModel();
         this._visualization = null;
         this.var_633 = null;
         this._updateID = 0;
         this._instanceId = var_1026++;
      }
      
      public function dispose() : void
      {
         this.var_81 = null;
         this.var_263 = null;
         if(this.var_65 != null)
         {
            this.var_65.dispose();
            this.var_65 = null;
         }
         this.var_632 = null;
         this.setVisualization(null);
         this.setEventHandler(null);
      }
      
      public function getId() : int
      {
         return this._id;
      }
      
      public function getType() : String
      {
         return this._type;
      }
      
      public function getInstanceId() : int
      {
         return this._instanceId;
      }
      
      public function getLocation() : IVector3d
      {
         this.var_1861.assign(this.var_81);
         return this.var_1861;
      }
      
      public function getDirection() : IVector3d
      {
         this.var_1860.assign(this.var_263);
         return this.var_1860;
      }
      
      public function getModel() : IRoomObjectModel
      {
         return this.var_65;
      }
      
      public function getModelController() : IRoomObjectModelController
      {
         return this.var_65;
      }
      
      public function getState(param1:int) : int
      {
         if(param1 >= 0 && param1 < this.var_632.length)
         {
            return this.var_632[param1];
         }
         return -1;
      }
      
      public function getVisualization() : IRoomObjectVisualization
      {
         return this._visualization;
      }
      
      public function setType(param1:String) : void
      {
         this._type = param1;
      }
      
      public function setLocation(param1:IVector3d) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(this.var_81.x != param1.x || this.var_81.y != param1.y || this.var_81.z != param1.z)
         {
            this.var_81.x = param1.x;
            this.var_81.y = param1.y;
            this.var_81.z = param1.z;
            ++this._updateID;
         }
      }
      
      public function setDirection(param1:IVector3d) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(this.var_263.x != param1.x || this.var_263.y != param1.y || this.var_263.z != param1.z)
         {
            this.var_263.x = (param1.x % 360 + 360) % 360;
            this.var_263.y = (param1.y % 360 + 360) % 360;
            this.var_263.z = (param1.z % 360 + 360) % 360;
            ++this._updateID;
         }
      }
      
      public function setState(param1:int, param2:int) : Boolean
      {
         if(param2 >= 0 && param2 < this.var_632.length)
         {
            if(this.var_632[param2] != param1)
            {
               this.var_632[param2] = param1;
               ++this._updateID;
            }
            return true;
         }
         return false;
      }
      
      public function setVisualization(param1:IRoomObjectVisualization) : void
      {
         if(param1 != this._visualization)
         {
            if(this._visualization != null)
            {
               this._visualization.dispose();
            }
            this._visualization = param1;
            if(this._visualization != null)
            {
               this._visualization.object = this;
            }
         }
      }
      
      public function setEventHandler(param1:IRoomObjectEventHandler) : void
      {
         if(param1 == this.var_633)
         {
            return;
         }
         var _loc2_:IRoomObjectEventHandler = this.var_633;
         if(_loc2_ != null)
         {
            this.var_633 = null;
            _loc2_.object = null;
         }
         this.var_633 = param1;
         if(this.var_633 != null)
         {
            this.var_633.object = this;
         }
      }
      
      public function getEventHandler() : IRoomObjectEventHandler
      {
         return this.var_633;
      }
      
      public function getUpdateID() : int
      {
         return this._updateID;
      }
      
      public function getMouseHandler() : IRoomObjectMouseHandler
      {
         return this.getEventHandler();
      }
   }
}
