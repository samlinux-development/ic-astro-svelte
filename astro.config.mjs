import { defineConfig } from 'astro/config';
import svelte from "@astrojs/svelte";

import environment from "vite-plugin-environment";
import dotenv from "dotenv";

dotenv.config();

// https://astro.build/config
export default defineConfig({
  integrations: [svelte()],

  vite: {
    plugins: [
      environment("all", { prefix: "CANISTER_" }),
      environment("all", { prefix: "DFX_" }),
    ],
    
  },
});