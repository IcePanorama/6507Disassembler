cmake_minimum_required (VERSION 3.28)

project(6507Disassembler CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_compile_options(
    -std=c++20
    -Werror
    -Wall
    -Wextra
    -Wpedantic
    -Wuninitialized
    -Wmissing-include-dirs
    -Wshadow
    -Wundef
    -Winvalid-pch
    -Wzero-as-null-pointer-constant
    -Wctor-dtor-privacy
    -Wold-style-cast
    -Woverloaded-virtual
)

set(AUTO_FMT clang-format)
set(CODE_STYLE GNU)

set(INCL_DIR "${PROJECT_SOURCE_DIR}/include")
set(INCL_FILES
    "${INCL_DIR}/absolute_address.hpp"
    "${INCL_DIR}/addressing_mode.hpp"
    "${INCL_DIR}/disassembler.hpp"
    "${INCL_DIR}/instruction.hpp"
    "${INCL_DIR}/instruction_lookup.hpp"
    "${INCL_DIR}/label.hpp"
    "${INCL_DIR}/line.hpp"
    "${INCL_DIR}/time.hpp"
    "${INCL_DIR}/zero_page_lookup.hpp"
)

set(SRC_DIR "${PROJECT_SOURCE_DIR}/src")
set(SRC_FILES
    "${SRC_DIR}/absolute_address.cpp"
    "${SRC_DIR}/addressing_mode.cpp"
    "${SRC_DIR}/disassembler.cpp"
    "${SRC_DIR}/instruction.cpp"
    "${SRC_DIR}/instruction_lookup.cpp"
    "${SRC_DIR}/label.cpp"
    "${SRC_DIR}/line.cpp"
    "${SRC_DIR}/main.cpp"
    "${SRC_DIR}/time.cpp"
    "${SRC_DIR}/zero_page_lookup.cpp"
)

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR})

# Format target
add_custom_target(format
    COMMAND ${AUTO_FMT} -style=${CODE_STYLE} -i ${SRC_FILES} ${INCL_FILES}
    COMMENT "Auto-formatting code."
)

# Test target
add_custom_target(test
    COMMAND valgrind --leak-check=yes ./${PROJECT_NAME}
    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
    COMMENT "Testing for memory leaks with Valgrind."
)

# `full` target
add_custom_target(full
    COMMAND ${CMAKE_COMMAND} --build ${CMAKE_BINARY_DIR} --target clean
    COMMAND ${CMAKE_COMMAND} --build ${CMAKE_BINARY_DIR} --target ${PROJECT_NAME}
    COMMAND ${CMAKE_COMMAND} --build ${CMAKE_BINARY_DIR} --target test
    COMMENT "Running full build (clean, format, build, and test)."
)

# Default/All target
add_executable(${PROJECT_NAME} ${SRC_FILES})
add_dependencies(${PROJECT_NAME} format)
target_include_directories(${PROJECT_NAME} PRIVATE ${INCL_DIR})

set_property(
    TARGET 6507Disassembler
    PROPERTY ADDITIONAL_CLEAN_FILES "${CMAKE_BINARY_DIR}/output.hexdump;"
)

#set_property(
#        TARGET 6507Disassembler
#        APPEND
#        PROPERTY ADDITIONAL_CLEAN_FILES "${CMAKE_BINARY_DIR}/output.hexdump"
#)
