vcpkg_from_git(
  OUT_SOURCE_PATH SOURCE_PATH
  URL https://github.com/qtapp/common.git
  REF 25a4aea5acba4e303390d6a6b9824714142ba912
  HEAD_REF main
)

vcpkg_cmake_configure(
  SOURCE_PATH "${SOURCE_PATH}"
  OPTIONS 
    -DCMAKE_PREFIX_PATH="$ENV{Qt6_DIR}"
    -DBUILD_TESTING=OFF
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(
  PACKAGE_NAME qtapp
  CONFIG_PATH share/qtapp
)

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

