<?xml version="1.0" encoding="utf-8"?>
<!-- =============================================================
     DITA Community Variables Domain
     
     Defines elements for defining "variables" and variable references
     that are metadata based.
     
     This domain may be used in maps and topics as all of the elements defined
     in it are sensible in both contexts.
     
     Copyright (c) 2014 Eliot Kimber
     
     ============================================================= -->
     
 <!ENTITY % dc-variable-definitions "dc-variable-definitions" >
 <!ENTITY % dc-variable-definition  "dc-variable-definition" >
 <!ENTITY % dc-variable-definition-fallback  "dc-variable-definition-fallback" >
 <!ENTITY % dc-variableref_keyword  "dc-variableref_keyword" >
 <!ENTITY % dc-variableref_text     "dc-variableref_text" >



<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->


<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->


<!-- A set of variable definitions. The optional title allows for 
     adding a distinguishing title to the variable set.
  -->
<!ENTITY % dc-variable-definitions.content
"
  ((%title;)?,
   ((%dc-variable-definition; |
     %dc-variable-definition-fallback;)* |
    (%dc-variable-definitions;)*)
  )
  " 
>
<!ENTITY % dc-variable-definitions.attributes
 "
   %id-atts;
  %localization-atts;
  base       
    CDATA                            
    #IMPLIED
  %base-attribute-extensions;
  outputclass
    CDATA
    #IMPLIED
 "
> 
<!ELEMENT dc-variable-definitions %dc-variable-definitions.content; >
<!ATTLIST dc-variable-definitions %dc-variable-definitions.attributes; >


<!-- Variable Definition:

     Defines a single variable.

     The value of the @name attribute serves as the variable name,
     by which it is referenced from variable-ref elements.
     
     The value of the variable may be specified using either the @value
     attribute or put in content. If there is both content and a @value
     attribute, the content is ignored and the @value attribute is used.
     
     Variable definitions should not be nested.
     
 -->
<!ENTITY % dc-variable-definition.content
"
  (%data.cnt;)*
  " 
>
<!ENTITY % dc-variable-definition.attributes
 "
  name
     CDATA
     #REQUIRED
  value
     CDATA
     #IMPLIED
  %id-atts;
  %localization-atts;
  base       
    CDATA                            
    #IMPLIED
  %base-attribute-extensions;
  outputclass
    CDATA
    #IMPLIED
 "
> 
<!ELEMENT dc-variable-definition %dc-variable-definition.content; >
<!ATTLIST dc-variable-definition %dc-variable-definition.attributes; >

<!-- Variable Definition-fallback:

     Defines a single variable to be used as a fallback value within
     topics when no other value of the variable is declared in a higher
     context. When specified in a topic prolog, it defines the fallback
     value for that topic and all of its descendants. The fallback
     value is used if and only if there is no other in-scope definition
     of the same variable name at the point of reference, including
     declarations that occur in the same scope as the fallbck definition.

     The value of the @name attribute serves as the variable name,
     by which it is referenced from variable-ref elements.
     
     The value of the variable may be specified using either the @value
     attribute or put in content. If there is both content and a @value
     attribute, the content is ignored and the @value attribute is used.
     
     Variable definitions should not be nested.
     
 -->
<!ENTITY % dc-variable-definition-fallback.content
"
  (%data.cnt;)*
  " 
>
<!ENTITY % dc-variable-definition-fallback.attributes
 "
  name
     CDATA
     #REQUIRED
  value
     CDATA
     #IMPLIED
  %id-atts;
  %localization-atts;
  base       
    CDATA                            
    #IMPLIED
  %base-attribute-extensions;
  outputclass
    CDATA
    #IMPLIED
 "
> 
<!ELEMENT dc-variable-definition-fallback %dc-variable-definition-fallback.content; >
<!ATTLIST dc-variable-definition-fallback %dc-variable-definition-fallback.attributes; >

<!-- Variable Reference: 

     A reference to a variable as defined by a variable definition
     element.
     
     The content of the element is the name of the variable.
     
     Note: Because <text> and <keyword> are not in all contexts, there are
     two variants of this element one from <keyword> and one 
     from <text>. Their semantics and behavior are identical.
     
  -->
<!ENTITY % dc-variableref_keyword.content
"
  (#PCDATA)*
  " 
>
<!ENTITY % dc-variableref_keyword.attributes
 "
  %id-atts;
  %localization-atts;
  base       
    CDATA                            
    #IMPLIED
  %base-attribute-extensions;
  outputclass
    CDATA
    #IMPLIED
 "
> 
<!ELEMENT dc-variableref_keyword %dc-variableref_keyword.content; >
<!ATTLIST dc-variableref_keyword %dc-variableref_keyword.attributes; >

<!ENTITY % dc-variableref_text.content
"
  (#PCDATA)*
  " 
>
<!ENTITY % dc-variableref_text.attributes
 "
  %id-atts;
  %localization-atts;
  base       
    CDATA                            
    #IMPLIED
  %base-attribute-extensions;
  outputclass
    CDATA
    #IMPLIED
 "
> 
<!ELEMENT dc-variableref_text %dc-variableref_text.content; >
<!ATTLIST dc-variableref_text %dc-variableref_text.attributes; >




<!-- ============================================================= -->
<!--                    SPECIALIZATION ATTRIBUTE DECLARATIONS      -->
<!-- ============================================================= -->

<!ATTLIST dc-variable-definitions %global-atts;  class CDATA "+ topic/data    dc-variables-d/dc-variable-definitions ">
<!ATTLIST dc-variable-definition  %global-atts;  class CDATA "+ topic/data    dc-variables-d/dc-variable-definition ">
<!ATTLIST dc-variable-definition-fallback  %global-atts;  class CDATA "+ topic/data    dc-variables-d/dc-variable-definition-fallback ">
<!ATTLIST dc-variableref_keyword  %global-atts;  class CDATA "+ topic/keyword dc-variables-d/dc-variableref_keyword ">
<!ATTLIST dc-variableref_text     %global-atts;  class CDATA "+ topic/text    dc-variables-d/dc-variableref_text ">


<!-- ================== End Variables Domain ==================== -->