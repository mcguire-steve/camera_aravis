INCLUDE(FindPackageHandleStandardArgs)

FIND_PATH(ARAVIS_INCLUDE_PATH arv.h
  "$ENV{ARAVIS_INCLUDE_PATH}"
  /usr/include/aravis-0.2
)

FIND_LIBRARY(ARAVIS_LIBRARY aravis-0.2
  "$ENV{ARAVIS_LIBRARY}"
  /usr/lib
)

FIND_PACKAGE_HANDLE_STANDARD_ARGS(ARAVIS DEFAULT_MSG
  ARAVIS_INCLUDE_PATH
  ARAVIS_LIBRARY)