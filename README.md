### Description

This is a minimal zig + wasm example to be used in a browser

### Build and Run

1. Run `git clone https://github.com/mumboo/zig-wasm-browser.git` command to clone a repository
2. Run `cd zig-wasm-browser` to change directory to repository root folder
3. Run `zig build` command in your terminal
    - Output will be located in `zig-out/lib` folder
4. Start http server from `zig-out/lib` folder
5. In a browser go to an address of your running server (e.g. `127.0.0.1:5500/index.html`)
6. Open developer console and make sure you see `Result: 3` output
