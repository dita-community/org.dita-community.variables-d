<?xml version="1.0" encoding="UTF-8"?>
<!-- Defines elements for defining "variables" and variable references -->
<!-- that are metadata based.                                      -->
<!-- This domain may be used in maps and topics as all of the elements defined -->
<!-- in it are sensible in both contexts.                          -->
<!-- Copyright (c) 2014 Eliot Kimber                               -->
<!--                                                               -->

<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!ENTITY % dc-variable-definitions
                       "dc-variable-definitions"                     >
<!ENTITY % dc-variable-definition
                       "dc-variable-definition"                      >
<!ENTITY % dc-variable-definition-fallback
                       "dc-variable-definition-fallback"             >
<!ENTITY % dc-variableref
                       "dc-variableref"                              >
<!ENTITY % dc-variableref_keyword
                       "dc-variableref_keyword"                      >

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!--                    LONG NAME: Variable Definitions            -->
<!ENTITY % dc-variable-definitions.content
                       "(                         (%dc-variable-definition; |
                          %dc-variable-definition-fallback;)* |
                         (%dc-variable-definitions;)*)"
>
<!ENTITY % dc-variable-definitions.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  dc-variable-definitions %dc-variable-definitions.content;>
<!ATTLIST  dc-variable-definitions %dc-variable-definitions.attributes;>


<!--                    LONG NAME: Variable Definition             -->
<!ENTITY % dc-variable-definition.content
                       "(%data.cnt;)*"
>
<!ENTITY % dc-variable-definition.attributes
              "name
                          CDATA
                                    #REQUIRED
               value
                          CDATA
                                    #IMPLIED
               %univ-atts;"
>
<!ELEMENT  dc-variable-definition %dc-variable-definition.content;>
<!ATTLIST  dc-variable-definition %dc-variable-definition.attributes;>


<!--                    LONG NAME: Variable Definitions            -->
<!ENTITY % dc-variable-definition-fallback.content
                       "(%data.cnt;)*"
>
<!ENTITY % dc-variable-definition-fallback.attributes
              "name
                          CDATA
                                    #REQUIRED
               value
                          CDATA
                                    #IMPLIED
               %univ-atts;"
>
<!ELEMENT  dc-variable-definition-fallback %dc-variable-definition-fallback.content;>
<!ATTLIST  dc-variable-definition-fallback %dc-variable-definition-fallback.attributes;>


<!--                    LONG NAME: Variable Reference (text)       -->
<!ENTITY % dc-variableref.content
                       "(#PCDATA)*"
>
<!ENTITY % dc-variableref.attributes
              "%base-attribute-extensions;
               %univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  dc-variableref %dc-variableref.content;>
<!ATTLIST  dc-variableref %dc-variableref.attributes;>


<!--                    LONG NAME: Variable Reference (keyword)    -->
<!ENTITY % dc-variableref_keyword.content
                       "(#PCDATA)*"
>
<!ENTITY % dc-variableref_keyword.attributes
              "%univ-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  dc-variableref_keyword %dc-variableref_keyword.content;>
<!ATTLIST  dc-variableref_keyword %dc-variableref_keyword.attributes;>



<!-- ============================================================= -->
<!--             SPECIALIZATION ATTRIBUTE DECLARATIONS             -->
<!-- ============================================================= -->
  
<!ATTLIST  dc-variable-definitions %global-atts;  class CDATA "+ topic/data dc-variable-d/dc-variable-definitions ">
<!ATTLIST  dc-variable-definition %global-atts;  class CDATA "+ topic/data dc-variable-d/dc-variable-definition ">
<!ATTLIST  dc-variable-definition-fallback %global-atts;  class CDATA "+ topic/data dc-variable-d/dc-variable-definition-fallback ">
<!ATTLIST  dc-variableref %global-atts;  class CDATA "+ topic/text dc-variable-d/dc-variableref ">
<!ATTLIST  dc-variableref_keyword %global-atts;  class CDATA "+ topic/text dc-variable-d/dc-variableref_keyword ">

<!-- ================== End of DITA Community Variables Domain ==================== -->
 