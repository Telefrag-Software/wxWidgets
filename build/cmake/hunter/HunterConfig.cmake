include_guard()

hunter_config(liblzma
	URL "https://github.com/Telefrag-Software/xz/archive/refs/heads/hunter-5.4.0.zip"
	VERSION "5.4.0"
	SHA1 "2347b787e6626f6ffa6baac0a36ceb5dc5439309"
	CMAKE_ARGS
		BUILD_TESTING=OFF
)

hunter_config(zstd
	URL "https://codeload.github.com/facebook/zstd/zip/tags/v1.5.2"
	VERSION "1.5.2"
	SHA1 "f52fc3920828076655386f14da4e3bf4dba6467e"
)

# LibTIFF / LibPNG Dependencies
hunter_config(ZLIB
	URL "https://github.com/Telefrag-Software/zlib/archive/refs/heads/hunter-1.2.13.1.zip"
	VERSION "1.2.13.1"
	SHA1 "1189eb8d6a0d8f5b2cd676f09661f4864cc85896"
)

# wxWidgets Dependencies
hunter_config(CatchSelfTest
	URL "https://github.com/Telefrag-Software/Catch2/archive/refs/heads/hunter-wx-5f5e4cec.zip"
	VERSION "5f5e4cec"
	SHA1 "178f730fe08c8d8de525790a17fc5fe6f9595181"
)

hunter_config(EXPAT
	URL "https://github.com/Telefrag-Software/libexpat/archive/refs/heads/hunter-wx-1187e407.zip"
	VERSION "1187e407"
	SHA1 "e7ff5d035356cd87bed5f7613bc5d1f69b9b5cb8"
)

hunter_config(JPEG
	URL "https://github.com/Telefrag-Software/libjpeg-turbo/archive/refs/heads/hunter-wx-8524936.zip"
	VERSION "8524936"
	SHA1 "b135f44ecafa08c91cd60ac5433e6d4fa5dfc990"
)

hunter_config(nanosvg
	URL "https://github.com/Telefrag-Software/nanosvg/archive/refs/heads/hunter-wx-26db6fe.zip"
	VERSION "26db6fe"
	SHA1 "7e882edb4ffa7800c7944e91c8ef00c628d70e89"
)

hunter_config(PCRE2
	URL "https://github.com/Telefrag-Software/pcre/archive/refs/heads/hunter-wx-5b934c2.zip"
	VERSION "5b934c2"
	SHA1 "2833e75f036154c6b900313e24c4982b9b70b026"
)

hunter_config(png
	URL "https://github.com/Telefrag-Software/libpng/archive/refs/heads/hunter-1.6.39.0.zip"
	VERSION "hunter-1.6.39.0"
	SHA1 "6c450efdd05ff38c5cebff40147dd95d2787b365"
	CMAKE_ARGS
		BUILD_SHARED_LIBS=OFF
		PNG_SHARED=OFF
		PNG_STATIC=ON
		PNG_EXECUTABLES=OFF
		PNG_TESTS=OFF
		PNG_DEBUG=OFF
		PNG_DISABLE_AWK=ON
)

#hunter_config(TIFF
#	URL "https://github.com/Telefrag-Software/libtiff/archive/refs/heads/hunter-wx-bbe71f4a.zip"
#	VERSION "bbe71f4a"
#	SHA1 "9fbf9da30df13dbb15ea1019945c589f44710d4a"
#	CMAKE_ARGS
#		BUILD_SHARED_LIBS=OFF
#		lzma=OFF
#		zstd=OFF
#)
