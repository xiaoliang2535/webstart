<#--
	全局设置
-->

<#-- PATHS -->
<#global APP_URL    = "http://localhost:3000" />
<#global CSS_PATH   = APP_URL + "/style" />
<#global JS_PATH    = APP_URL + "/script" />
<#global JS_MODULES = APP_URL + "/modules" />
<#global IMG_PATH   = APP_URL + "/img" />

<#-- SITE INFO -->
<#global APP_TITLE  = "web模板" />

<#global SEAJS_FILE = APP_URL + "/modules/seajs/sea.js" />
<#global SITE_STATE>
	<!-- Site Stat -->
	<div style="display:none;">
	<!-- 统计 -->
	<!--
	<script src="" language="JavaScript"></script>
	-->
	</div>
</#global>

<#-- DEBUG CONFIG -->
<!-- 配置seajs jsDebug -->
<#global DEBUG_JS_PATH = JS_PATH + "/jsDebug.js" />
<#if !DEBUG??>
	<#global DEBUG = false />
	<#global STYLES_FILE_EXT = ".less" />
</#if>
<#--
说明：
	如果使用less.js在浏览器端编译less文件，则页面可直接引入.less文件
	若不使用，页面可直接引入.css文件，如 xx.less ==> xx.css
-->
<#global USE_LESSJS = false />