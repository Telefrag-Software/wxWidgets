include(GNUInstallDirs)

set(CONFIG_INSTALL_DIR "${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME}")
set(GENERATED_DIR "${CMAKE_CURRENT_BINARY_DIR}/generated")
set(VERSION_CONFIG "${GENERATED_DIR}/${PROJECT_NAME}ConfigVersion.cmake")
set(PROJECT_CONFIG "${GENERATED_DIR}/${PROJECT_NAME}Config.cmake")
set(TARGETS_EXPORT_NAME "${PROJECT_NAME}Targets")
set(NAMESPACE "${PROJECT_NAME}::")

include(CMakePackageConfigHelpers)

write_basic_package_version_file(
    "${VERSION_CONFIG}" COMPATIBILITY SameMajorVersion
)

configure_package_config_file(
    "build/cmake/config.cmake.in"
    "${PROJECT_CONFIG}"
    INSTALL_DESTINATION "${CONFIG_INSTALL_DIR}"
)

if(WIN32_MSVC_NAMING)
    wx_install(
        DIRECTORY "${wxSOURCE_DIR}/include/wx"
        DESTINATION "${CMAKE_INSTALL_INCLUDEDIR}")
    if(MSVC)
        wx_install(
            DIRECTORY "${wxSOURCE_DIR}/include/msvc"
            DESTINATION "${CMAKE_INSTALL_INCLUDEDIR}")
    endif()
else()
    wx_get_flavour(lib_flavour "-")
    wx_install(
        DIRECTORY "${wxSOURCE_DIR}/include/wx"
        DESTINATION "${CMAKE_INSTALL_INCLUDEDIR}/wx-${wxMAJOR_VERSION}.${wxMINOR_VERSION}${lib_flavour}")
endif()

# setup header
wx_install(
    DIRECTORY "${wxSETUP_HEADER_PATH}"
    DESTINATION "${CMAKE_INSTALL_INCLUDEDIR}")

install(
    FILES "${PROJECT_CONFIG}" "${VERSION_CONFIG}"
    DESTINATION "${CONFIG_INSTALL_DIR}"
)

install(
    EXPORT "${TARGETS_EXPORT_NAME}"
    NAMESPACE "${NAMESPACE}"
    DESTINATION "${CONFIG_INSTALL_DIR}"
)
