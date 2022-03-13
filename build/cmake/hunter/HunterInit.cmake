include_guard()

include(${CMAKE_CURRENT_LIST_DIR}/HunterGate.cmake)

HunterGate(
	URL "https://github.com/cpp-pm/hunter/archive/v0.24.0.tar.gz"
	SHA1 "a3d7f4372b1dcd52faa6ff4a3bd5358e1d0e5efd"
	FILEPATH "${CMAKE_CURRENT_LIST_DIR}/HunterConfig.cmake"
)
