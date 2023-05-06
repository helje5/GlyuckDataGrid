// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "GlyuckDataGrid",
    platforms: [
        .iOS(.v9), .macOS(.v10_10), .tvOS(.v9), .watchOS(.v2)
    ],
    products: [
        .library(name: "GlyuckDataGrid", targets: ["GlyuckDataGrid"])
    ],
    targets: [
        .target(name: "GlyuckDataGrid"),
        /*
        .testTarget(
            name: "GlyuckDataGridTests",
            dependencies: ["GlyuckDataGrid"],
            path: "Example/Tests"
        )
         */
    ]
)
