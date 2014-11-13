org.dita-community.variables
============================

Simple "variable" mechanism with nearest-definition-wins semantics. 

Provides specializations of data element for declaring variables and specializations of text and keyword for referencing variables.

Variables can be defined at any level of a map or within topics.

The closest ancestor variable definition to a reference is used. Within topics, can define fallback values to use for variables
for which no definition is found.

The variables mechanism reflects typical programming variable semantics, where the nearest, rather than highest, variable definition 
wins. This makes it the inverse of key-based variables, where the highest definition wins and there's no facility for fallback values
defined in topics.

The elements types are:

* dc-variable-definitions: Holds one or more dc-variable-definition elements. Can be used in maps, topicrefs, or within topics.

* dc-variable-definition: Defines a single variable. The @name attribute is the variable name and the @value or element content
is the variable value. The @value attribute, if specified, takes precedence over any content.

* dc-variable-definition-fallback: Defines a fallback value to use for the variable name if no definition is found
in the current ancestry.

* dc-variableref, dc-variableref_keyword: Refer to variables defined in the hierarchy. The content of 
the element is the name of the variable being referenced (this provides a natural fallback value when there
is no definition of the variable at all or variable processing is not available).
