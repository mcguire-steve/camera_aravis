# - Try to find Aravis
# Once done, this will define
#
#  Aravis_FOUND - system has library
#  Aravis_INCLUDE_DIRS - the  include directories
#  Aravis_LIBRARIES - link these to use the library

#include(LibFindMacros)
find_package(PkgConfig REQUIRED)		
pkg_check_modules(PC_Aravis REQUIRED aravis-0.6)

find_path(ARAVIS_INCLUDE_DIR "arv.h"
          HINTS ${PC_Aravis_INCLUDEDIR} ${PC_Aravis_INCLUDE_DIRS} /usr/local/include/aravis-0.6
          )

find_library(ARAVIS_LIBRARY
  NAMES "aravis-0.6"
  HINTS /usr/local/lib ${ARAVIS_ROOT}/lib)

mark_as_advanced(ARAVIS_INCLUDE_DIR ARAVIS_LIBRARY )

find_package(GLIB2 REQUIRED)
#find_package(GObject REQUIRED)

set(Aravis_LIBRARIES ${ARAVIS_LIBRARY} ${GLIB2_LIBRARY} ${GObject_LIBRARY})
set(Aravis_INCLUDE_DIRS ${ARAVIS_INCLUDE_DIR} ${GLIB2_INCLUDE_DIRS})
set(Aravis_FOUND true)
