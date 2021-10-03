package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_178;
         param1["bound_to_parent_rect"] = const_95;
         param1["child_window"] = const_1021;
         param1["embedded_controller"] = const_978;
         param1["resize_to_accommodate_children"] = const_64;
         param1["input_event_processor"] = const_30;
         param1["internal_event_handling"] = const_663;
         param1["mouse_dragging_target"] = const_220;
         param1["mouse_dragging_trigger"] = const_402;
         param1["mouse_scaling_target"] = const_281;
         param1["mouse_scaling_trigger"] = const_451;
         param1["horizontal_mouse_scaling_trigger"] = const_224;
         param1["vertical_mouse_scaling_trigger"] = const_268;
         param1["observe_parent_input_events"] = const_976;
         param1["optimize_region_to_layout_size"] = const_563;
         param1["parent_window"] = const_1187;
         param1["relative_horizontal_scale_center"] = const_179;
         param1["relative_horizontal_scale_fixed"] = const_138;
         param1["relative_horizontal_scale_move"] = const_337;
         param1["relative_horizontal_scale_strech"] = const_365;
         param1["relative_scale_center"] = const_972;
         param1["relative_scale_fixed"] = const_633;
         param1["relative_scale_move"] = const_979;
         param1["relative_scale_strech"] = const_1208;
         param1["relative_vertical_scale_center"] = const_198;
         param1["relative_vertical_scale_fixed"] = const_126;
         param1["relative_vertical_scale_move"] = const_334;
         param1["relative_vertical_scale_strech"] = const_299;
         param1["on_resize_align_left"] = const_734;
         param1["on_resize_align_right"] = const_487;
         param1["on_resize_align_center"] = const_522;
         param1["on_resize_align_top"] = const_840;
         param1["on_resize_align_bottom"] = const_557;
         param1["on_resize_align_middle"] = const_471;
         param1["on_accommodate_align_left"] = const_1150;
         param1["on_accommodate_align_right"] = const_467;
         param1["on_accommodate_align_center"] = const_888;
         param1["on_accommodate_align_top"] = const_1009;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_783;
         param1["route_input_events_to_parent"] = const_481;
         param1["use_parent_graphic_context"] = const_32;
         param1["draggable_with_mouse"] = const_986;
         param1["scalable_with_mouse"] = const_992;
         param1["reflect_horizontal_resize_to_parent"] = const_516;
         param1["reflect_vertical_resize_to_parent"] = const_465;
         param1["reflect_resize_to_parent"] = const_320;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1107;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
