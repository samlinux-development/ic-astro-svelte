<script lang="ts">
  // import the backend actor
  import { createActor } from '../declarations/backend';

  // some text
  const about = "This is a starter dApp for the Internet Computer built with Astro and Svelte.";
  const info = "This dApp is a simple glossary. You can query a fictitious ascending ID entry and get a matching entry back. There is a small database, implemented as stable hash-map. It is filled via an installer authorized function."

  // some types
  type Entry = {
    name: string;
    desc: string;
  };
  
  // some variables
  let glossary:Entry = {name: '', desc: ''};
  let idGlossary: string;
  let idBigInt: bigint;

  /**
   * Handle the on click and submit event
   */
  const handleOnClick = async () => {
    try {
      // Create an actor to interact with the IC for a particular canister ID
      const actor = createActor(process.env.CANISTER_ID_BACKEND, { agentOptions: {  } });
      
      // Convert the id to a bigint
      idBigInt = BigInt(idGlossary);

      // Call the IC
      const result = await actor.get(idBigInt);

      // handle the result
      if(result[0]){
        glossary = result[0];
        glossary.name = 'ID: ' + idBigInt + ' - ' + glossary.name;
      } else {
        glossary = {name: '', desc: 'Glossary ID not found!'};
      }

    } catch (err: unknown) {
      console.error(err);
    }
  };
 
 </script>
 
<div>
  <h1>{about}</h1>
  <div>{info}</div>
  <h2>Query an Glossary entry</h2>
  <form on:submit|preventDefault={handleOnClick}>
    <div>
      <label for="name">Glossary ID: </label>
      <input id="id" alt="Id" type="text" bind:value={idGlossary}/>
      <button type="submit" on:click={handleOnClick}>Click | Enter</button>
    </div>

    <div id="gloassary">
      <h1>{glossary.name}</h1> 
      <div>{glossary.desc}</div>
    </div>
  </form>
</div>

<style>
  #gloassary {
    margin-top: 20px;
    border: 1px solid #ccc;
    padding: 10px;
  }
</style>