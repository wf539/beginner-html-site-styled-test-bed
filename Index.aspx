<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>Index</title>
		<style type="text/css">
			.BlueDiv { background-color: #000033; color: #FFFFFF; width: 200px }
			.RedDiv { background-color: #FF0000; color: #FFFFFF; width: 200px }
			.style1 { width: 100%; }
		</style>
		<script type="text/javascript" src="http://ajax.microsoft.com/ajax/jquery/jquery-1.9.1.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				////	$(':input').each(function() {
				////	var elem = $(this);
				////	alert(elem.val());
				////	});
				//alert($('div:contains("my TestDiv")').html());
			    //$('tr').css('background-color', 'green');
			    //var output = $('#OutputDiv');
			    var html = '';
			    $('div.BlueDiv,div.RedDiv').each(function (index) {
			        html += "<br />" + index + " " + $(this).text();
			    });
			    var output = $('#OutputDiv');
			    output.html(html);
			});
		</script>
	</head>
	<body>
        <div id="OutputDiv"></div>
		<div id="TableContainerDiv" title="Contains Table">
			<table id="DataTable">
				<tr>
					<td>Cell 1 Row 1</td>
				</tr>
				<tr>
					<td>Cell 1 Row 2</td>
				</tr>
				<tr>
					<td>Cell 1 Row 3</td>
				</tr>
				<tr>
					<td>
						<table style="width: 100%;">
							<tr>
								<td>Nested Table Cell and Row</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<br />
		</div>
		<!--<div id="TestDiv" title="Test div title">
			<p>This is my TestDiv text</p>
		</div>-->
		<div class="BlueDiv">
			<p><span>Blue Div</span></p>
		</div>
        <span class="Foo">Span 1</span>
        <span class="Foo">Span 2</span>
        <span id="Span3" class="Foo">Span 3</span>
		<br />
		<div class="RedDiv">
			<p><span>Red Div</span></p>
		</div>
		<p>
			<img src="jQueryFoundation.png" />
		</p>
		<form id="form1" runat="server">
			<table style="width: 300px;">
				<tr>
					<td style="width: 30%;">First Name</td>
					<td style="width: 70%;"><input id="FirstNameTextBox" value="John" type="text" /></td>
				</tr>
				<tr>
					<td>Last Name</td>
					<td><input id="LastNameTextBox" type="text" /></td>
				</tr>
				<tr>
					<td>Comments</td>
					<td><textarea rows="5" cols="60" id="CommentsTextBox">TextArea</textarea></td>
				</tr>
				<tr>
					<td>
						<select id="sel">
							<option value="Hants">Hampshire</option>
							<option value="Northants" selected="selected">Northamptonshire</option>
						</select>
					</td>
				</tr>
				<tr>
					<td><input id="SubmitButton" type="button" value="Submit" /></td>
					<td>&nbsp;</td>
				</tr>
			</table>
		</form>
	</body>
</html>