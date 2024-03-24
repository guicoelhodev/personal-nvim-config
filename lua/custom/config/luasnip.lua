local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require('luasnip.extras.fmt').fmt
local rep = require('luasnip.extras').rep
local f = ls.function_node
local l = require('luasnip.extras').l

-----------------------------------------------------------------------------------------
------------------------------- REACT TYPESCRIPT CONFIG ---------------------------------
-----------------------------------------------------------------------------------------
--
ls.add_snippets('typescriptreact', {
  s(
    'mkc', -- make component
    fmt(
      [[
import {{ FC }} from 'react';

type T{} = {{}};

export const {}: FC<T{}> = (props) => {{
  return (
    <div>{}</div>
  );
}};
      ]],
      {
        i(1, 'MyComponent'),
        rep(1),
        rep(1),
        rep(1),
      }
    )
  ),
})

ls.add_snippets('typescriptreact', {
  s(
    'us', -- create useState
    fmt(
      [[
      const [ {}, set{setter} ] = useState();
    ]],
      {
        i(1, 'state'),
        setter = l(l._1:sub(1, 1):upper() .. l._1:sub(2, -1), 1),
      }
    )
  ),
})

ls.add_snippets('typescriptreact', {
  s(
    'fn', -- create function
    fmt(
      [[
      const {} = (arg) => {{

      }};
    ]],
      {
        i(1, 'function'),
      }
    )
  ),
})

ls.add_snippets('typescriptreact', {
  s(
    'xfn', -- create export function
    fmt(
      [[
      export const {} = (arg) => {{

      }};
    ]],
      {
        i(1, 'function'),
      }
    )
  ),
})

ls.add_snippets('typescriptreact', {
  s(
    'afn', -- create async function
    fmt(
      [[
      const {} = async (arg) => {{

      }};
    ]],
      {
        i(1, 'function'),
      }
    )
  ),
})

----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

return {}
