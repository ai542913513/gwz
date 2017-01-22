<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div class="c_pate" style="margin-top: 5px;">
        <s:if test="pageResult.totalCount > 0">
			<table width="100%" class="pageDown" border="0" cellspacing="0"
				cellpadding="0">
				<tr>
					<td align="right">
	                 	总共<s:property value="pageResult.totalCount"/>条记录，当前第 <s:property value="pageResult.pageNo"/> 页，共 <s:property value="pageResult.tatalPageCount"/> 页 &nbsp;&nbsp;
	                            <s:if test="pageResult.pageNo > 1">
	                            	<a href="javascript:doGoPage(<s:property value='pageResult.pageNo -1'/>)">上一页</a>
	                            </s:if>
	                            &nbsp;&nbsp;
	                            <s:if test="pageResult.tatalPageCount > pageResult.pageNo">
	                            	<a href="javascript:doGoPage(<s:property value='pageResult.pageNo +1'/>)">下一页</a>
	                            </s:if>
						到&nbsp;<input id="pageNo" name="pageNo" type="text" style="width: 30px;" onkeypress="if(event.keyCode == 13){doGoPage(this.value);}" min="1"
						max="" value="<s:property value='pageResult.pageNo'/>" /> &nbsp;&nbsp;
				    </td>
				</tr>
			</table>
		</s:if>
		<s:else>
			没有数据，请重新查询！
		</s:else>	
        </div>
