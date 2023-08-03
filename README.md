# extropy ctf

1. Copy `env.example` to `.env`

1. Update env with `PRIVATE_KEY`, `API_KEY` (from alchemy)

1. Creat solution in [`/Huff/0.huff`](./Huff/) directory

1. Compile bytecode

   ```sh
   huffc Huff/0.huff --bytecode
   ```

1. Add bytecode solutions `SOLUTION_0` etc.

1. Run `npm run 0`
