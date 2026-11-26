<?xml version="1.0" encoding="UTF-8"?>
<solution name="planestudios.razonador" uuid="43f03e70-0bde-4d08-ac41-fb8b91c25994" moduleVersion="0">
  <models>
    <modelRoot contentPath="${module}" type="java_classes">
      <sourceRoot location="lib/razonador.jar" />
    </modelRoot>
  </models>
  <facets>
    <facet type="java" compile="mps" classes="mps" ext="no">
      <classes generated="true" path="${module}/classes_gen" />
      <library location="${module}/lib/razonador.jar" />
    </facet>
  </facets>
  <dependencies>
    <dependency reexport="false">6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)</dependency>
  </dependencies>
  <dependencyVersions>
    <module reference="6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)" version="0" />
    <module reference="43f03e70-0bde-4d08-ac41-fb8b91c25994(planestudios.razonador)" version="0" />
  </dependencyVersions>
</solution>
