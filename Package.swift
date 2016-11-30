import PackageDescription

#if os(Linux)
	let pkgConfig = "libwebsockets-dev"
#else
	let pkgConfig = "libwebsockets"
#endif

let package = Package(
	name: "Clibwebsockets",
	pkgConfig: pkgConfig,
	providers: [.Brew("libwebsockets"), .Apt("libwebsockets-dev")]
)
