package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_885;
         param1["bitmap"] = const_889;
         param1["border"] = const_842;
         param1["border_notify"] = const_1475;
         param1["button"] = const_477;
         param1["button_thick"] = const_887;
         param1["button_icon"] = const_1491;
         param1["button_group_left"] = const_712;
         param1["button_group_center"] = const_802;
         param1["button_group_right"] = const_838;
         param1["canvas"] = const_796;
         param1["checkbox"] = const_631;
         param1["closebutton"] = const_1214;
         param1["container"] = const_379;
         param1["container_button"] = const_630;
         param1["display_object_wrapper"] = const_709;
         param1["dropmenu"] = const_564;
         param1["dropmenu_item"] = const_436;
         param1["frame"] = const_385;
         param1["frame_notify"] = const_1591;
         param1["header"] = const_758;
         param1["html"] = const_1142;
         param1["icon"] = const_1059;
         param1["itemgrid"] = const_1149;
         param1["itemgrid_horizontal"] = const_508;
         param1["itemgrid_vertical"] = const_896;
         param1["itemlist"] = const_1049;
         param1["itemlist_horizontal"] = const_364;
         param1["itemlist_vertical"] = const_392;
         param1["label"] = WINDOW_TYPE_LABEL;
         param1["maximizebox"] = const_1643;
         param1["menu"] = const_1611;
         param1["menu_item"] = const_1421;
         param1["submenu"] = const_1189;
         param1["minimizebox"] = const_1530;
         param1["notify"] = const_1605;
         param1["null"] = const_642;
         param1["password"] = const_636;
         param1["radiobutton"] = const_656;
         param1["region"] = const_893;
         param1["restorebox"] = const_1624;
         param1["scaler"] = const_711;
         param1["scaler_horizontal"] = const_1492;
         param1["scaler_vertical"] = const_1586;
         param1["scrollbar_horizontal"] = const_462;
         param1["scrollbar_vertical"] = const_741;
         param1["scrollbar_slider_button_up"] = const_1098;
         param1["scrollbar_slider_button_down"] = const_1171;
         param1["scrollbar_slider_button_left"] = const_1185;
         param1["scrollbar_slider_button_right"] = const_1164;
         param1["scrollbar_slider_bar_horizontal"] = const_1127;
         param1["scrollbar_slider_bar_vertical"] = const_1084;
         param1["scrollbar_slider_track_horizontal"] = const_1048;
         param1["scrollbar_slider_track_vertical"] = const_1197;
         param1["scrollable_itemlist"] = const_1589;
         param1["scrollable_itemlist_vertical"] = const_559;
         param1["scrollable_itemlist_horizontal"] = const_1088;
         param1["selector"] = const_632;
         param1["selector_list"] = const_782;
         param1["submenu"] = const_1189;
         param1["tab_button"] = const_450;
         param1["tab_container_button"] = const_995;
         param1["tab_context"] = const_355;
         param1["tab_content"] = const_1179;
         param1["tab_selector"] = const_680;
         param1["text"] = const_476;
         param1["input"] = const_761;
         param1["toolbar"] = const_1539;
         param1["tooltip"] = const_384;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
