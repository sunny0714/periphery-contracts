import { exec } from "child_process"
import util from "util"
const execute = util.promisify(exec);

async function deploy(executeCmd: string) {
    let stdout;
    let stderr: string;
    try {
        console.log(executeCmd)
        const { stdout: _stdout, stderr: _stderr } = await execute(executeCmd)
        stdout = _stdout;
        stderr = _stderr;
        console.log("_stdout: ", _stdout)
        console.log("_stderr: ", _stderr)
    } catch (err: any) {
        console.log(err);
        stdout = err?.stdout;
        stderr = err?.stderr;
    }
}

let cmd:string = "forge create --rpc-url http://127.0.0.1:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 src/ContractV7.sol:ContractV7 --constructor-args (0xc6fa133f3290e14Ad91C7449f8D8101A6f894E25,0x398f06007A9980AE041cc91745CcB72f24d9B195,0x19ab453c000000000000000000000000c6fa133f3290e14ad91c7449f8d8101a6f894e25) [(0x6012e27f7Cee8d88A14e710dcb7dfe397f43411B,0,[0x1f931c1c])]";

deploy(cmd)
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });


