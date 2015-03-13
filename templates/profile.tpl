
			{foreach $profileParts as $name=>$fields}
				<table class="outline margin profiletable">
					
					{if is_array($fields)}
					
					<tr class="header1">
						<th colspan=2>{$name}</th>
					</tr>
					{foreach $fields as $label=>$val}
						<tr class="cell{cycle values='0,1'}">
							<td class="cell2 center" style="width:20%;">
								{$label}
							</td>
							<td>
								{$val}
							</td>
						</tr>
					{/foreach}
					
					{else}
						
					<tr class="header1">
						<th>{$name}</th>
					</tr>
					<tr class="cell{cycle values='0,1'}">
						<td>
							{$fields}
						</td>
					</tr>
					
					{/if}
					
				</table>
			{/foreach}
				<table class="outline margin usercomments">
						<tr>
					<td style="width:100%;">
					
					{if $pagelinks}
					<tr class="cell1">
						<td colspan=2>
							{$pagelinks}
						</td>
					</tr>
					{/if}
					
					{foreach $comments as $cmt}
					<tr class="cell{cycle values='0,1'}">
						<td class="cell2" style="vertical-align:top; width:20%;">
							{$cmt.userlink}<br>
							<small>{$cmt.formattedDate}</small>
						</td>
						<td style="vertical-align:top;">
							{if $cmt.deleteLink}<small style="float: right; margin: 0px 4px;">{$cmt.deleteLink}</small>{/if}
							{$cmt.text}
						</td>
					</tr>
					{foreachelse}
							<b>No comments.</div>
					{/foreach}
					<td style="width:100%;">
					</td>
					{if $commentField}

							{$commentField}
					{/if}
					
					{if $pagelinks}
							{$pagelinks}
					{/if}
					</td>
					</table>
