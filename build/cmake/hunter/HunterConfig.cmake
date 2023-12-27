include_guard()

# LibTIFF Dependencies
hunter_config(zstd
	URL "https://codeload.github.com/facebook/zstd/zip/tags/v1.5.5"
	VERSION "1.5.5.0"
	SHA1 "f9ba91e59dfbd100e04fbf737f58c7c2fffb0918"
)

# LibTIFF / LibPNG Dependencies
hunter_config(ZLIB
	URL "https://github.com/Telefrag-Software/zlib/archive/refs/heads/hunter-1.3.0.0.zip"
	VERSION "1.3.0.0"
	SHA1 "553c130c05f514e5db8b4ae623347e717674a4d1"
)

# wxWidgets Dependencies
hunter_config(CatchSelfTest
	URL "https://codeload.github.com/catchorg/catch2/zip/tags/v3.5.0"
	VERSION "3.5.0.0"
	SHA1 "fd37a71ebf9455181a44fe7e2a0d56bb3c07b973"
)

hunter_config(EXPAT
	URL "https://codeload.github.com/libexpat/libexpat/zip/tags/R_2_5_0"
	VERSION "2.5.0.0"
	SHA1 "67d6afffe9719484e9b1614c6759a4ca4281e2b6"
)

hunter_config(JPEG
	URL "https://codeload.github.com/libjpeg-turbo/libjpeg-turbo/zip/tags/3.0.1"
	VERSION "3.0.1.0"
	SHA1 "cd1ab159d6dccb7e14973dc4b72fe5f25a492fe2"
)

hunter_config(liblzma
	URL "https://codeload.github.com/tukaani-project/xz/zip/tags/v5.4.5"
	VERSION "5.4.5"
	SHA1 "99d49eecca208460832e422148c0cb1f3c8ff7cd"
	CMAKE_ARGS
		BUILD_TESTING=OFF
)

hunter_config(NanoSVG
	URL "https://github.com/Telefrag-Software/nanosvg/archive/refs/heads/hunter-2023-11-22.zip"
	VERSION "2023-11-22"
	SHA1 "69a5e869e95234e734f5200987cf6ce3811148ba"
)

hunter_config(PCRE2
	URL "https://codeload.github.com/Telefrag-Software/pcre/zip/tags/v10.43"
	VERSION "10.43.0"
	SHA1 "5601b530d91d74c4e2da79ade0e314087d413e6c"
)

hunter_config(png
	URL "https://github.com/Telefrag-Software/libpng/archive/refs/heads/hunter-1.6.40.0.zip"
	VERSION "1.6.40.0"
	SHA1 "caacb021be2661cf3d83f5892219fc98a910ec93"
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
