;; Spell check comments

((comment) @spell)



;; Spell check strings

((string) @spell)



;; Spell check template strings

((template_string) @spell)



;; Spell check JSX text content

((jsx_text) @spell)



;; Spell check function names

((function_declaration name: (identifier) @spell))



;; Spell check variable names

((variable_declarator name: (identifier) @spell))




;; Spell check object property keys

((pair key: (property_identifier) @spell))



;; Optional: Spell check type identifiers (e.g., custom types or interfaces)

((type_identifier) @spell)
