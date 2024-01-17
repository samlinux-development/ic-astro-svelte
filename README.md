# Astro Starter Kit: Basics with Svelte and Internet Computer

## Preparations
```sh
mkdir myapp && cd myapp
npx degit https://github.com/samlinux-development/ic-astro-svelte
npm install
dfx start --clean --background
```


## Set adminPrincipal in backend/main.mo

```sh
# Get the principal of your local dfx identity
dfx identity use <identity-name>
dfx identity get-principal

# replace the adminPrincipal in backend/main.mo with the principal of your local dfx identity
# let adminPrincipal = "yziij-iujbv-ygpuv-q4dzb-aywuv-kz5cw-caeo5-iysan-shdls-nqy5g-aae";
```

## Deploy to local Internet Computer replica

```sh
dfx deploy 
dfx canister call backend installer
```

## Deploy to the Motoko Playground

```sh 
dfx deploy --playground
dfx canister --network playground call backend installer
```


