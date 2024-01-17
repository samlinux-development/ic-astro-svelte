import type { Principal } from '@dfinity/principal';
import type { ActorMethod } from '@dfinity/agent';

export interface Entry { 'desc' : string, 'name' : string }
export type Result = { 'ok' : null } |
  { 'err' : null };
export interface _SERVICE {
  'get' : ActorMethod<[bigint], [] | [Entry]>,
  'init' : ActorMethod<[], Result>,
  'set' : ActorMethod<[bigint, Entry], Result>,
}
