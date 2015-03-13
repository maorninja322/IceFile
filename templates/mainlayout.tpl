<div align="center">
	<a href="/"><img src="images/logo.png" style="width:480px;"></img></a>
</div>
<table class="menu_a_main">
<tr>
	<td class="left">
					{foreach $headerlinks as $url=>$text}
					<div class="greyer" align="center">
						<span class="navButton"><a href="{$url|escape}">{$text}</a></span>
					{/foreach}
					</div>
					{if $loguserid}
					<div class="greyer" align="center">
					{if HasPermission('admin.viewadminpanel')}
					{/if}
							<span style="font-size:20px;letter-spacing:1px;border-bottom: solid 2px grey;"><b><i>{$loguserlink}</i></b></span>
					<div align="left">
							{foreach $layout_userpanel as $url=>$text}
								<ul><a href="{$url|escape}">{$text}</a></ul>
							{/foreach}
					</div>
					<div class="greyer" align="center">
						<a href="#" onclick="$('#logout').submit(); return false;">Sign out</a>
					</div>
					{else}
					</div>
					<div class="greyer" align="center">
						<a href="{actionLink page='register'}">Sign up</a><br>
						<a href="{actionLink page='login'}">Sign in</a>
					{/if}
					</div>
	</td>
	<td class="right">
		<div align="center">{$layout_contents}</div>
	</td>
</tr>
</table>
