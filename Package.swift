// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "Clibwebsockets",
    pkgConfig: "libwebsockets",
    dependencies: [
        .package(url: "git://github.com/NobodyNada/COpenSSL", from: "0.0.0")
    ]
)
