
cmake_policy(SET CMP0057 OLD)

add_library(somelib SHARED empty.cpp)
target_include_directories(somelib INTERFACE $<INSTALL_INTERFACE:include>)

install(TARGETS somelib EXPORT exp
  LIBRARY DESTINATION ${CMAKE_INSTALL_PREFIX}/lib
  ARCHIVE DESTINATION ${CMAKE_INSTALL_PREFIX}/lib
  RUNTIME DESTINATION ${CMAKE_INSTALL_PREFIX}/bin
)

install(EXPORT exp DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/cmake)
