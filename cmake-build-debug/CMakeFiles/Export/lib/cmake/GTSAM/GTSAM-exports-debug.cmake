#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "CppUnitLite" for configuration "Debug"
set_property(TARGET CppUnitLite APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(CppUnitLite PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libCppUnitLiteDebug.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS CppUnitLite )
list(APPEND _IMPORT_CHECK_FILES_FOR_CppUnitLite "${_IMPORT_PREFIX}/lib/libCppUnitLiteDebug.a" )

# Import target "metis-gtsam" for configuration "Debug"
set_property(TARGET metis-gtsam APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(metis-gtsam PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "m"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libmetis-gtsamDebug.so"
  IMPORTED_SONAME_DEBUG "libmetis-gtsamDebug.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS metis-gtsam )
list(APPEND _IMPORT_CHECK_FILES_FOR_metis-gtsam "${_IMPORT_PREFIX}/lib/libmetis-gtsamDebug.so" )

# Import target "gtsam" for configuration "Debug"
set_property(TARGET gtsam APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(gtsam PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libgtsamDebug.so.4.1.0"
  IMPORTED_SONAME_DEBUG "libgtsamDebug.so.4"
  )

list(APPEND _IMPORT_CHECK_TARGETS gtsam )
list(APPEND _IMPORT_CHECK_FILES_FOR_gtsam "${_IMPORT_PREFIX}/lib/libgtsamDebug.so.4.1.0" )

# Import target "gtsam_unstable" for configuration "Debug"
set_property(TARGET gtsam_unstable APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(gtsam_unstable PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libgtsam_unstableDebug.so.4.1.0"
  IMPORTED_SONAME_DEBUG "libgtsam_unstableDebug.so.4"
  )

list(APPEND _IMPORT_CHECK_TARGETS gtsam_unstable )
list(APPEND _IMPORT_CHECK_FILES_FOR_gtsam_unstable "${_IMPORT_PREFIX}/lib/libgtsam_unstableDebug.so.4.1.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
