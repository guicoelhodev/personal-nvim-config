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

local function createTag(tagName)
  return s(tagName, fmt('<{}>{}</{}>', { t(tagName), i(0), t(tagName) }))
end

ls.add_snippets('typescriptreact', {
  s(
    'us', -- create useState
    fmt(
      [[
      const [ {}, set{setter} ] = useState({});
    ]],
      {
        i(1, 'state'),
        setter = l(l._1:sub(1, 1):upper() .. l._1:sub(2, -1), 1),
        i(2, ''),
      }
    )
  ),
})

ls.add_snippets('typescriptreact', {
  s(
    'usef', -- create useEffect
    fmt(
      [[

      useEffect(() => {{

      }}, [{}])

    ]],
      {
        i(1, 'state'),
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

ls.add_snippets('typescriptreact', {
  s(
    'test', -- create base test
    fmt(
      [[
        it('{}', () => {{
          
            const screen = screen(<{} />);
        }});
      ]],
      { i(1, 'test description'), i(2, 'Component') }
    )
  ),
})

------------------------------------------------- CREATE HTML TAGS ------------------------------------------

local commonTags = { 'div', 'section', 'article', 'header', 'footer', 'aside', 'main', 'ul', 'li', 'ol' }

local snippets = {}

for _, element in ipairs(commonTags) do
  table.insert(snippets, createTag(element))
end

ls.add_snippets('typescriptreact', snippets)

------------------------------------------------- LARGE SNIPPETS -----------------------------------------------

ls.add_snippets('typescriptreact', {
  s(
    'mkcomp', -- make component
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
    'mktest', -- make new test
    fmt(
      [[
        import {{ describe, it, expect }} from 'vitest';
        import {{ render }} from '@testing-library/react';
        import {{ {} }} from '..';

        describe('Suite test for {} , () => {{
          it('Should be render correcly', () => {{
            const screen = screen(<{} />);

            expect(screen.container).toBeInTheDocument()
          }})

        }})
      ]],
      {
        i(1, 'Component'),
        rep(1),
        rep(1),
      }
    )
  ),
})

----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

return {}
