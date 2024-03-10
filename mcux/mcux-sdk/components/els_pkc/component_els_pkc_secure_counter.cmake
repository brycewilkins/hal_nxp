#Description: Component els_pkc.secure_counter; user_visible: False
include_guard(GLOBAL)
message("component_els_pkc_secure_counter component is included.")

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/.
    ${CMAKE_CURRENT_LIST_DIR}/src/comps/mcuxCsslSecureCounter/inc
)

