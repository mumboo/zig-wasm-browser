async function loadWasm(path, inputs) {
    const file = await fetch(path);
    const bytes = await file.arrayBuffer();

    const input = {
        env: {
            ...inputs,
        }
    };
    const { instance } = await WebAssembly.instantiate(bytes, input);
    return instance;
}

async function test() {
    const inputs = {
        print: (result) => console.log("Result: ", result),
    };

    const instance = await loadWasm("./lib.wasm", inputs);
    instance.exports.add(1, 2);
}

test();
