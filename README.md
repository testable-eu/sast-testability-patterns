# Testability Pattern Catalogs for SAST

![Java](https://img.shields.io/badge/java-%23ED8B00.svg?style=for-the-badge&logo=java&logoColor=white)![JavaScript](https://img.shields.io/badge/javascript-%23323330.svg?style=for-the-badge&logo=javascript&logoColor=%23F7DF1E)![PHP](https://img.shields.io/badge/php-%23777BB4.svg?style=for-the-badge&logo=php&logoColor=white)

This repository includes catalogs of SAST testability patterns for the [OWASP Testability Patterns](https://owasp.org/www-project-testability-patterns-for-web-applications/) project. Testability Patterns (TPs) are problematic code instructions that affect the capability of code analysis tools for security testing. Due to TPs, SAST tools may not detect an existing vulnerability, or conversely, report a false alarm. 

This project has a OWASP website available at: [https://owasp.org/www-project-testability-patterns-for-web-applications/](https://owasp.org/www-project-testability-patterns-for-web-applications/).

## Quick Start

- [What is a testability pattern?](./docs/testability-patterns.md)
- [Testability patterns structure](./docs/testability-patterns-structure.md)
- [Example pattern template](https://github.com/testable-eu/sast-testability-patterns/tree/master/pattern_template)
- [Adding a pattern](./docs/testability-patterns-adding.md)
- [Contribution guidelines](./docs/contribution-guidelines.md)
- [Pattern discovery](https://github.com/testable-eu/sast-tp-framework)

For more detailed documentation, see the [docs](https://github.com/testable-eu/sast-testability-patterns/tree/master/docs) folder.

## Overview 

| Language    | # Patterns  | # Instances   | Link                                                                                |
|------------ |------------ |-------------  |------------------------------------------------------------------------------------ |
| JavaScript  | 105         | 157           | [JS](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS)   |
| PhP         | 84          | 145           | [PHP](https://github.com/testable-eu/sast-testability-patterns/tree/master/PHP)   |
| Java        | 143         | 218           | [JAVA](https://github.com/testable-eu/sast-testability-patterns/tree/master/JAVA)   |


## List of Patterns 

To view the complete list of testability patterns, click on the respective catalogue to expand.  

<details markdown="1">
<summary><b>JavaScript</b></summary>

|ID|Pattern Name|Version|Link|
|:--|:--|:--|:--|
|1|unset_element_array|v1.0|[JS/1_unset_element_array](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/1_unset_element_array)|
|2|uri|v0.draft|[JS/2_uri](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/2_uri)|
|3|evaluated_call_time|v0.draft|[JS/3_evaluated_call_time](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/3_evaluated_call_time)|
|4|function_apply|v0.draft|[JS/4_function_apply](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/4_function_apply)|
|5|variadic|v1.0|[JS/5_variadic](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/5_variadic)|
|6|callback_function|v0.draft|[JS/6_callback_function](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/6_callback_function)|
|7|array_unshift|v0.draft|[JS/7_array_unshift](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/7_array_unshift)|
|8|send_unpack|v0.draft|[JS/8_send_unpack](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/8_send_unpack)|
|9|late_static_binding|v0.draft|[JS/9_late_static_binding](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/9_late_static_binding)|
|10|spread_properties|v0.draft|[JS/10_spread_properties](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/10_spread_properties)|
|11|closure_scope_chain|v0.draft|[JS/11_closure_scope_chain](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/11_closure_scope_chain)|
|12|nan|v0.draft|[JS/12_nan](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/12_nan)|
|13|function_declared_immediately_executed|v1.0|[JS/13_function_declared_immediately_executed](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/13_function_declared_immediately_executed)|
|14|template_literals|v0.draft|[JS/14_template_literals](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/14_template_literals)|
|15|reflect_delete|v1.0|[JS/15_reflect_delete](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/15_reflect_delete)|
|16|nullish_coaleshing_operator|v0.draft|[JS/16_nullish_coaleshing_operator](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/16_nullish_coaleshing_operator)|
|17|too_function_calls|v0.draft|[JS/17_too_function_calls](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/17_too_function_calls)|
|18|arguments|v0.draft|[JS/18_arguments](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/18_arguments)|
|19|nested_function|v0.draft|[JS/19_nested_function](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/19_nested_function)|
|20|too_function_calls|v0.draft|[JS/20_too_function_calls](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/20_too_function_calls)|
|21|new_target|v0.draft|[JS/21_new_target](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/21_new_target)|
|22|reduce|v0.draft|[JS/22_reduce](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/22_reduce)|
|23|foreach_in_nested|v0.draft|[JS/23_foreach_in_nested](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/23_foreach_in_nested)|
|24|finite|v0.draft|[JS/24_finite](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/24_finite)|
|25|weak_map|v1.0|[JS/25_weak_map](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/25_weak_map)|
|26|computed_properties|v0.draft|[JS/26_computed_properties](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/26_computed_properties)|
|27|cast_string_array|v0.draft|[JS/27_cast_string_array](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/27_cast_string_array)|
|28|closures|v1.0|[JS/28_closures](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/28_closures)|
|29|recursion|v0.draft|[JS/29_recursion](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/29_recursion)|
|30|generator_delegation|v1.0|[JS/30_generator_delegation](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/30_generator_delegation)|
|31|generatorfunction_constructor|v1.0|[JS/31_generatorfunction_constructor](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/31_generatorfunction_constructor)|
|32|array_shift|v1.0|[JS/32_array_shift](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/32_array_shift)|
|33|array_length|v0.draft|[JS/33_array_length](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/33_array_length)|
|34|bind|v1.0|[JS/34_bind](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/34_bind)|
|35|async_methods|v1.0|[JS/35_async_methods](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/35_async_methods)|
|36|returned_function|v0.draft|[JS/36_returned_function](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/36_returned_function)|
|37|generators|v1.0|[JS/37_generators](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/37_generators)|
|38|while_break|v1.0|[JS/38_while_break](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/38_while_break)|
|39|function_get_arguments|v1.0|[JS/39_function_get_arguments](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/39_function_get_arguments)|
|40|function_name_conflict|v0.draft|[JS/40_function_name_conflict](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/40_function_name_conflict)|
|41|symbol|v0.draft|[JS/41_symbol](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/41_symbol)|
|42|anonymous_object|v1.0|[JS/42_anonymous_object](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/42_anonymous_object)|
|43|window_global|v0.draft|[JS/43_window_global](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/43_window_global)|
|44|array_map|v0.draft|[JS/44_array_map](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/44_array_map)|
|45|escape_unescape(deprecated)|v0.draft|[JS/45_escape_unescape(deprecated)](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/45_escape_unescape(deprecated))|
|46|continue|v0.draft|[JS/46_continue](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/46_continue)|
|47|check_type|v0.draft|[JS/47_check_type](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/47_check_type)|
|48|compare_variables|v0.draft|[JS/48_compare_variables](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/48_compare_variables)|
|49|arrow_function|v0.draft|[JS/49_arrow_function](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/49_arrow_function)|
|50|conditional_assign|v0.draft|[JS/50_conditional_assign](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/50_conditional_assign)|
|51|global_variable|v0.draft|[JS/51_global_variable](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/51_global_variable)|
|52|super_property|v0.draft|[JS/52_super_property](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/52_super_property)|
|53|simple_set|v0.draft|[JS/53_simple_set](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/53_simple_set)|
|54|define_property|v1.0|[JS/54_define_property](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/54_define_property)|
|55|inheritance|v1.0|[JS/55_inheritance](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/55_inheritance)|
|56|weak_ref|v1.0|[JS/56_weak_ref](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/56_weak_ref)|
|57|object_seal|v0.draft|[JS/57_object_seal](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/57_object_seal)|
|58|object_freeze|v0.draft|[JS/58_object_freeze](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/58_object_freeze)|
|59|simple_object|v0.draft|[JS/59_simple_object](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/59_simple_object)|
|60|object_create|v0.draft|[JS/60_object_create](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/60_object_create)|
|61|delete_properties|v1.0|[JS/61_delete_properties](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/61_delete_properties)|
|62|static_variable|v1.0|[JS/62_static_variable](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/62_static_variable)|
|63|tostring|v0.draft|[JS/63_tostring](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/63_tostring)|
|64|assign_object|v1.0|[JS/64_assign_object](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/64_assign_object)|
|65|proto|v1.0|[JS/65_proto](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/65_proto)|
|66|static_method_and_properties|v0.draft|[JS/66_static_method_and_properties](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/66_static_method_and_properties)|
|67|symbol_to_string_tag|v1.0|[JS/67_symbol_to_string_tag](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/67_symbol_to_string_tag)|
|68|promise|v0.draft|[JS/68_promise](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/68_promise)|
|69|set_and_get|v0.draft|[JS/69_set_and_get](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/69_set_and_get)|
|70|reflect_get|v1.0|[JS/70_reflect_get](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/70_reflect_get)|
|71|named_class|v1.0|[JS/71_named_class](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/71_named_class)|
|72|errors|v0.draft|[JS/72_errors](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/72_errors)|
|73|weak_set|v0.draft|[JS/73_weak_set](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/73_weak_set)|
|74|object_argument|v0.draft|[JS/74_object_argument](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/74_object_argument)|
|75|functions_in_object|v0.draft|[JS/75_functions_in_object](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/75_functions_in_object)|
|76|reference_argument|v1.0|[JS/76_reference_argument](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/76_reference_argument)|
|77|object_clone|v1.0|[JS/77_object_clone](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/77_object_clone)|
|78|asynchronous_event_handler|v0.draft|[JS/78_asynchronous_event_handler](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/78_asynchronous_event_handler)|
|79|inline_function|v0.draft|[JS/79_inline_function](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/79_inline_function)|
|80|json|v0.draft|[JS/80_json](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/80_json)|
|81|text_encoder|v0.draft|[JS/81_text_encoder](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/81_text_encoder)|
|82|location_assign_with_search|v0.draft|[JS/82_location_assign_with_search](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/82_location_assign_with_search)|
|83|getattribute|v1.0|[JS/83_getattribute](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/83_getattribute)|
|84|try_catch|v1.0|[JS/84_try_catch](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/84_try_catch)|
|85|block_scope|v0.draft|[JS/85_block_scope](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/85_block_scope)|
|86|type_juggling|v0.draft|[JS/86_type_juggling](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/86_type_juggling)|
|87|modules|v1.0|[JS/87_modules](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/87_modules)|
|88|with_deprecated|v0.draft|[JS/88_with_deprecated](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/88_with_deprecated)|
|89|proxy|v1.0|[JS/89_proxy](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/89_proxy)|
|90|simple_array|v0.draft|[JS/90_simple_array](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/90_simple_array)|
|91|destructuring|v0.draft|[JS/91_destructuring](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/91_destructuring)|
|92|set_to_array|v1.0|[JS/92_set_to_array](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/92_set_to_array)|
|93|for_of|v0.draft|[JS/93_for_of](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/93_for_of)|
|94|matrix|v0.draft|[JS/94_matrix](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/94_matrix)|
|95|arithmetic_operation_array_index|v0.draft|[JS/95_arithmetic_operation_array_index](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/95_arithmetic_operation_array_index)|
|96|object_literals|v0.draft|[JS/96_object_literals](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/96_object_literals)|
|97|vulnerable_key_dictionary|v1.0|[JS/97_vulnerable_key_dictionary](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/97_vulnerable_key_dictionary)|
|98|throw_exception|v1.0|[JS/98_throw_exception](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/98_throw_exception)|
|99|get_ajax|v0.draft|[JS/99_get_ajax](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/99_get_ajax)|
|100|replace_substring|v0.draft|[JS/100_replace_substring](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/100_replace_substring)|
|101|innerhtml_outerhtml|v0.draft|[JS/101_innerhtml_outerhtml](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/101_innerhtml_outerhtml)|
|102|event_dispatch|v1.0|[JS/102_event_dispatch](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/102_event_dispatch)|
|103|event_handler_registration|v1.0|[JS/103_event_handler_registration](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/103_event_handler_registration)|
|104|event_handler_removal|v1.0|[JS/104_event_handler_removal](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/104_event_handler_removal)|
|105|this_statement|v1.0|[JS/105_this_statement](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/105_this_statement)|

</details>

<details markdown="1">
<summary><b>PhP</b></summary>

|ID|Pattern Name|Version|Link|
|:--|:--|:--|:--|
|1|static_variables|v1.0|[PHP/1_static_variables](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/1_static_variables)|
|2|global_variables|v1.0|[PHP/2_global_variables](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/2_global_variables)|
|3|global_array|v0.draft|[PHP/3_global_array](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/3_global_array)|
|4|conditional_assignment|v0.draft|[PHP/4_conditional_assignment](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/4_conditional_assignment)|
|5|combined_operator|v0.draft|[PHP/5_combined_operator](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/5_combined_operator)|
|6|coalesce|v0.draft|[PHP/6_coalesce](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/6_coalesce)|
|7|string_arithmetic_operations|v0.draft|[PHP/7_string_arithmetic_operations](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/7_string_arithmetic_operations)|
|8|simple_reference|v0.draft|[PHP/8_simple_reference](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/8_simple_reference)|
|9|reference_argument|v0.draft|[PHP/9_reference_argument](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/9_reference_argument)|
|10|return_by_reference|v0.draft|[PHP/10_return_by_reference](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/10_return_by_reference)|
|11|foreach_with_reference|v0.draft|[PHP/11_foreach_with_reference](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/11_foreach_with_reference)|
|12|make_ref|v0.draft|[PHP/12_make_ref](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/12_make_ref)|
|13|assign_static_prop_ref|v0.draft|[PHP/13_assign_static_prop_ref](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/13_assign_static_prop_ref)|
|14|object_assigned_by_reference|v0.draft|[PHP/14_object_assigned_by_reference](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/14_object_assigned_by_reference)|
|15|nested_function|v0.draft|[PHP/15_nested_function](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/15_nested_function)|
|16|variadic_functions|v0.draft|[PHP/16_variadic_functions](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/16_variadic_functions)|
|17|get_arguments|v0.draft|[PHP/17_get_arguments](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/17_get_arguments)|
|18|send_unpack|v0.draft|[PHP/18_send_unpack](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/18_send_unpack)|
|19|closures|v0.draft|[PHP/19_closures](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/19_closures)|
|20|use_with_closures|v0.draft|[PHP/20_use_with_closures](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/20_use_with_closures)|
|21|simple_object|v0.draft|[PHP/21_simple_object](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/21_simple_object)|
|22|assign_object|v0.draft|[PHP/22_assign_object](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/22_assign_object)|
|23|object_argument|v0.draft|[PHP/23_object_argument](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/23_object_argument)|
|24|new_self|v0.draft|[PHP/24_new_self](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/24_new_self)|
|25|clone|v0.draft|[PHP/25_clone](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/25_clone)|
|26|late_static_binding|v0.draft|[PHP/26_late_static_binding](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/26_late_static_binding)|
|27|get_called_class|v1.0|[PHP/27_get_called_class](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/27_get_called_class)|
|28|static_methods|v0.draft|[PHP/28_static_methods](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/28_static_methods)|
|29|static_properties|v0.draft|[PHP/29_static_properties](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/29_static_properties)|
|30|anonymous_classes|v0.draft|[PHP/30_anonymous_classes](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/30_anonymous_classes)|
|31|static_method_variable|v1.0|[PHP/31_static_method_variable](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/31_static_method_variable)|
|32|set_overloading|v0.draft|[PHP/32_set_overloading](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/32_set_overloading)|
|33|get_overloading|v1.0|[PHP/33_get_overloading](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/33_get_overloading)|
|34|isset_overloading|v1.0|[PHP/34_isset_overloading](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/34_isset_overloading)|
|35|unset_overloading|v0.draft|[PHP/35_unset_overloading](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/35_unset_overloading)|
|36|call_overloading|v1.0|[PHP/36_call_overloading](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/36_call_overloading)|
|37|callstatic_overloading|v1.0|[PHP/37_callstatic_overloading](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/37_callstatic_overloading)|
|38|invoke|v0.draft|[PHP/38_invoke](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/38_invoke)|
|39|serialize_unserialize|v0.draft|[PHP/39_serialize_unserialize](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/39_serialize_unserialize)|
|40|trait|v0.draft|[PHP/40_trait](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/40_trait)|
|41|self_methods|v0.draft|[PHP/41_self_methods](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/41_self_methods)|
|42|destructor|v0.draft|[PHP/42_destructor](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/42_destructor)|
|43|tostring_echo_object|v0.draft|[PHP/43_tostring_echo_object](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/43_tostring_echo_object)|
|44|verify_return_type|v0.draft|[PHP/44_verify_return_type](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/44_verify_return_type)|
|45|static_method_from_variable|v0.draft|[PHP/45_static_method_from_variable](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/45_static_method_from_variable)|
|46|object_to_array|v0.draft|[PHP/46_object_to_array](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/46_object_to_array)|
|47|overriding|v0.draft|[PHP/47_overriding](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/47_overriding)|
|48|construct_with_inheritance|v0.draft|[PHP/48_construct_with_inheritance](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/48_construct_with_inheritance)|
|49|static_instance|v0.draft|[PHP/49_static_instance](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/49_static_instance)|
|50|throw_exception|v0.draft|[PHP/50_throw_exception](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/50_throw_exception)|
|51|catch_exceptions|v0.draft|[PHP/51_catch_exceptions](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/51_catch_exceptions)|
|52|try_catch_finally|v0.draft|[PHP/52_try_catch_finally](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/52_try_catch_finally)|
|53|track_error|v0.draft|[PHP/53_track_error](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/53_track_error)|
|54|generators|v0.draft|[PHP/54_generators](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/54_generators)|
|55|goto|v0.draft|[PHP/55_goto](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/55_goto)|
|56|exit|v0.draft|[PHP/56_exit](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/56_exit)|
|57|js_redirect|v0.draft|[PHP/57_js_redirect](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/57_js_redirect)|
|58|simple_array|v0.draft|[PHP/58_simple_array](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/58_simple_array)|
|59|foreach_with_array|v0.draft|[PHP/59_foreach_with_array](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/59_foreach_with_array)|
|60|array_walk|v1.0|[PHP/60_array_walk](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/60_array_walk)|
|61|array_map|v1.0|[PHP/61_array_map](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/61_array_map)|
|62|parse_str_built_in_function|v0.draft|[PHP/62_parse_str_built_in_function](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/62_parse_str_built_in_function)|
|63|substring_replace_built_in_function|v0.draft|[PHP/63_substring_replace_built_in_function](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/63_substring_replace_built_in_function)|
|64|preg_match|v0.draft|[PHP/64_preg_match](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/64_preg_match)|
|65|system|v0.draft|[PHP/65_system](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/65_system)|
|66|superglobals|v0.draft|[PHP/66_superglobals](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/66_superglobals)|
|67|odbc|v0.draft|[PHP/67_odbc](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/67_odbc)|
|68|compact|v1.0|[PHP/68_compact](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/68_compact)|
|69|create_function|v1.0|[PHP/69_create_function](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/69_create_function)|
|70|extract|v1.0|[PHP/70_extract](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/70_extract)|
|71|array_functions|v1.0|[PHP/71_array_functions](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/71_array_functions)|
|72|procedural_queries|v0.draft|[PHP/72_procedural_queries](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/72_procedural_queries)|
|73|wrong_sanitizer|v0.draft|[PHP/73_wrong_sanitizer](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/73_wrong_sanitizer)|
|74|dirname|v1.0|[PHP/74_dirname](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/74_dirname)|
|75|buffer|v0.draft|[PHP/75_buffer](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/75_buffer)|
|76|function_variable|v0.draft|[PHP/76_function_variable](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/76_function_variable)|
|77|object_callable|v0.draft|[PHP/77_object_callable](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/77_object_callable)|
|78|autoloading_classes|v0.draft|[PHP/78_autoloading_classes](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/78_autoloading_classes)|
|79|dynamic_include|v0.draft|[PHP/79_dynamic_include](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/79_dynamic_include)|
|80|callback_functions|v0.draft|[PHP/80_callback_functions](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/80_callback_functions)|
|81|new_from_variable|v0.draft|[PHP/81_new_from_variable](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/81_new_from_variable)|
|82|methods_variable|v0.draft|[PHP/82_methods_variable](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/82_methods_variable)|
|83|array_variable_key|v0.draft|[PHP/83_array_variable_key](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/83_array_variable_key)|
|84|variable_variables|v0.draft|[PHP/84_variable_variables](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/84_variable_variables)|

</details>


<details markdown="1">
<summary><b>Java</b></summary>

|ID|Pattern Name|Version|Link|
|:--|:--|:--|:--|
|1|throwable|v1.0|[JAVA/1_throwable](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/1_throwable)|
|2|skip_stream|v0.draft|[JAVA/2_skip_stream](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/2_skip_stream)|
|3|copy_array|v0.draft|[JAVA/3_copy_array](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/3_copy_array)|
|4|list_of|v0.draft|[JAVA/4_list_of](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/4_list_of)|
|5|reflection|v0.draft|[JAVA/5_reflection](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/5_reflection)|
|6|callable|v1.0|[JAVA/6_callable](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/6_callable)|
|7|function_currying|v1.0|[JAVA/7_function_currying](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/7_function_currying)|
|8|tomap_2dimarr|v1.0|[JAVA/8_tomap_2dimarr](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/8_tomap_2dimarr)|
|9|beans_getvalue|v1.0|[JAVA/9_beans_getvalue](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/9_beans_getvalue)|
|10|cast|v1.0|[JAVA/10_cast](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/10_cast)|
|11|bytearrayinputstream|v1.0|[JAVA/11_bytearrayinputstream](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/11_bytearrayinputstream)|
|12|chararrayreader|v1.0|[JAVA/12_chararrayreader](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/12_chararrayreader)|
|13|runfinalization|v1.0|[JAVA/13_runfinalization](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/13_runfinalization)|
|14|new_character|v0.draft|[JAVA/14_new_character](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/14_new_character)|
|15|binding|v0.draft|[JAVA/15_binding](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/15_binding)|
|16|type_inference|v1.0|[JAVA/16_type_inference](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/16_type_inference)|
|17|collections_ncopies|v1.0|[JAVA/17_collections_ncopies](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/17_collections_ncopies)|
|18|socketpermission|v1.0|[JAVA/18_socketpermission](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/18_socketpermission)|
|19|stringjoiner_add|v1.0|[JAVA/19_stringjoiner_add](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/19_stringjoiner_add)|
|20|inner_class_declaration|v1.0|[JAVA/20_inner_class_declaration](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/20_inner_class_declaration)|
|21|string_valueof_override_to_string|v1.0|[JAVA/21_string_valueof_override_to_string](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/21_string_valueof_override_to_string)|
|22|addition_assignment_operator|v1.0|[JAVA/22_addition_assignment_operator](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/22_addition_assignment_operator)|
|23|array|v0.draft|[JAVA/23_array](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/23_array)|
|24|arraylist|v0.draft|[JAVA/24_arraylist](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/24_arraylist)|
|25|assign_class_to_interface|v1.0|[JAVA/25_assign_class_to_interface](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/25_assign_class_to_interface)|
|26|assign_object1_to_object2|v1.0|[JAVA/26_assign_object1_to_object2](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/26_assign_object1_to_object2)|
|27|asynchronous|v1.0|[JAVA/27_asynchronous](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/27_asynchronous)|
|28|bifunction|v0.draft|[JAVA/28_bifunction](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/28_bifunction)|
|29|bounded_wildcard|v0.draft|[JAVA/29_bounded_wildcard](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/29_bounded_wildcard)|
|30|childclass_as_argument|v0.draft|[JAVA/30_childclass_as_argument](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/30_childclass_as_argument)|
|31|class_implement_interface|v0.draft|[JAVA/31_class_implement_interface](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/31_class_implement_interface)|
|32|cloneable|v1.0|[JAVA/32_cloneable](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/32_cloneable)|
|33|closeable|v0.draft|[JAVA/33_closeable](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/33_closeable)|
|34|collectors|v0.draft|[JAVA/34_collectors](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/34_collectors)|
|35|conditional_operator|v0.draft|[JAVA/35_conditional_operator](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/35_conditional_operator)|
|36|cookies|v0.draft|[JAVA/36_cookies](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/36_cookies)|
|37|decode_uri|v0.draft|[JAVA/37_decode_uri](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/37_decode_uri)|
|38|deep_copy_constructor_object|v0.draft|[JAVA/38_deep_copy_constructor_object](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/38_deep_copy_constructor_object)|
|39|final_collection|v0.draft|[JAVA/39_final_collection](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/39_final_collection)|
|40|final_variables|v0.draft|[JAVA/40_final_variables](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/40_final_variables)|
|41|finalize|v0.draft|[JAVA/41_finalize](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/41_finalize)|
|42|finally|v0.draft|[JAVA/42_finally](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/42_finally)|
|43|foreach|v0.draft|[JAVA/43_foreach](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/43_foreach)|
|44|functional_interface|v0.draft|[JAVA/44_functional_interface](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/44_functional_interface)|
|45|futuretask|v0.draft|[JAVA/45_futuretask](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/45_futuretask)|
|46|inheritance|v0.draft|[JAVA/46_inheritance](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/46_inheritance)|
|47|inheritance_from_abstract_static_class|v0.draft|[JAVA/47_inheritance_from_abstract_static_class](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/47_inheritance_from_abstract_static_class)|
|48|inherited_object_as_argument|v0.draft|[JAVA/48_inherited_object_as_argument](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/48_inherited_object_as_argument)|
|49|inner_class|v0.draft|[JAVA/49_inner_class](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/49_inner_class)|
|50|inner_class_extends_outer_class|v0.draft|[JAVA/50_inner_class_extends_outer_class](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/50_inner_class_extends_outer_class)|
|51|inter_class_communication|v0.draft|[JAVA/51_inter_class_communication](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/51_inter_class_communication)|
|52|inter_packages_communication|v0.draft|[JAVA/52_inter_packages_communication](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/52_inter_packages_communication)|
|53|labels|v0.draft|[JAVA/53_labels](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/53_labels)|
|54|lambda_expression_inside_other_method|v0.draft|[JAVA/54_lambda_expression_inside_other_method](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/54_lambda_expression_inside_other_method)|
|55|combined_operations|v0.draft|[JAVA/55_combined_operations](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/55_combined_operations)|
|56|list_string_to_list_object|v0.draft|[JAVA/56_list_string_to_list_object](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/56_list_string_to_list_object)|
|57|local_method_of_local_class|v0.draft|[JAVA/57_local_method_of_local_class](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/57_local_method_of_local_class)|
|58|map|v0.draft|[JAVA/58_map](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/58_map)|
|59|method_keyword|v0.draft|[JAVA/59_method_keyword](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/59_method_keyword)|
|60|method_reference|v0.draft|[JAVA/60_method_reference](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/60_method_reference)|
|61|method_within_method|v0.draft|[JAVA/61_method_within_method](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/61_method_within_method)|
|62|multiple_files|v0.draft|[JAVA/62_multiple_files](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/62_multiple_files)|
|63|nested_blocks|v0.draft|[JAVA/63_nested_blocks](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/63_nested_blocks)|
|64|nested_methods|v0.draft|[JAVA/64_nested_methods](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/64_nested_methods)|
|65|object_shallow_copy|v0.draft|[JAVA/65_object_shallow_copy](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/65_object_shallow_copy)|
|66|operations_over_index|v0.draft|[JAVA/66_operations_over_index](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/66_operations_over_index)|
|67|parent_class_as_method_argument|v0.draft|[JAVA/67_parent_class_as_method_argument](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/67_parent_class_as_method_argument)|
|68|pass_by_value|v0.draft|[JAVA/68_pass_by_value](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/68_pass_by_value)|
|69|pass_variable_between_java_files|v0.draft|[JAVA/69_pass_variable_between_java_files](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/69_pass_variable_between_java_files)|
|70|raw_types|v0.draft|[JAVA/70_raw_types](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/70_raw_types)|
|71|recursion|v0.draft|[JAVA/71_recursion](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/71_recursion)|
|72|recursive_class|v0.draft|[JAVA/72_recursive_class](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/72_recursive_class)|
|73|runnable|v0.draft|[JAVA/73_runnable](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/73_runnable)|
|74|runtime_polymorphism|v0.draft|[JAVA/74_runtime_polymorphism](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/74_runtime_polymorphism)|
|75|scriptengine_javascript_redirect|v0.draft|[JAVA/75_scriptengine_javascript_redirect](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/75_scriptengine_javascript_redirect)|
|76|session|v1.0|[JAVA/76_session](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/76_session)|
|77|set|v0.draft|[JAVA/77_set](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/77_set)|
|78|servlet_pass_parameter|v0.draft|[JAVA/78_servlet_pass_parameter](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/78_servlet_pass_parameter)|
|79|simple_inheritance|v0.draft|[JAVA/79_simple_inheritance](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/79_simple_inheritance)|
|80|simple_object|v0.draft|[JAVA/80_simple_object](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/80_simple_object)|
|81|simple_raw_type|v0.draft|[JAVA/81_simple_raw_type](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/81_simple_raw_type)|
|82|singleton|v0.draft|[JAVA/82_singleton](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/82_singleton)|
|83|sink_in_anonymous_class|v0.draft|[JAVA/83_sink_in_anonymous_class](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/83_sink_in_anonymous_class)|
|84|sink_in_constructor|v0.draft|[JAVA/84_sink_in_constructor](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/84_sink_in_constructor)|
|85|sink_in_interface_method|v0.draft|[JAVA/85_sink_in_interface_method](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/85_sink_in_interface_method)|
|86|softref|v0.draft|[JAVA/86_softref](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/86_softref)|
|87|static_variables|v0.draft|[JAVA/87_static_variables](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/87_static_variables)|
|88|stream|v0.draft|[JAVA/88_stream](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/88_stream)|
|89|string|v0.draft|[JAVA/89_string](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/89_string)|
|90|string_charat|v0.draft|[JAVA/90_string_charat](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/90_string_charat)|
|91|string_to_object_convert|v0.draft|[JAVA/91_string_to_object_convert](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/91_string_to_object_convert)|
|92|queue_interface|v0.draft|[JAVA/92_queue_interface](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/92_queue_interface)|
|93|stringarray_to_object_array|v0.draft|[JAVA/93_stringarray_to_object_array](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/93_stringarray_to_object_array)|
|94|stringreader|v0.draft|[JAVA/94_stringreader](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/94_stringreader)|
|95|stringwriter|v0.draft|[JAVA/95_stringwriter](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/95_stringwriter)|
|96|switch|v0.draft|[JAVA/96_switch](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/96_switch)|
|97|threadpool|v0.draft|[JAVA/97_threadpool](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/97_threadpool)|
|98|unbounded_wildcard|v0.draft|[JAVA/98_unbounded_wildcard](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/98_unbounded_wildcard)|
|99|variadic_methods|v0.draft|[JAVA/99_variadic_methods](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/99_variadic_methods)|
|100|waiter_and_notifier|v0.draft|[JAVA/100_waiter_and_notifier](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/100_waiter_and_notifier)|
|101|weakref|v0.draft|[JAVA/101_weakref](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/101_weakref)|
|102|collection_taint_propagation|v0.draft|[JAVA/102_collection_taint_propagation](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/102_collection_taint_propagation)|
|103|arrays_aslist|v0.draft|[JAVA/103_arrays_aslist](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/103_arrays_aslist)|
|104|collections_class|v0.draft|[JAVA/104_collections_class](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/104_collections_class)|
|105|pattern_splitasstream|v0.draft|[JAVA/105_pattern_splitasstream](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/105_pattern_splitasstream)|
|106|list_copyof|v1.0|[JAVA/106_list_copyof](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/106_list_copyof)|
|107|linkedhashset|v0.draft|[JAVA/107_linkedhashset](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/107_linkedhashset)|
|108|getbytes|v0.draft|[JAVA/108_getbytes](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/108_getbytes)|
|109|matcher_replaceall|v0.draft|[JAVA/109_matcher_replaceall](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/109_matcher_replaceall)|
|110|tochararray|v0.draft|[JAVA/110_tochararray](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/110_tochararray)|
|111|linkedhashmap|v0.draft|[JAVA/111_linkedhashmap](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/111_linkedhashmap)|
|112|getdeclaredfields|v0.draft|[JAVA/112_getdeclaredfields](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/112_getdeclaredfields)|
|113|method_chaining|v0.draft|[JAVA/113_method_chaining](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/113_method_chaining)|
|114|vector_setsize|v0.draft|[JAVA/114_vector_setsize](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/114_vector_setsize)|
|115|new_interface|v0.draft|[JAVA/115_new_interface](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/115_new_interface)|
|116|nested_classes|v0.draft|[JAVA/116_nested_classes](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/116_nested_classes)|
|117|modify_method_arguments|v0.draft|[JAVA/117_modify_method_arguments](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/117_modify_method_arguments)|
|118|re-inheritance_of_fields|v0.draft|[JAVA/118_re-inheritance_of_fields](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/118_re-inheritance_of_fields)|
|119|multilayer_inheritance|v0.draft|[JAVA/119_multilayer_inheritance](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/119_multilayer_inheritance)|
|120|transient_variables|v0.draft|[JAVA/120_transient_variables](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/120_transient_variables)|
|121|forwad_reference_to_a_clas_variable|v0.draft|[JAVA/121_forwad_reference_to_a_clas_variable](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/121_forwad_reference_to_a_clas_variable)|
|122|static_variable_inheritance|v0.draft|[JAVA/122_static_variable_inheritance](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/122_static_variable_inheritance)|
|123|variables_hiding|v0.draft|[JAVA/123_variables_hiding](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/123_variables_hiding)|
|124|inheritance_of_private_class_members|v0.draft|[JAVA/124_inheritance_of_private_class_members](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/124_inheritance_of_private_class_members)|
|125|static_variables|v0.draft|[JAVA/125_static_variables](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/125_static_variables)|
|126|chained_assignment|v0.draft|[JAVA/126_chained_assignment](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/126_chained_assignment)|
|127|generic_methods|v0.draft|[JAVA/127_generic_methods](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/127_generic_methods)|
|128|method_ref|v0.draft|[JAVA/128_method_ref](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/128_method_ref)|
|129|super_invoke_method|v0.draft|[JAVA/129_super_invoke_method](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/129_super_invoke_method)|
|130|conditional_assignment|v0.draft|[JAVA/130_conditional_assignment](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/130_conditional_assignment)|
|131|inherited_access|v0.draft|[JAVA/131_inherited_access](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/131_inherited_access)|
|132|scope|v0.draft|[JAVA/132_scope](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/132_scope)|
|133|switch_in_constructor|v0.draft|[JAVA/133_switch_in_constructor](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/133_switch_in_constructor)|
|134|dead_code_behavior|v0.draft|[JAVA/134_dead_code_behavior](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/134_dead_code_behavior)|
|135|lambda_access_static|v0.draft|[JAVA/135_lambda_access_static](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/135_lambda_access_static)|
|136|init_inner_class|v0.draft|[JAVA/136_init_inner_class](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/136_init_inner_class)|
|137|switch_string|v0.draft|[JAVA/137_switch_string](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/137_switch_string)|
|138|eval_order|v0.draft|[JAVA/138_eval_order](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/138_eval_order)|
|139|method_erasure|v0.draft|[JAVA/139_method_erasure](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/139_method_erasure)|
|140|super_expression|v0.draft|[JAVA/140_super_expression](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/140_super_expression)|
|141|this_keyword|v0.draft|[JAVA/141_this_keyword](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/141_this_keyword)|
|142|deep_nesting|v0.draft|[JAVA/142_deep_nesting](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/142_deep_nesting)|
|143|late_addition|v0.draft|[JAVA/143_late_addition](https://github.com/testable-eu/sast-testability-patterns/tree/master/JS/143_late_addition)|

</details>




## Contributions

We are delighted to know that you would like to contribute to this repository. Please follow our [contribution guideline](./docs/contribution-guidelines.md) before you submit a PR. 

For any questions, suggestions, feedback or concerns. please [raise an issue in the repository](https://github.com/testable-eu/sast-testability-patterns/issues). We welcome suggestions and feedback from the community. 

**Important:** When opening a new issue, please follow our [provided issue templates](https://github.com/testable-eu/sast-testability-patterns/issues/new/choose), if possible. For example, if you want to add a new testability pattern, please choose the [`New Testability Pattern Proposal`](https://github.com/testable-eu/sast-testability-patterns/issues/new?assignees=&labels=ACK_WAITING%2C+NEW_TP&template=1--new-testability-pattern-proposal.md&title=New+TP+Proposal%3A+%5BPUT_TARGET_TP_NAME_HERE%5D) template.



## News

Follow us on Twitter on [@Testable_EU](https://twitter.com/Testable_EU) or check out TESTABLE website available at [https://testable.eu/](https://testable.eu/).

## Publications

```bibtex
@article{altestability,
  title={Testability Tarpits: the Impact of Code Patterns on the Security Testing of Web Applications},
  author={Al Kassar, Feras and Clerici, Giulia and Compagna, Luca and Yamaguchi, Fabian and Balzarotti, Davide},
  booktitle = {NDSS},
  year = {2022},
}
```

To see the complete list of relevant publications, please visit [https://testable.eu/publications/](https://testable.eu/publications/).

## License

This project is licensed under `GNU AFFERO GENERAL PUBLIC LICENSE V3.0`. See [LICENSE](LICENSE) for more information.

## Acknowledgements

This project received funding from the European Union's Horizon 2020 research and innovation programme under grant agreement No. 101019206.

<p align="center">
  <img src="https://testable.eu/img/eu_flag.png"><br>
  Funded by the European Union
</p>

