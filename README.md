# extropy ctf

To play go to [Extropyio CTF](https://www.solidityctf.xyz/)

1. Copy `env.example` to `.env`

1. Update env with `PRIVATE_KEY`, `API_KEY` (from alchemy)

1. Creat solution in [`/Huff/0.huff`](./Huff/) directory

1. Compile bytecode

   ```sh
   huffc Huff/0.huff --bytecode
   ```

1. Add bytecode solutions to `SOLUTION_0` etc. inside your `.env` (There's better ways to do it, feel free to improve how to deploy bytecode)

   > One way could be passing your bytcode as argument in deploy scripts

1. Deploy you contract bytecode by running
   ```sh
   npm run 0
   ```

## Gas benchmark

|     | level      | huff | yul  | solidity |
| --- | ---------- | ---- | ---- | -------- |
| 0   | Return 42  | 2918 | 3039 | 3211     |
| 1   | Matix add  | 5381 | 6097 | 7182     |
| 2   | Sort array | 6067 | 8629 | 19017    |
| 3   | ab.encode  | 3368 | 3960 | 4750     |
