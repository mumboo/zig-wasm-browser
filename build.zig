const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{
        .default_target = .{ .cpu_arch = .wasm32, .os_tag = .freestanding },
    });
    const optimize = b.standardOptimizeOption(.{});

    const lib = b.addSharedLibrary(.{
        .name = "lib",
        .root_source_file = .{ .path = "src/main.zig" },
        .target = target,
        .optimize = optimize,
    });

    lib.rdynamic = true;
    //28kb (strip = false) vs 1kb (strip = true)
    lib.strip = true;

    b.installArtifact(lib);

    b.installLibFile("src/index.html", "index.html");
    b.installLibFile("src/index.js", "index.js");
}

