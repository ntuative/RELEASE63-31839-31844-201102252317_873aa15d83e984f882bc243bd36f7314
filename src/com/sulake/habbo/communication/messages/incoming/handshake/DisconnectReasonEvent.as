package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1870:int = 0;
      
      public static const const_1381:int = 1;
      
      public static const const_1464:int = 2;
      
      public static const const_1724:int = 3;
      
      public static const const_1726:int = 4;
      
      public static const const_1725:int = 5;
      
      public static const const_1395:int = 10;
      
      public static const const_1883:int = 11;
      
      public static const const_1929:int = 12;
      
      public static const const_1866:int = 13;
      
      public static const const_1826:int = 16;
      
      public static const const_1856:int = 17;
      
      public static const const_1780:int = 18;
      
      public static const const_1791:int = 19;
      
      public static const const_1914:int = 20;
      
      public static const const_1768:int = 22;
      
      public static const const_1932:int = 23;
      
      public static const const_1850:int = 24;
      
      public static const const_1885:int = 25;
      
      public static const const_1834:int = 26;
      
      public static const const_1786:int = 27;
      
      public static const const_1722:int = 28;
      
      public static const const_1738:int = 29;
      
      public static const const_1873:int = 100;
      
      public static const const_1831:int = 101;
      
      public static const const_1771:int = 102;
      
      public static const const_1945:int = 103;
      
      public static const const_1941:int = 104;
      
      public static const const_1795:int = 105;
      
      public static const const_1775:int = 106;
      
      public static const const_1849:int = 107;
      
      public static const const_1861:int = 108;
      
      public static const const_1829:int = 109;
      
      public static const const_1845:int = 110;
      
      public static const const_1796:int = 111;
      
      public static const const_1783:int = 112;
      
      public static const const_1846:int = 113;
      
      public static const const_1779:int = 114;
      
      public static const const_1728:int = 115;
      
      public static const const_1889:int = 116;
      
      public static const const_1785:int = 117;
      
      public static const const_1877:int = 118;
      
      public static const const_1840:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1381:
            case const_1395:
               return "banned";
            case const_1464:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
