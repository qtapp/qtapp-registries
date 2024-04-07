set(VCPKG_POLICY_EMPTY_INCLUDE_FOLDER enabled)

vcpkg_from_git(
  OUT_SOURCE_PATH SOURCE_PATH
  URL https://github.com/qtapp/qtapp.git
  REF fc69127d5e4db2814caf404c36700b9163172ff5 
  HEAD_REF main
)

file(INSTALL "${SOURCE_PATH}/QtAppConfig.cmake" DESTINATION "${CURRENT_PACKAGES_DIR}/share/qtapp")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
