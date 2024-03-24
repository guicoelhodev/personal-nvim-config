local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require('luasnip.extras.fmt').fmt
local rep = require('luasnip.extras').rep

--- REACT Typescript config
--
ls.add_snippets('typescriptreact', {
  s(
    'mkc',
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

return {}
