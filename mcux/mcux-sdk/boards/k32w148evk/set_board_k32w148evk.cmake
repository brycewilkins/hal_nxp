include_guard(GLOBAL)


if (CONFIG_USE_BOARD_Project_Template_k32w148evk)
# Add set(CONFIG_USE_BOARD_Project_Template_k32w148evk true) in config.cmake to use this component

message("BOARD_Project_Template_k32w148evk component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_driver_lpuart AND CONFIG_USE_component_lpuart_adapter AND CONFIG_USE_driver_common AND (CONFIG_DEVICE_ID STREQUAL K32W1480xxxA) AND CONFIG_USE_device_K32W1480_startup AND (CONFIG_BOARD STREQUAL k32w148evk) AND CONFIG_USE_driver_ccm32k AND CONFIG_USE_driver_port AND CONFIG_USE_driver_gpio AND CONFIG_USE_driver_spc AND ((CONFIG_USE_component_serial_manager AND CONFIG_USE_utility_debug_console AND CONFIG_USE_utility_assert) OR (CONFIG_USE_utility_debug_console_lite AND CONFIG_USE_utility_assert_lite)))

add_config_file(${CMAKE_CURRENT_LIST_DIR}/project_template/board.h "" BOARD_Project_Template_k32w148evk)
add_config_file(${CMAKE_CURRENT_LIST_DIR}/project_template/board.c "" BOARD_Project_Template_k32w148evk)
add_config_file(${CMAKE_CURRENT_LIST_DIR}/project_template/clock_config.h ${CMAKE_CURRENT_LIST_DIR}/project_template/. BOARD_Project_Template_k32w148evk)
add_config_file(${CMAKE_CURRENT_LIST_DIR}/project_template/clock_config.c "" BOARD_Project_Template_k32w148evk)
add_config_file(${CMAKE_CURRENT_LIST_DIR}/project_template/pin_mux.h ${CMAKE_CURRENT_LIST_DIR}/project_template/. BOARD_Project_Template_k32w148evk)
add_config_file(${CMAKE_CURRENT_LIST_DIR}/project_template/pin_mux.c "" BOARD_Project_Template_k32w148evk)
add_config_file(${CMAKE_CURRENT_LIST_DIR}/project_template/peripherals.h ${CMAKE_CURRENT_LIST_DIR}/project_template/. BOARD_Project_Template_k32w148evk)
add_config_file(${CMAKE_CURRENT_LIST_DIR}/project_template/peripherals.c "" BOARD_Project_Template_k32w148evk)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/project_template/.
)

else()

message(SEND_ERROR "BOARD_Project_Template_k32w148evk dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()

