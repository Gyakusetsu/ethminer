hunter_config(CURL VERSION ${HUNTER_CURL_VERSION} CMAKE_ARGS HTTP_ONLY=ON CMAKE_USE_OPENSSL=OFF CMAKE_USE_LIBSSH2=OFF CURL_CA_PATH=none)
hunter_config(Boost VERSION 1.78.0)
hunter_config(
    ethash
    VERSION 0.8.0
    SHA1 41fd440f70b6a8dfc3fd29b20f471dcbd1345ad0
    URL https://github.com/chfast/ethash/archive/refs/tags/v0.8.0.tar.gz
)
