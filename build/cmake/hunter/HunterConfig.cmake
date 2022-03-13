include_guard()

hunter_config(CatchSelfTest
	URL "https://github.com/Telefrag-Software/Catch2/archive/refs/heads/hunter-wx-ee4acb6.zip"
	VERSION "ee4acb6"
	SHA1 "e53c0a1e77440ee1dbf1d95733de3eff9fdb7f3c"
)

hunter_config(EXPAT
	URL "https://github.com/Telefrag-Software/libexpat/archive/refs/heads/hunter-wx-adaa0c3.zip"
	VERSION "adaa0c3"
	SHA1 "82140e7c20908f08c659439f46dc6c45a8e6c479"
)

hunter_config(JPEG
	URL "https://github.com/Telefrag-Software/libjpeg-turbo/archive/refs/heads/hunter-wx-8524936.zip"
	VERSION "8524936"
	SHA1 "b135f44ecafa08c91cd60ac5433e6d4fa5dfc990"
)

hunter_config(PNG
	URL "https://github.com/Telefrag-Software/libpng/archive/refs/heads/hunter-wx-0dd3a7d0b.zip"
	VERSION "0dd3a7d0b"
	SHA1 "356457aff077cefc00a75f6c78a2c1b32ef3e6c3"
)

hunter_config(TIFF
	URL "https://github.com/Telefrag-Software/libtiff/archive/refs/heads/hunter-wx-96d28814.zip"
	VERSION "96d28814"
	SHA1 "8c19a5128d8b5b6c789782be3ea692cb978cb3ad"
	CMAKE_ARGS
		BUILD_SHARED_LIBS=OFF
		lzma=OFF
		zstd=OFF
)

hunter_config(WXZLIB
	URL "https://github.com/Telefrag-Software/zlib/archive/refs/heads/hunter-wx-aaeee82.zip"
	VERSION "aaeee82"
	SHA1 "80f0511cd99c07ab27d4092b3a854ae95cc1d57f"
)
