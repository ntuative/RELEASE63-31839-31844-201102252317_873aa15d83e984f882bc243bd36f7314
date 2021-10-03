package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_886:BigInteger;
      
      private var var_2041:BigInteger;
      
      private var var_1902:BigInteger;
      
      private var var_2680:BigInteger;
      
      private var var_1468:BigInteger;
      
      private var var_1901:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1468 = param1;
         this.var_1901 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1468.toString() + ",generator: " + this.var_1901.toString() + ",secret: " + param1);
         this.var_886 = new BigInteger();
         this.var_886.fromRadix(param1,param2);
         this.var_2041 = this.var_1901.method_8(this.var_886,this.var_1468);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1902 = new BigInteger();
         this.var_1902.fromRadix(param1,param2);
         this.var_2680 = this.var_1902.method_8(this.var_886,this.var_1468);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2041.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2680.toRadix(param1);
      }
   }
}
