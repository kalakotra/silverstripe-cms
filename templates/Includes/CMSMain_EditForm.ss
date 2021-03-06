<form $FormAttributes data-layout-type="border">

	<div class="cms-content-fields panel-scrollable panel-scrollable--single-toolbar">
		<% if $Message %>
		<p id="{$FormName}_error" class="message $MessageType">$Message</p>
		<% else %>
		<p id="{$FormName}_error" class="message $MessageType" style="display: none"></p>
		<% end_if %>

		<fieldset>
			<% if $Legend %><legend>$Legend</legend><% end_if %>
			<% loop $Fields %>
				$FieldHolder
			<% end_loop %>
			<div class="clear"><!-- --></div>
		</fieldset>
	</div>

	<div class="toolbar--south cms-content-actions cms-content-controls south">
		<% if $Actions %>
		<div class="btn-toolbar">
			<% loop $Actions %>
				$Field
			<% end_loop %>
				<% if $Controller.LinkPreview %>
			<a href="$Controller.LinkPreview" target="_cmsPreview" class="cms-preview-toggle-link ss-ui-button" data-icon="preview">
				<% _t('LeftAndMain.PreviewButton', 'Preview') %> &raquo;
			</a>
			<% end_if %>

			<% include LeftAndMain_ViewModeSelector SelectID="preview-mode-dropdown-in-content" %>
		</div>
		<% end_if %>
	</div>
</form>
