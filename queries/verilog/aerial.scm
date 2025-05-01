(module_declaration
  (module_ansi_header
    name: (simple_identifier) @name)
  (#set! "kind" "Module")) @symbol

(package_declaration
  name: (simple_identifier) @name
  (#set! "kind" "Module")) @symbol

(function_declaration
  (function_body_declaration
    name: (simple_identifier) @name)
  (#set! "kind" "Function")) @symbol

(task_declaration
  (task_body_declaration
    name: (simple_identifier) @name)
  (#set! "kind" "Function")) @symbol

(always_construct
  (always_keyword) @name
  (#set! "kind" "Event")) @symbol

(initial_construct
  (#set! "kind" "Event")) @symbol

(module_instantiation
  instance_type: (simple_identifier) @inst_type
  (hierarchical_instance
    (name_of_instance
      instance_name: (simple_identifier) @name))
  (#set! "kind" "Method")) @symbol
