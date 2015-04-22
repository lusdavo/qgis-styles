<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="2.6.1-Brighton" minimumScale="-4.65661e-10" maximumScale="1e+08" simplifyDrawingHints="1" minLabelScale="0" maxLabelScale="1e+08" simplifyDrawingTol="1" simplifyMaxScale="1" hasScaleBasedVisibilityFlag="0" simplifyLocal="1" scaleBasedLabelVisibilityFlag="0">
  <edittypes>
    <edittype widgetv2type="TextEdit" name="OGC_FID">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="GEOMETRY">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="osm_id">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="name">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="highway">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="waterway">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="aerialway">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="barrier">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="man_made">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
    <edittype widgetv2type="TextEdit" name="other_tags">
      <widgetv2config IsMultiline="0" fieldEditable="1" UseHtml="0" labelOnTop="0"/>
    </edittype>
  </edittypes>
  <renderer-v2 symbollevels="0" type="RuleRenderer">
    <rules key="{aeacc5a5-75ed-460b-95db-f96ab6e9758a}">
      <rule filter="&quot;highway&quot; is not null" key="{7500d3bf-9b1c-4c4a-8fc9-6b39147809f5}" label="roads">
        <rule filter="&quot;highway&quot; = 'motorway' " key="{a906f848-9b41-46ee-bc59-efcd289c95f5}" label="motorway">
          <rule filter="&quot;other_tags&quot; like '%&quot;layer&quot;=>&quot;-%' = 0" key="{7f53bfa9-60e4-49c0-8880-f5c61326f36c}" symbol="0" label="motorway"/>
          <rule filter="&quot;other_tags&quot; like '%&quot;layer&quot;=>&quot;-%' = 1" key="{dd6071fe-6881-43d7-a498-e6060370bb55}" symbol="1" label="tunnel"/>
        </rule>
        <rule filter="&quot;highway&quot; IN ( 'motorway_link','trunk','primary')" key="{690996c0-ac1e-4a40-82a1-c0fd81284d2b}" label="trunk &amp; primary">
          <rule filter="&quot;other_tags&quot; like '%&quot;layer&quot;=>&quot;-%' = 0" key="{065d71be-d3ea-437c-8110-69d0ddf86f2b}" symbol="2" label="trunk &amp; primary"/>
          <rule filter="&quot;other_tags&quot; like '%&quot;layer&quot;=>&quot;-%' = 1" key="{d55334ca-8dc6-409e-857b-749ecf131931}" symbol="3" label="tunnel"/>
        </rule>
        <rule scalemaxdenom="250000" filter="&quot;highway&quot; IN ( 'trunk_link','primary_link','secondary','secondary_link','road','tertiary','tertiary_link','unclassified')" key="{77791ddf-a699-4d38-a542-9813d2659e7b}" symbol="4" scalemindenom="500" label="roads"/>
        <rule scalemaxdenom="100000" filter="&quot;highway&quot; is not null AND NOT ( &quot;highway&quot;  =  'footway' OR  &quot;highway&quot; = 'path' )" key="{821d4102-70b3-4044-a11c-463a04e158ca}" symbol="5" scalemindenom="2" label="minor roads"/>
        <rule scalemaxdenom="25000" filter="&quot;highway&quot; is not null AND NOT ( &quot;highway&quot;  =  'footway' OR  &quot;highway&quot; = 'path' )" key="{cc0eaf13-8bfe-44e1-9bc7-508c4348b9db}" symbol="6" scalemindenom="1000" label="minor roads"/>
        <rule scalemaxdenom="25000" filter=" &quot;highway&quot;  =  'footway' OR  &quot;highway&quot; = 'path' OR  &quot;highway&quot; = 'track' " key="{8768d85b-6f7e-4937-8a13-52e54339ea5d}" symbol="7" scalemindenom="1" label="path"/>
      </rule>
      <rule filter="&quot;other_tags&quot; LIKE '%&quot;rail&quot;%' or &quot;other_tags&quot; LIKE '%&quot;railway&quot;%'" key="{8494cbe5-92d5-4efe-9758-3edf02f23737}" symbol="8" label="rails"/>
      <rule filter="&quot;waterway&quot; = 'river'" key="{7933b4df-c897-4c72-8c77-8a8411bc0c6b}" label="river">
        <rule scalemaxdenom="125000" key="{149e30e5-7307-4ed0-aea7-9c99eaf6ddc7}" symbol="9" label="river"/>
        <rule key="{64eeb553-8045-479f-a510-e6bbecc7616b}" symbol="10" scalemindenom="125000" label="river"/>
      </rule>
      <rule scalemaxdenom="5000" filter=" &quot;other_tags&quot;  LIKE '%&quot;aeroway&quot;=>&quot;runway&quot;%'" key="{4dfb6d9f-92fd-4d30-ac11-ee80b494a6d9}" symbol="11" scalemindenom="500" label="runway"/>
    </rules>
    <symbols>
      <symbol alpha="1" type="line" name="0">
        <layer pass="18" class="SimpleLine" locked="0">
          <prop k="capstyle" v="round"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="round"/>
          <prop k="line_color" v="255,206,128,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="2.46112"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0,0"/>
        </layer>
      </symbol>
      <symbol alpha="0.235294" type="line" name="1">
        <layer pass="3" class="SimpleLine" locked="0">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="143,143,143,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="1.6"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0,0"/>
        </layer>
        <layer pass="4" class="SimpleLine" locked="0">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="round"/>
          <prop k="line_color" v="251,145,57,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="1.28"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" type="line" name="10">
        <layer pass="9" class="SimpleLine" locked="0">
          <prop k="capstyle" v="round"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="round"/>
          <prop k="line_color" v="182,217,255,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.2"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" type="line" name="11">
        <layer pass="14" class="SimpleLine" locked="0">
          <prop k="capstyle" v="round"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="round"/>
          <prop k="line_color" v="248,248,248,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="4"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" type="line" name="2">
        <layer pass="3" class="SimpleLine" locked="0">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="round"/>
          <prop k="line_color" v="255,223,105,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="2.2"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0,0"/>
        </layer>
      </symbol>
      <symbol alpha="0.247059" type="line" name="3">
        <layer pass="2" class="SimpleLine" locked="1">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="143,143,143,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="1.8"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0,0"/>
        </layer>
        <layer pass="3" class="SimpleLine" locked="0">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="round"/>
          <prop k="line_color" v="255,223,105,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="1.44"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" type="line" name="4">
        <layer pass="9" class="SimpleLine" locked="0">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="round"/>
          <prop k="line_color" v="255,255,255,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="2.1"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" type="line" name="5">
        <layer pass="6" class="SimpleLine" locked="0">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="round"/>
          <prop k="line_color" v="255,255,255,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.7"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" type="line" name="6">
        <layer pass="6" class="SimpleLine" locked="0">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="255,255,255,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.7"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" type="line" name="7">
        <layer pass="6" class="SimpleLine" locked="0">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="193,176,166,255"/>
          <prop k="line_style" v="dot"/>
          <prop k="line_width" v="0.6"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="5.55112e-17"/>
          <prop k="offset_map_unit_scale" v="0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0,0"/>
        </layer>
      </symbol>
      <symbol alpha="1" type="line" name="8">
        <layer pass="5" class="SimpleLine" locked="0">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="176,176,176,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.05"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0,0"/>
        </layer>
        <layer pass="0" class="MarkerLine" locked="0">
          <prop k="interval" v="7"/>
          <prop k="interval_map_unit_scale" v="0,0"/>
          <prop k="interval_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_along_line" v="0"/>
          <prop k="offset_along_line_map_unit_scale" v="0,0"/>
          <prop k="offset_along_line_unit" v="MM"/>
          <prop k="offset_map_unit_scale" v="0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="placement" v="interval"/>
          <prop k="rotate" v="1"/>
          <symbol alpha="1" type="marker" name="@8@1">
            <layer pass="0" class="SimpleMarker" locked="0">
              <prop k="angle" v="0"/>
              <prop k="color" v="255,0,0,255"/>
              <prop k="horizontal_anchor_point" v="1"/>
              <prop k="name" v="line"/>
              <prop k="offset" v="0,0"/>
              <prop k="offset_map_unit_scale" v="0,0"/>
              <prop k="offset_unit" v="MM"/>
              <prop k="outline_color" v="143,143,143,255"/>
              <prop k="outline_style" v="solid"/>
              <prop k="outline_width" v="0.05"/>
              <prop k="outline_width_map_unit_scale" v="0,0"/>
              <prop k="outline_width_unit" v="MM"/>
              <prop k="scale_method" v="area"/>
              <prop k="size" v="1"/>
              <prop k="size_map_unit_scale" v="0,0"/>
              <prop k="size_unit" v="MM"/>
              <prop k="vertical_anchor_point" v="1"/>
            </layer>
          </symbol>
        </layer>
      </symbol>
      <symbol alpha="1" type="line" name="9">
        <layer pass="9" class="SimpleLine" locked="0">
          <prop k="capstyle" v="round"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="round"/>
          <prop k="line_color" v="182,217,255,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.8"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="0,0"/>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <customproperties>
    <property key="labeling" value="pal"/>
    <property key="labeling/addDirectionSymbol" value="false"/>
    <property key="labeling/angleOffset" value="0"/>
    <property key="labeling/blendMode" value="0"/>
    <property key="labeling/bufferBlendMode" value="0"/>
    <property key="labeling/bufferColorA" value="255"/>
    <property key="labeling/bufferColorB" value="255"/>
    <property key="labeling/bufferColorG" value="255"/>
    <property key="labeling/bufferColorR" value="255"/>
    <property key="labeling/bufferDraw" value="true"/>
    <property key="labeling/bufferJoinStyle" value="64"/>
    <property key="labeling/bufferNoFill" value="false"/>
    <property key="labeling/bufferSize" value="0.5"/>
    <property key="labeling/bufferSizeInMapUnits" value="false"/>
    <property key="labeling/bufferSizeMapUnitMaxScale" value="0"/>
    <property key="labeling/bufferSizeMapUnitMinScale" value="0"/>
    <property key="labeling/bufferTransp" value="0"/>
    <property key="labeling/centroidInside" value="false"/>
    <property key="labeling/centroidWhole" value="false"/>
    <property key="labeling/dataDefined/BufferColor" value="1~~1~~CASE &#xa;WHEN &quot;highway&quot; = 'motorway' THEN  color_rgb( 250,158,37)&#xa;WHEN &quot;highway&quot; IN ('motorway_link','trunk','trunk_link','primary','primary_link') THEN color_rgb(255,225,104)&#xa;ELSE color_rgb(255,255,255)&#xa;END~~"/>
    <property key="labeling/dataDefined/BufferTransp" value="1~~1~~CASE &#xa;WHEN &quot;waterway&quot; = 'river' THEN 100&#xa;ELSE 0&#xa;END~~"/>
    <property key="labeling/dataDefined/Color" value="1~~1~~CASE &#xa;WHEN &quot;waterway&quot; = 'river' THEN  color_rgb( 71,97,132)&#xa;ELSE  color_rgb( 72,72,72)&#xa;END~~"/>
    <property key="labeling/decimals" value="3"/>
    <property key="labeling/displayAll" value="false"/>
    <property key="labeling/dist" value="0"/>
    <property key="labeling/distInMapUnits" value="false"/>
    <property key="labeling/distMapUnitMaxScale" value="0"/>
    <property key="labeling/distMapUnitMinScale" value="0"/>
    <property key="labeling/enabled" value="true"/>
    <property key="labeling/fieldName" value="CASE &#xa;WHEN (&quot;highway&quot; is not null or &quot;waterway&quot; = 'river') THEN &#xa;replace( replace( name, 'Avenue','Av.'), 'Boulevard', 'Bd.')&#xa;END"/>
    <property key="labeling/fontBold" value="true"/>
    <property key="labeling/fontCapitals" value="0"/>
    <property key="labeling/fontFamily" value="Cisalpin LT Std"/>
    <property key="labeling/fontItalic" value="false"/>
    <property key="labeling/fontLetterSpacing" value="0"/>
    <property key="labeling/fontLimitPixelSize" value="false"/>
    <property key="labeling/fontMaxPixelSize" value="10000"/>
    <property key="labeling/fontMinPixelSize" value="3"/>
    <property key="labeling/fontSize" value="10"/>
    <property key="labeling/fontSizeInMapUnits" value="false"/>
    <property key="labeling/fontSizeMapUnitMaxScale" value="0"/>
    <property key="labeling/fontSizeMapUnitMinScale" value="0"/>
    <property key="labeling/fontStrikeout" value="false"/>
    <property key="labeling/fontUnderline" value="false"/>
    <property key="labeling/fontWeight" value="75"/>
    <property key="labeling/fontWordSpacing" value="0"/>
    <property key="labeling/formatNumbers" value="false"/>
    <property key="labeling/isExpression" value="true"/>
    <property key="labeling/labelOffsetInMapUnits" value="true"/>
    <property key="labeling/labelOffsetMapUnitMaxScale" value="0"/>
    <property key="labeling/labelOffsetMapUnitMinScale" value="0"/>
    <property key="labeling/labelPerPart" value="false"/>
    <property key="labeling/leftDirectionSymbol" value="&lt;"/>
    <property key="labeling/limitNumLabels" value="false"/>
    <property key="labeling/maxCurvedCharAngleIn" value="20"/>
    <property key="labeling/maxCurvedCharAngleOut" value="-20"/>
    <property key="labeling/maxNumLabels" value="20"/>
    <property key="labeling/mergeLines" value="true"/>
    <property key="labeling/minFeatureSize" value="0"/>
    <property key="labeling/multilineAlign" value="0"/>
    <property key="labeling/multilineHeight" value="1"/>
    <property key="labeling/namedStyle" value="Bold"/>
    <property key="labeling/obstacle" value="true"/>
    <property key="labeling/placeDirectionSymbol" value="0"/>
    <property key="labeling/placement" value="3"/>
    <property key="labeling/placementFlags" value="9"/>
    <property key="labeling/plussign" value="false"/>
    <property key="labeling/preserveRotation" value="true"/>
    <property key="labeling/previewBkgrdColor" value="#ffffff"/>
    <property key="labeling/priority" value="3"/>
    <property key="labeling/quadOffset" value="4"/>
    <property key="labeling/repeatDistance" value="120"/>
    <property key="labeling/repeatDistanceMapUnitMaxScale" value="0"/>
    <property key="labeling/repeatDistanceMapUnitMinScale" value="0"/>
    <property key="labeling/repeatDistanceUnit" value="1"/>
    <property key="labeling/reverseDirectionSymbol" value="false"/>
    <property key="labeling/rightDirectionSymbol" value=">"/>
    <property key="labeling/scaleMax" value="10000000"/>
    <property key="labeling/scaleMin" value="1"/>
    <property key="labeling/scaleVisibility" value="true"/>
    <property key="labeling/shadowBlendMode" value="6"/>
    <property key="labeling/shadowColorB" value="0"/>
    <property key="labeling/shadowColorG" value="0"/>
    <property key="labeling/shadowColorR" value="0"/>
    <property key="labeling/shadowDraw" value="false"/>
    <property key="labeling/shadowOffsetAngle" value="135"/>
    <property key="labeling/shadowOffsetDist" value="1"/>
    <property key="labeling/shadowOffsetGlobal" value="true"/>
    <property key="labeling/shadowOffsetMapUnitMaxScale" value="0"/>
    <property key="labeling/shadowOffsetMapUnitMinScale" value="0"/>
    <property key="labeling/shadowOffsetUnits" value="1"/>
    <property key="labeling/shadowRadius" value="1.5"/>
    <property key="labeling/shadowRadiusAlphaOnly" value="false"/>
    <property key="labeling/shadowRadiusMapUnitMaxScale" value="0"/>
    <property key="labeling/shadowRadiusMapUnitMinScale" value="0"/>
    <property key="labeling/shadowRadiusUnits" value="1"/>
    <property key="labeling/shadowScale" value="100"/>
    <property key="labeling/shadowTransparency" value="30"/>
    <property key="labeling/shadowUnder" value="0"/>
    <property key="labeling/shapeBlendMode" value="0"/>
    <property key="labeling/shapeBorderColorA" value="255"/>
    <property key="labeling/shapeBorderColorB" value="128"/>
    <property key="labeling/shapeBorderColorG" value="128"/>
    <property key="labeling/shapeBorderColorR" value="128"/>
    <property key="labeling/shapeBorderWidth" value="0"/>
    <property key="labeling/shapeBorderWidthMapUnitMaxScale" value="0"/>
    <property key="labeling/shapeBorderWidthMapUnitMinScale" value="0"/>
    <property key="labeling/shapeBorderWidthUnits" value="1"/>
    <property key="labeling/shapeDraw" value="false"/>
    <property key="labeling/shapeFillColorA" value="255"/>
    <property key="labeling/shapeFillColorB" value="255"/>
    <property key="labeling/shapeFillColorG" value="255"/>
    <property key="labeling/shapeFillColorR" value="255"/>
    <property key="labeling/shapeJoinStyle" value="64"/>
    <property key="labeling/shapeOffsetMapUnitMaxScale" value="0"/>
    <property key="labeling/shapeOffsetMapUnitMinScale" value="0"/>
    <property key="labeling/shapeOffsetUnits" value="1"/>
    <property key="labeling/shapeOffsetX" value="0"/>
    <property key="labeling/shapeOffsetY" value="0"/>
    <property key="labeling/shapeRadiiMapUnitMaxScale" value="0"/>
    <property key="labeling/shapeRadiiMapUnitMinScale" value="0"/>
    <property key="labeling/shapeRadiiUnits" value="1"/>
    <property key="labeling/shapeRadiiX" value="0"/>
    <property key="labeling/shapeRadiiY" value="0"/>
    <property key="labeling/shapeRotation" value="0"/>
    <property key="labeling/shapeRotationType" value="0"/>
    <property key="labeling/shapeSVGFile" value=""/>
    <property key="labeling/shapeSizeMapUnitMaxScale" value="0"/>
    <property key="labeling/shapeSizeMapUnitMinScale" value="0"/>
    <property key="labeling/shapeSizeType" value="0"/>
    <property key="labeling/shapeSizeUnits" value="1"/>
    <property key="labeling/shapeSizeX" value="0"/>
    <property key="labeling/shapeSizeY" value="0"/>
    <property key="labeling/shapeTransparency" value="0"/>
    <property key="labeling/shapeType" value="0"/>
    <property key="labeling/textColorA" value="255"/>
    <property key="labeling/textColorB" value="95"/>
    <property key="labeling/textColorG" value="95"/>
    <property key="labeling/textColorR" value="95"/>
    <property key="labeling/textTransp" value="0"/>
    <property key="labeling/upsidedownLabels" value="0"/>
    <property key="labeling/wrapChar" value=""/>
    <property key="labeling/xOffset" value="0"/>
    <property key="labeling/yOffset" value="0"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerTransparency>0</layerTransparency>
  <displayfield>name</displayfield>
  <label>0</label>
  <labelattributes>
    <label fieldname="" text="Label"/>
    <family fieldname="" name="MS Shell Dlg 2"/>
    <size fieldname="" units="pt" value="12"/>
    <bold fieldname="" on="0"/>
    <italic fieldname="" on="0"/>
    <underline fieldname="" on="0"/>
    <strikeout fieldname="" on="0"/>
    <color fieldname="" red="0" blue="0" green="0"/>
    <x fieldname=""/>
    <y fieldname=""/>
    <offset x="0" y="0" units="pt" yfieldname="" xfieldname=""/>
    <angle fieldname="" value="0" auto="0"/>
    <alignment fieldname="" value="center"/>
    <buffercolor fieldname="" red="255" blue="255" green="255"/>
    <buffersize fieldname="" units="pt" value="1"/>
    <bufferenabled fieldname="" on=""/>
    <multilineenabled fieldname="" on=""/>
    <selectedonly on=""/>
  </labelattributes>
  <editform>/Users/eros/Desktop/tmp</editform>
  <editforminit></editforminit>
  <featformsuppress>0</featformsuppress>
  <annotationform>/OSGeo4W64/bin</annotationform>
  <editorlayout>generatedlayout</editorlayout>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <attributeactions/>
</qgis>
