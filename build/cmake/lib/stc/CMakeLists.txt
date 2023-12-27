#############################################################################
# Name:        build/cmake/lib/stc/CMakeLists.txt
# Purpose:     CMake file for stc library
# Author:      Tobias Taschner
# Created:     2016-10-04
# Copyright:   (c) 2016 wxWidgets development team
# Licence:     wxWindows licence
#############################################################################

include(scintilla.cmake)
include(lexilla.cmake)

wx_append_sources(STC_FILES STC_CMN)
if(WXOSX_COCOA)
    wx_append_sources(STC_FILES STC_OSX_COCOA)
endif()

wx_add_library(wxstc ${STC_FILES})

if(NOT DEFINED SCINTILLA_INCLUDE)
    get_target_property(SCINTILLA_INCLUDE ${SCINTILLA_LIBRARIES} INCLUDE_DIRECTORIES)
    wx_lib_include_directories(wxstc PRIVATE ${SCINTILLA_INCLUDE})
    get_target_property(SCINTILLA_DEFINITIONS ${SCINTILLA_LIBRARIES} COMPILE_DEFINITIONS)
    wx_lib_compile_definitions(wxstc PRIVATE ${SCINTILLA_DEFINITIONS})
endif()

if(NOT DEFINED LEXILLA_INCLUDE)
    get_target_property(LEXILLA_INCLUDE ${LEXILLA_LIBRARIES} INCLUDE_DIRECTORIES)
    wx_lib_include_directories(wxstc PRIVATE ${LEXILLA_INCLUDE})
    get_target_property(LEXILLA_DEFINITIONS ${LEXILLA_LIBRARIES} COMPILE_DEFINITIONS)
    wx_lib_compile_definitions(wxstc PRIVATE ${LEXILLA_DEFINITIONS})
endif()

wx_lib_link_libraries(wxstc PRIVATE ${SCINTILLA_LIBRARIES} ${LEXILLA_LIBRARIES})

if(WXMSW)
    wx_lib_link_libraries(wxstc PRIVATE imm32)
endif()
