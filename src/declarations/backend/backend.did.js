export const idlFactory = ({ IDL }) => {
  const Entry = IDL.Record({ 'desc' : IDL.Text, 'name' : IDL.Text });
  const Result = IDL.Variant({ 'ok' : IDL.Null, 'err' : IDL.Null });
  return IDL.Service({
    'get' : IDL.Func([IDL.Nat], [IDL.Opt(Entry)], ['query']),
    'init' : IDL.Func([], [Result], []),
    'set' : IDL.Func([IDL.Nat, Entry], [Result], []),
  });
};
export const init = ({ IDL }) => { return []; };
