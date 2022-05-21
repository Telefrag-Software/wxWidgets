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
        DESTINATION "${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME}")
    if(MSVC)
        wx_install(
            DIRECTORY "${wxSOURCE_DIR}/include/msvc"
            DESTINATION "${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME}")
    endif()
else()
    wx_get_flavour(lib_flavour "-")
    wx_install(
        DIRECTORY "${wxSOURCE_DIR}/include/wx"
        DESTINATION "${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME}/wx-${wxMAJOR_VERSION}.${wxMINOR_VERSION}${lib_flavour}")
endif()

# setup header and wx-config
if(WIN32_MSVC_NAMING)
    wx_install(
        DIRECTORY "${wxSETUP_HEADER_PATH}"
        DESTINATION "${CMAKE_INSTALL_LIBDIR}/${wxPLATFORM_LIB_DIR}")
else()
    wx_install(
        DIRECTORY "${wxSETUP_HEADER_PATH}"
        DESTINATION "${CMAKE_INSTALL_LIBDIR}/wx/include")

    wx_install(
        FILES "${wxOUTPUT_DIR}/wx/config/${wxBUILD_FILE_ID}"
        DESTINATION "${CMAKE_INSTALL_LIBDIR}/wx/config"
        PERMISSIONS OWNER_EXECUTE OWNER_WRITE OWNER_READ
                    GROUP_EXECUTE GROUP_READ
                    WORLD_EXECUTE WORLD_READ
        )

#    install(DIRECTORY DESTINATION "bin")
#    install(CODE "execute_process( \
#        COMMAND ${CMAKE_COMMAND} -E create_symlink \
#        ${CMAKE_INSTALL_PREFIX}/lib/wx/config/${wxBUILD_FILE_ID} \
#        ${CMAKE_INSTALL_PREFIX}/bin/wx-config \
#        )"
#    )
endif()

#install(
#    TARGETS ${PROJECT_NAME}
#    EXPORT "${TARGETS_EXPORT_NAME}"
#    LIBRARY DESTINATION "${CMAKE_INSTALL_LIBDIR}"
#    ARCHIVE DESTINATION "${CMAKE_INSTALL_LIBDIR}"
#    RUNTIME DESTINATION "${CMAKE_INSTALL_BINDIR}"
#    INCLUDES DESTINATION "${CMAKE_INSTALL_INCLUDEDIR}"
#)

#install(
#    FILES ${wxMONO_SRC_FILES}
#    DESTINATION "${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME}"
#)

install(
    FILES "${PROJECT_CONFIG}" "${VERSION_CONFIG}"
    DESTINATION "${CONFIG_INSTALL_DIR}"
)

install(
    EXPORT "${TARGETS_EXPORT_NAME}"
    NAMESPACE "${NAMESPACE}"
    DESTINATION "${CONFIG_INSTALL_DIR}"
)
