<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="11">
  <syndb class_id="0" tracking_level="0" version="0">
    <userIPLatency>-1</userIPLatency>
    <userIPName/>
    <cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
      <name>canny_Sobel</name>
      <ret_bitwidth>0</ret_bitwidth>
      <ports class_id="2" tracking_level="0" version="0">
        <count>2</count>
        <item_version>0</item_version>
        <item class_id="3" tracking_level="1" version="0" object_id="_1">
          <Value class_id="4" tracking_level="0" version="0">
            <Obj class_id="5" tracking_level="0" version="0">
              <type>1</type>
              <id>1</id>
              <name>p_src_data_stream_V</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo class_id="6" tracking_level="0" version="0">
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>_src.data_stream.V</originalName>
              <rtlName/>
              <coreName>FSL</coreName>
            </Obj>
            <bitwidth>8</bitwidth>
          </Value>
          <direction>0</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs class_id="7" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_2">
          <Value>
            <Obj>
              <type>1</type>
              <id>2</id>
              <name>p_dst_data_stream_V</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>_dst.data_stream.V</originalName>
              <rtlName/>
              <coreName>FSL</coreName>
            </Obj>
            <bitwidth>8</bitwidth>
          </Value>
          <direction>1</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
      </ports>
      <nodes class_id="8" tracking_level="0" version="0">
        <count>2</count>
        <item_version>0</item_version>
        <item class_id="9" tracking_level="1" version="0" object_id="_3">
          <Value>
            <Obj>
              <type>0</type>
              <id>5</id>
              <name/>
              <fileName>C:/Xilinx/Vivado_HLS/2015.4/common/technology/autopilot/hls/hls_video_imgproc.h</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>2058</lineNumber>
              <contextFuncName>Sobel&amp;lt;1, 0, 3, hls::BORDER_DEFAULT, 0, 0, 1024, 1024, 1024, 1024&amp;gt;</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item class_id="10" tracking_level="0" version="0">
                  <first>c:/Users/suryachandraprasad</first>
                  <second class_id="11" tracking_level="0" version="0">
                    <count>2</count>
                    <item_version>0</item_version>
                    <item class_id="12" tracking_level="0" version="0">
                      <first class_id="13" tracking_level="0" version="0">
                        <first>C:/Xilinx/Vivado_HLS/2015.4/common/technology/autopilot/hls/hls_video_imgproc.h</first>
                        <second>Sobel&amp;lt;1, 0, 3, 0, 0, 1024, 1024, 1024, 1024&amp;gt;</second>
                      </first>
                      <second>2066</second>
                    </item>
                    <item>
                      <first>
                        <first>C:/Xilinx/Vivado_HLS/2015.4/common/technology/autopilot/hls/hls_video_imgproc.h</first>
                        <second>Sobel&amp;lt;1, 0, 3, hls::BORDER_DEFAULT, 0, 0, 1024, 1024, 1024, 1024&amp;gt;</second>
                      </first>
                      <second>2058</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName>grp_canny_Filter2D_fu_26</rtlName>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>9</count>
            <item_version>0</item_version>
            <item>9</item>
            <item>10</item>
            <item>11</item>
            <item>13</item>
            <item>15</item>
            <item>17</item>
            <item>19</item>
            <item>21</item>
            <item>23</item>
          </oprand_edges>
          <opcode>call</opcode>
        </item>
        <item class_id_reference="9" object_id="_4">
          <Value>
            <Obj>
              <type>0</type>
              <id>6</id>
              <name/>
              <fileName>C:/Xilinx/Vivado_HLS/2015.4/common/technology/autopilot/hls/hls_video_imgproc.h</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>2067</lineNumber>
              <contextFuncName>Sobel&amp;lt;1, 0, 3, 0, 0, 1024, 1024, 1024, 1024&amp;gt;</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>c:/Users/suryachandraprasad</first>
                  <second>
                    <count>1</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>C:/Xilinx/Vivado_HLS/2015.4/common/technology/autopilot/hls/hls_video_imgproc.h</first>
                        <second>Sobel&amp;lt;1, 0, 3, 0, 0, 1024, 1024, 1024, 1024&amp;gt;</second>
                      </first>
                      <second>2067</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>0</count>
            <item_version>0</item_version>
          </oprand_edges>
          <opcode>ret</opcode>
        </item>
      </nodes>
      <consts class_id="15" tracking_level="0" version="0">
        <count>7</count>
        <item_version>0</item_version>
        <item class_id="16" tracking_level="1" version="0" object_id="_5">
          <Value>
            <Obj>
              <type>2</type>
              <id>8</id>
              <name>canny_Filter2D</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <const_type>6</const_type>
          <content>&lt;constant:canny_Filter2D&gt;</content>
        </item>
        <item class_id_reference="16" object_id="_6">
          <Value>
            <Obj>
              <type>2</type>
              <id>12</id>
              <name>empty</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>2</bitwidth>
          </Value>
          <const_type>0</const_type>
          <content>0</content>
        </item>
        <item class_id_reference="16" object_id="_7">
          <Value>
            <Obj>
              <type>2</type>
              <id>14</id>
              <name>empty</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>2</bitwidth>
          </Value>
          <const_type>0</const_type>
          <content>1</content>
        </item>
        <item class_id_reference="16" object_id="_8">
          <Value>
            <Obj>
              <type>2</type>
              <id>16</id>
              <name>empty</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>3</bitwidth>
          </Value>
          <const_type>0</const_type>
          <content>6</content>
        </item>
        <item class_id_reference="16" object_id="_9">
          <Value>
            <Obj>
              <type>2</type>
              <id>18</id>
              <name>empty</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>4</bitwidth>
          </Value>
          <const_type>0</const_type>
          <content>2</content>
        </item>
        <item class_id_reference="16" object_id="_10">
          <Value>
            <Obj>
              <type>2</type>
              <id>20</id>
              <name>empty</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>2</bitwidth>
          </Value>
          <const_type>0</const_type>
          <content>3</content>
        </item>
        <item class_id_reference="16" object_id="_11">
          <Value>
            <Obj>
              <type>2</type>
              <id>22</id>
              <name>empty</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>3</bitwidth>
          </Value>
          <const_type>0</const_type>
          <content>0</content>
        </item>
      </consts>
      <blocks class_id="17" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="18" tracking_level="1" version="0" object_id="_12">
          <Obj>
            <type>3</type>
            <id>7</id>
            <name>canny_Sobel</name>
            <fileName/>
            <fileDirectory/>
            <lineNumber>0</lineNumber>
            <contextFuncName/>
            <inlineStackInfo>
              <count>0</count>
              <item_version>0</item_version>
            </inlineStackInfo>
            <originalName/>
            <rtlName/>
            <coreName/>
          </Obj>
          <node_objs>
            <count>2</count>
            <item_version>0</item_version>
            <item>5</item>
            <item>6</item>
          </node_objs>
        </item>
      </blocks>
      <edges class_id="19" tracking_level="0" version="0">
        <count>9</count>
        <item_version>0</item_version>
        <item class_id="20" tracking_level="1" version="0" object_id="_13">
          <id>9</id>
          <edge_type>1</edge_type>
          <source_obj>8</source_obj>
          <sink_obj>5</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_14">
          <id>10</id>
          <edge_type>1</edge_type>
          <source_obj>1</source_obj>
          <sink_obj>5</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_15">
          <id>11</id>
          <edge_type>1</edge_type>
          <source_obj>2</source_obj>
          <sink_obj>5</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_16">
          <id>13</id>
          <edge_type>1</edge_type>
          <source_obj>12</source_obj>
          <sink_obj>5</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_17">
          <id>15</id>
          <edge_type>1</edge_type>
          <source_obj>14</source_obj>
          <sink_obj>5</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_18">
          <id>17</id>
          <edge_type>1</edge_type>
          <source_obj>16</source_obj>
          <sink_obj>5</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_19">
          <id>19</id>
          <edge_type>1</edge_type>
          <source_obj>18</source_obj>
          <sink_obj>5</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_20">
          <id>21</id>
          <edge_type>1</edge_type>
          <source_obj>20</source_obj>
          <sink_obj>5</sink_obj>
        </item>
        <item class_id_reference="20" object_id="_21">
          <id>23</id>
          <edge_type>1</edge_type>
          <source_obj>22</source_obj>
          <sink_obj>5</sink_obj>
        </item>
      </edges>
    </cdfg>
    <cdfg_regions class_id="21" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="22" tracking_level="1" version="0" object_id="_22">
        <mId>1</mId>
        <mTag>canny_Sobel</mTag>
        <mType>0</mType>
        <sub_regions>
          <count>0</count>
          <item_version>0</item_version>
        </sub_regions>
        <basic_blocks>
          <count>1</count>
          <item_version>0</item_version>
          <item>7</item>
        </basic_blocks>
        <mII>-1</mII>
        <mDepth>-1</mDepth>
        <mMinTripCount>-1</mMinTripCount>
        <mMaxTripCount>-1</mMaxTripCount>
        <mMinLatency>1069095</mMinLatency>
        <mMaxLatency>-1</mMaxLatency>
        <mIsDfPipe>0</mIsDfPipe>
        <mDfPipe class_id="-1"/>
      </item>
    </cdfg_regions>
    <fsm class_id="24" tracking_level="1" version="0" object_id="_23">
      <states class_id="25" tracking_level="0" version="0">
        <count>2</count>
        <item_version>0</item_version>
        <item class_id="26" tracking_level="1" version="0" object_id="_24">
          <id>1</id>
          <operations class_id="27" tracking_level="0" version="0">
            <count>1</count>
            <item_version>0</item_version>
            <item class_id="28" tracking_level="1" version="0" object_id="_25">
              <id>5</id>
              <stage>2</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="26" object_id="_26">
          <id>2</id>
          <operations>
            <count>4</count>
            <item_version>0</item_version>
            <item class_id_reference="28" object_id="_27">
              <id>3</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_28">
              <id>4</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_29">
              <id>5</id>
              <stage>1</stage>
              <latency>2</latency>
            </item>
            <item class_id_reference="28" object_id="_30">
              <id>6</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
          </operations>
        </item>
      </states>
      <transitions class_id="29" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="30" tracking_level="1" version="0" object_id="_31">
          <inState>1</inState>
          <outState>2</outState>
          <condition class_id="31" tracking_level="0" version="0">
            <id>2</id>
            <sop class_id="32" tracking_level="0" version="0">
              <count>1</count>
              <item_version>0</item_version>
              <item class_id="33" tracking_level="0" version="0">
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
      </transitions>
    </fsm>
    <res class_id="34" tracking_level="1" version="0" object_id="_32">
      <dp_component_resource class_id="35" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="36" tracking_level="0" version="0">
          <first>grp_canny_Filter2D_fu_26 (canny_Filter2D)</first>
          <second class_id="37" tracking_level="0" version="0">
            <count>4</count>
            <item_version>0</item_version>
            <item class_id="38" tracking_level="0" version="0">
              <first>BRAM</first>
              <second>3</second>
            </item>
            <item>
              <first>DSP48E</first>
              <second>6</second>
            </item>
            <item>
              <first>FF</first>
              <second>566</second>
            </item>
            <item>
              <first>LUT</first>
              <second>474</second>
            </item>
          </second>
        </item>
      </dp_component_resource>
      <dp_expression_resource>
        <count>1</count>
        <item_version>0</item_version>
        <item>
          <first>ap_sig_bdd_59 ( or ) </first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>(0P0)</first>
              <second>1</second>
            </item>
            <item>
              <first>(1P1)</first>
              <second>1</second>
            </item>
            <item>
              <first>FF</first>
              <second>0</second>
            </item>
            <item>
              <first>LUT</first>
              <second>1</second>
            </item>
          </second>
        </item>
      </dp_expression_resource>
      <dp_fifo_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_fifo_resource>
      <dp_memory_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_memory_resource>
      <dp_multiplexer_resource>
        <count>3</count>
        <item_version>0</item_version>
        <item>
          <first>ap_NS_fsm</first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>(0Size)</first>
              <second>3</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>1</second>
            </item>
            <item>
              <first>(2Count)</first>
              <second>3</second>
            </item>
            <item>
              <first>LUT</first>
              <second>1</second>
            </item>
          </second>
        </item>
        <item>
          <first>p_dst_data_stream_V_write</first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>(0Size)</first>
              <second>2</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>1</second>
            </item>
            <item>
              <first>(2Count)</first>
              <second>2</second>
            </item>
            <item>
              <first>LUT</first>
              <second>1</second>
            </item>
          </second>
        </item>
        <item>
          <first>p_src_data_stream_V_read</first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>(0Size)</first>
              <second>2</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>1</second>
            </item>
            <item>
              <first>(2Count)</first>
              <second>2</second>
            </item>
            <item>
              <first>LUT</first>
              <second>1</second>
            </item>
          </second>
        </item>
      </dp_multiplexer_resource>
      <dp_register_resource>
        <count>3</count>
        <item_version>0</item_version>
        <item>
          <first>ap_CS_fsm</first>
          <second>
            <count>3</count>
            <item_version>0</item_version>
            <item>
              <first>(Bits)</first>
              <second>2</second>
            </item>
            <item>
              <first>(Consts)</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>2</second>
            </item>
          </second>
        </item>
        <item>
          <first>ap_done_reg</first>
          <second>
            <count>3</count>
            <item_version>0</item_version>
            <item>
              <first>(Bits)</first>
              <second>1</second>
            </item>
            <item>
              <first>(Consts)</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>1</second>
            </item>
          </second>
        </item>
        <item>
          <first>grp_canny_Filter2D_fu_26_ap_start_ap_start_reg</first>
          <second>
            <count>3</count>
            <item_version>0</item_version>
            <item>
              <first>(Bits)</first>
              <second>1</second>
            </item>
            <item>
              <first>(Consts)</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>1</second>
            </item>
          </second>
        </item>
      </dp_register_resource>
      <dp_component_map class_id="39" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="40" tracking_level="0" version="0">
          <first>grp_canny_Filter2D_fu_26 (canny_Filter2D)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>5</item>
          </second>
        </item>
      </dp_component_map>
      <dp_expression_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_expression_map>
      <dp_fifo_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_fifo_map>
      <dp_memory_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_memory_map>
    </res>
    <node_label_latency class_id="41" tracking_level="0" version="0">
      <count>2</count>
      <item_version>0</item_version>
      <item class_id="42" tracking_level="0" version="0">
        <first>5</first>
        <second class_id="43" tracking_level="0" version="0">
          <first>0</first>
          <second>1</second>
        </second>
      </item>
      <item>
        <first>6</first>
        <second>
          <first>1</first>
          <second>0</second>
        </second>
      </item>
    </node_label_latency>
    <bblk_ent_exit class_id="44" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="45" tracking_level="0" version="0">
        <first>7</first>
        <second class_id="46" tracking_level="0" version="0">
          <first>0</first>
          <second>1</second>
        </second>
      </item>
    </bblk_ent_exit>
    <regions class_id="47" tracking_level="0" version="0">
      <count>0</count>
      <item_version>0</item_version>
    </regions>
    <dp_fu_nodes class_id="48" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="49" tracking_level="0" version="0">
        <first>26</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>5</item>
          <item>5</item>
        </second>
      </item>
    </dp_fu_nodes>
    <dp_fu_nodes_expression class_id="51" tracking_level="0" version="0">
      <count>0</count>
      <item_version>0</item_version>
    </dp_fu_nodes_expression>
    <dp_fu_nodes_module>
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="52" tracking_level="0" version="0">
        <first>grp_canny_Filter2D_fu_26</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>5</item>
          <item>5</item>
        </second>
      </item>
    </dp_fu_nodes_module>
    <dp_fu_nodes_io>
      <count>0</count>
      <item_version>0</item_version>
    </dp_fu_nodes_io>
    <return_ports>
      <count>0</count>
      <item_version>0</item_version>
    </return_ports>
    <dp_mem_port_nodes class_id="53" tracking_level="0" version="0">
      <count>0</count>
      <item_version>0</item_version>
    </dp_mem_port_nodes>
    <dp_reg_nodes>
      <count>0</count>
      <item_version>0</item_version>
    </dp_reg_nodes>
    <dp_regname_nodes>
      <count>0</count>
      <item_version>0</item_version>
    </dp_regname_nodes>
    <dp_reg_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_reg_phi>
    <dp_regname_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_regname_phi>
    <dp_port_io_nodes class_id="54" tracking_level="0" version="0">
      <count>2</count>
      <item_version>0</item_version>
      <item class_id="55" tracking_level="0" version="0">
        <first>p_dst_data_stream_V</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>5</item>
            </second>
          </item>
        </second>
      </item>
      <item>
        <first>p_src_data_stream_V</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>5</item>
            </second>
          </item>
        </second>
      </item>
    </dp_port_io_nodes>
    <port2core class_id="56" tracking_level="0" version="0">
      <count>2</count>
      <item_version>0</item_version>
      <item class_id="57" tracking_level="0" version="0">
        <first>1</first>
        <second>FSL</second>
      </item>
      <item>
        <first>2</first>
        <second>FSL</second>
      </item>
    </port2core>
    <node2core>
      <count>0</count>
      <item_version>0</item_version>
    </node2core>
  </syndb>
</boost_serialization>
