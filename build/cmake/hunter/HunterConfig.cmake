include_guard()

# LibTIFF Dependencies
#hunter_config(lzma
#	URL "https://github.com/Telefrag-Software/lzma/archive/refs/heads/hunter-2.5.3.zip"
#	VERSION "2.5.3"
#	SHA1 "c541a20b4c5bd9283d83be28b1582ce233a2683e"
#)
#
#hunter_config(zstd
#	URL "https://github.com/Telefrag-Software/zstd/archive/refs/heads/hunter-1.5.0.zip"
#	VERSION "1.5.0"
#	SHA1 "724c091ed2c6ae6e5219111a75d021c42d41b892"
#)

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
	URL "https://github.com/Telefrag-Software/libpng/archive/refs/heads/hunter-wx-099e55499.zip"
	VERSION "099e55499"
	SHA1 "35ff4e804dde7ded8984a162ead3876f7da888c5"
	CMAKE_ARGS
		BUILD_SHARED_LIBS=OFF
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

hunter_config(ZLIB
	URL "https://github.com/Telefrag-Software/zlib/archive/refs/heads/hunter-1.2.12.1.zip"
	VERSION "1.2.12.1"
	SHA1 "13fe010169c4cfd3a55e98f6334a322149c5dca4"
)
