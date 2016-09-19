<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>

<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<title>Money Manager | New Transaction</title>
		
		<!-- Bootstrap -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/bootstrap.min.css">
		<!-- Font Awesome -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/font-awesome.min.css">
		<!-- NProgress -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/nprogress.css">
		<!-- Bootstrap-WYSIWYG -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/prettify.min.css">
		<!-- Switchery -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/switchery.min.css">
		
		<!-- Custom Theme Style -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/custom.min.css">
		
		<style type="text/css">
			.categoryIcons {
				margin: 0;
				padding: 0;
				padding-bottom: 1.6em;
				list-style: none;
				overflow: hidden;
				clear: both;
				display: -webkit-box;
				display: -moz-box;
				display: box;
				display: -webkit-flex;
				display: -moz-flex;
				display: -ms-flexbox;
				display: flex;
				-webkit-flex-flow: wrap;
				-moz-flex-flow: wrap;
				-ms-flex-flow: wrap;
				flex-flow: wrap;
				-webkit-box-pack: center;
				-moz-box-pack: center;
				box-pack: center;
				-webkit-justify-content: center;
				-moz-justify-content: center;
				-ms-justify-content: center;
				-o-justify-content: center;
				justify-content: center;
				-ms-flex-pack: center;
			}
			.categoryIcons .categoryIcon {
				margin: 1em;
				padding: 1em;
				width: 6em;
				height: 6em;
				position: relative;
				cursor: pointer;
				text-align: center;
				border-radius: 1em;
				border: 2px dashed transparent;
			}
		</style>
	</head>
	
	<body class="nav-md">
		<div class="container body">
			<div class="main_container">
				<!-- Side Navigation Panel (Available under /WEB-INF/Fragments) -->
				<jsp:include page="../Fragments/nav.jsp" />
				
				<!-- Header Panel (Available under /WEB-INF/Fragments) -->
				<jsp:include page="../Fragments/header.jsp" />
				
				<!-- Current Page Content -->
				<div class="right_col" role="main">
					<div class="">
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">
								<div class="x_panel">
									<div class="x_title">
										<h2>New Transaction <small>(Add a new transaction)</small></h2>
										
										<ul class="nav navbar-right panel_toolbox">
											<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
											<li class="dropdown">
												<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
													<i class="fa fa-wrench"></i>
												</a>
												<ul class="dropdown-menu" role="menu">
													<li><a href="#">Settings 1</a></li>
													<li><a href="#">Settings 2</a></li>
												</ul>
											</li>
											<li><a class="close-link"><i class="fa fa-close"></i></a></li>
										</ul>
										
										<div class="clearfix"></div>
									</div>
									
									<div class="x_content">
										<br />
										
										<form:form action="newtransaction" method="POST" modelAttribute="newTransactionModel" class="form-horizontal form-label-left">
											<div class="form-group">
												<div class="col-md-6 col-sm-6 col-xs-12 ">
													<label class="col-md-6 col-sm-6 col-xs-12 center-block" for="name">${message}</label>
												</div>
											</div>
											
											<div class="form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Name 
													<span class="required">*</span>
												</label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<form:input path="txnName" required="required" class="form-control col-md-7 col-xs-12" onclick="fieldValidation"></form:input>
												</div>
											</div>
											
											<div class="form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Category 
													<span class="required">*</span>
												</label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<form:select path="txnCategory" class="form-control">
														<form:option value="-1">Select Transaction Category</form:option>
														<form:option value="MobileRecharge">Mobile recharge</form:option>
														<form:option value="BillPayment">Bill Payment</form:option>
														<form:option value="Groceries">Groceries</form:option>
														<form:option value="OnlineShopping">Online shopping</form:option>
													</form:select>
												</div>
											</div>
											
											<div class="form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12">Source Account Type
													<span class="required">*</span>
												</label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<form:select path="txnSourceType" class="form-control">
														<form:option value="-1">Select Account Type</form:option>
														<form:option value="Savings">Savings</form:option>
														<form:option value="Current">Current</form:option>
													</form:select>
												</div>
											</div>
											
											<div class="form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Source Account Name 
													<span class="required">*</span>
												</label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<form:select path="txnSourceAcc" class="form-control">
														<form:option value="-1">Select Account Name</form:option>
														<form:option value="SBI - 00003452234">SBI - 00003452234 </form:option>
														<form:option value="AXIS - 00003452341">AXIS - 00003452341</form:option>
														<form:option value="HDFC - 00003452356">HDFC - 00003452356</form:option>
														<form:option value="ICICI - 00003452387">ICICI - 00003452387</form:option>
													</form:select>
												</div>
											</div>
											
											<div class="form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12">Type
													<span class="required">*</span>
												</label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<form:select path="txnType" class="form-control">
														<form:option value="-1">Select Transaction Type</form:option>
														<form:option value="ATMWithdrawal">ATM Withdrawal</form:option>
														<form:option value="BankToBankTransfer">Bank to Bank Transfer</form:option>
														<form:option value="Expense">Expense</form:option>
														<form:option value="Others">Others</form:option>
													</form:select>
												</div>
											</div>
											
											<div class="form-group" style="display:none" id="destacctype">
												<label class="control-label col-md-3 col-sm-3 col-xs-12">Destination Account Type
													<span class="required">*</span>
												</label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<form:select path="txnDestType" class="form-control">
														<form:option value="-1">Select Account Type</form:option>
														<form:option value="Savings">Savings</form:option>
														<form:option value="Current">Current</form:option>
													</form:select>
												</div>
											</div>
											
											<div class="form-group" style="display:none" id="destaccname">
												<label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Destination Account Name 
													<span class="required">*</span>
												</label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<form:select path="txnDestAcc" class="form-control">
														<form:option value="-1">Select Account Name</form:option>
														<form:option value="SBI - 00003452234">SBI - 00003452234 </form:option>
														<form:option value="AXIS - 00003452341">AXIS - 00003452341</form:option>
														<form:option value="HDFC - 00003452356">HDFC - 00003452356</form:option>
														<form:option value="ICICI - 00003452387">ICICI - 00003452387</form:option>
													</form:select>
												</div>
											</div>
											
											<div class="form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12" style="padding-top: 40px;">Tags</label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<form:input path="txnTags" class="tags form-control" value="social, adverts, sales"></form:input>
													<div id="suggestions-container" style="position: relative; float: left; width: 250px; margin: 10px;"></div>
												</div>
											</div>
											
											<div class="form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12">When ? 
													<span class="required">*</span>
												</label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<form:input path="txnDate" required="required" class="date-picker form-control col-md-7 col-xs-12"></form:input>
												</div>
											</div>
											
											<div class="form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12">Details</label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<div id="alerts"></div>
													
													<div class="btn-toolbar editor" data-role="editor-toolbar" data-target="#editor">
														<div class="btn-group">
															<a class="btn dropdown-toggle" data-toggle="dropdown" title="Font">
																<i class="fa fa-font"></i><b class="caret"></b>
															</a>
															<ul class="dropdown-menu"></ul>
														</div>
														
														<div class="btn-group">
															<a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size">
																<i class="fa fa-text-height"></i>&nbsp;<b class="caret"></b>
															</a>
															<ul class="dropdown-menu">
																<li>
																	<a data-edit="fontSize 5">
																		<span style="font-size:17px">Huge</span>
																	</a>
															</li>
																<li>
																	<a data-edit="fontSize 3">
																		<span style="font-size:14px">Normal</span>
																	</a>
															</li>
																<li>
																	<a data-edit="fontSize 1">
																		<span style="font-size:11px">Small</span>
																	</a>
															</li>
															</ul>
														</div>
														
														<div class="btn-group">
															<a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="fa fa-bold"></i></a>
															<a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="fa fa-italic"></i></a>
															<a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="fa fa-strikethrough"></i></a>
															<a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="fa fa-underline"></i></a>
														</div>
														
														<div class="btn-group">
															<a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="fa fa-list-ul"></i></a>
															<a class="btn" data-edit="insertorderedlist" title="Number list"><i class="fa fa-list-ol"></i></a>
															<a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="fa fa-dedent"></i></a>
															<a class="btn" data-edit="indent" title="Indent (Tab)"><i class="fa fa-indent"></i></a>
														</div>
														
														<div class="btn-group">
															<a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="fa fa-align-left"></i></a>
															<a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="fa fa-align-center"></i></a>
															<a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="fa fa-align-right"></i></a>
															<a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="fa fa-align-justify"></i></a>
														</div>
														
														<div class="btn-group">
															<a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="fa fa-link"></i></a>
															<div class="dropdown-menu input-append">
																<input class="span2" placeholder="URL" type="text" data-edit="createLink" />
																<button class="btn" type="button">Add</button>
															</div>
															<a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="fa fa-cut"></i></a>
														</div>
														
														<div class="btn-group">
															<a class="btn" title="Insert picture (or just drag & drop)" id="pictureBtn"><i class="fa fa-picture-o"></i></a>
															<input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />
														</div>
														
														<div class="btn-group">
															<a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="fa fa-undo"></i></a>
															<a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="fa fa-repeat"></i></a>
														</div>
													</div>
													
													<div id="editor" class="editor-wrapper"></div>
													
													<form:textarea path="txnDesc" style="display:none;"></form:textarea>
												</div>
											</div>
											
											<div class="ln_solid"></div>
											
											<div class="form-group">
												<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
													<input type="submit" class="btn btn-success pull-right" id="submit" value="Submit">
													<input type="button" class="btn btn-primary pull-right" value="Cancel">
												</div>
											</div>
										</form:form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<!-- Footer Panel (Available under /WEB-INF/Fragments) -->
				<jsp:include page="../Fragments/footer.jsp" />
			</div>
		</div>
		
		<!-- jQuery -->
		<script src="<%=request.getContextPath()%>/JS/jquery.min.js"></script>
		<!-- Bootstrap -->
		<script src="<%=request.getContextPath()%>/JS/bootstrap.min.js"></script>
		<!-- FastClick -->
		<script src="<%=request.getContextPath()%>/JS/fastclick.js"></script>
		<!-- NProgress -->
		<script src="<%=request.getContextPath()%>/JS/nprogress.js"></script>
		<!-- bootstrap-daterangepicker -->
		<script src="<%=request.getContextPath()%>/JS/moment.min.js"></script>
		<script src="<%=request.getContextPath()%>/JS/daterangepicker.js"></script>
		<!-- bootstrap-wysiwyg -->
		<script src="<%=request.getContextPath()%>/JS/bootstrap-wysiwyg.min.js"></script>
		<script src="<%=request.getContextPath()%>/JS/jquery.hotkeys.js"></script>
		<script src="<%=request.getContextPath()%>/JS/prettify.js"></script>
		<!-- jQuery Tags Input -->
		<script src="<%=request.getContextPath()%>/JS/jquery.tagsinput.js"></script>
		<!-- Switchery -->
		<script src="<%=request.getContextPath()%>/JS/switchery.min.js"></script>
		
		<!-- Custom Theme Scripts -->
		<script src="<%=request.getContextPath()%>/JS/custom.min.js"></script>
		
		<script>
			// Alerts on Transaction Tag ADD/EDIT/DELETE (For Transaction Tags Field)
			function onAddTag(tag) {
				alert("Added a tag: " + tag);
			}
			function onRemoveTag(tag) {
				alert("Removed a tag: " + tag);
			}
			function onChangeTag(input, tag) {
				alert("Changed a tag: " + tag);
			}
			
			// Init Script for Bootstrap WYSIWYG Editor (For Transaction Details Field)
			function initToolbarBootstrapBindings() {
				var fonts = [
					'Serif', 'Sans', 'Arial', 'Arial Black', 'Courier',
					'Courier New', 'Comic Sans MS', 'Helvetica', 'Impact', 
					'Lucida Grande', 'Lucida Sans', 'Tahoma', 'Times',
					'Times New Roman', 'Verdana'
				],
				fontTarget = $('[title=Font]').siblings('.dropdown-menu');
				
				$.each(fonts, function(idx, fontName) {
					fontTarget.append($('<li><a data-edit="fontName ' + fontName + '" style="font-family:\'' + fontName + '\'">' + fontName + '</a></li>'));
				});
				
				$('a[title]').tooltip({
					container: 'body'
				});
				
				$('.dropdown-menu input').click(function() {
					return false;
				}).change(function() {
					$(this).parent('.dropdown-menu').siblings('.dropdown-toggle').dropdown('toggle');
				}).keydown('esc', function() {
					this.value = '';
					$(this).change();
				});
				
				$('[data-role=magic-overlay]').each(function() {
					var overlay = $(this),
					target = $(overlay.data('target'));
					
					overlay.css('opacity', 0).css('position', 'absolute').offset(target.offset()).width(target.outerWidth()).height(target.outerHeight());
				});
				
				if ("onwebkitspeechchange" in document.createElement("input")) {
					var editorOffset = $('#editor').offset();
					
					$('.voiceBtn').css('position', 'absolute').offset({
						top  : editorOffset.top,
						left : editorOffset.left + $('#editor').innerWidth() - 35
					});
				} else {
					$('.voiceBtn').hide();
				}
			}
			
			function showErrorAlert(reason, detail) {
				var msg = '';
				
				if (reason === 'unsupported-file-type') {
					msg = "Unsupported format " + detail;
				} else {
					console.log("error uploading file", reason, detail);
				}
				
				$('<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button>' +
					'<strong>File upload error</strong> ' + msg + ' </div>').prependTo('#alerts');
			}
			
			$(document).ready(function() {
				// Bootstrap DateRangepicker (For Transaction Date Field: #transactionDate)
				$('#txnDate').daterangepicker({
					singleDatePicker : true,
					calender_style   : "picker_3"
				}, 
				function(start, end, label) {
					console.log(start.toISOString(), end.toISOString(), label);
				});
				
				// Initialize Bootstrap WYSIWYG Editor (For Transaction Details Field)
				initToolbarBootstrapBindings();
				
				$('#editor').wysiwyg({
					fileUploadError : showErrorAlert
				});
				
				window.prettyPrint;
				prettyPrint();
				
				// jQuery Tags (For Transaction Tags Field)
				$('#txnTags').tagsInput({
					width : 'auto'
				});
				
				//Display or hide destination account entry fields based on trasaction type
				$("#txnType").change(function(){
					var type = $( "#txnType option:selected" ).text();
					if (type == "Bank to Bank Transfer"){
						$('#destaccname').toggle('show');
						$('#destacctype').toggle('show');
					}
					else {
						$("#txnDestAcc").val("-1");
						$("#txnDestType").val("-1");
						$('#destaccname').hide()
						$('#destacctype').hide();
					}
				});
			});
		</script>
	</body>
</html>