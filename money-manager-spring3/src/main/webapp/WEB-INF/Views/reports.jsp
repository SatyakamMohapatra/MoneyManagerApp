<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <title>Money Manager | Reports</title>
        
        <!-- Bootstrap -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/font-awesome.min.css">
        <!-- NProgress -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/nprogress.css">
        
        <!-- Custom Theme Style -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/custom.min.css">
        
        <style type="text/css">
            .displayNone {
                display: none;
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
                        <!-- filter criteria -->
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2>Reports <small></small></h2>
                                        
                                        <ul class="nav navbar-right panel_toolbox">
                                            <li><a class="collapse-link" id="viewReportsCollapseLink"><i class="fa fa-chevron-up"></i></a></li>
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
                                        
                                        <form:form action="reports" method="post" modelAttribute="reportsModel" 
                                                    class="form-horizontal form-label-left">
                                            <div class="form-group">
                                                <form:label path="mmReportFor" cssClass="control-label col-md-3 col-sm-3 col-xs-12">Report Duration 
                                                    <span class="required">*</span>
                                                </form:label>
                                                
                                                <div class="col-md-4 col-sm-4 col-xs-12">
                                                    <form:select path="mmReportFor" class="form-control">
                                                        <form:option value="0">Choose the report duration</form:option>
                                                        <form:option value="1">For a period</form:option>
                                                        <form:option value="2">For a day</form:option>
                                                        <form:option value="3">For a month</form:option>
                                                        <form:option value="4">For a year</form:option>
                                                    </form:select>
                                                </div>
                                            </div>
                                            
                                            <div id="startDateFormGroup" class="form-group displayNone">
                                                <form:label path="mmReportStartDate" cssClass="control-label col-md-3 col-sm-3 col-xs-12">Start Date 
                                                    <span class="required">*</span>
                                                </form:label>
                                                
                                                <div class="col-md-3 col-sm-3 col-xs-12">
                                                    <form:input path="mmReportStartDate" cssClass="date-picker form-control col-md-7 col-xs-12" 
                                                                required="required" />
                                                </div>
                                            </div>
                                            
                                            <div id="endDateFormGroup" class="form-group displayNone">
                                                <form:label path="mmReportEndDate" cssClass="control-label col-md-3 col-sm-3 col-xs-12">End Date 
                                                    <span class="required">*</span>
                                                </form:label>
                                                
                                                <div class="col-md-3 col-sm-3 col-xs-12">
                                                    <form:input path="mmReportEndDate" cssClass="date-picker form-control col-md-7 col-xs-12" 
                                                                required="required" />
                                                </div>
                                            </div>
                                            
                                            <div id="dateFormGroup" class="form-group displayNone">
                                                <form:label path="mmReportDate" cssClass="control-label col-md-3 col-sm-3 col-xs-12">Date 
                                                    <span class="required">*</span>
                                                </form:label>
                                                
                                                <div class="col-md-3 col-sm-3 col-xs-12">
                                                    <form:input path="mmReportDate" cssClass="date-picker form-control col-md-7 col-xs-12" 
                                                                required="required" />
                                                </div>
                                            </div>
                                            
                                            <div id="monthFormGroup" class="form-group displayNone">
                                                <form:label path="mmReportMonth" cssClass="control-label col-md-3 col-sm-3 col-xs-12">Month 
                                                    <span class="required">*</span>
                                                </form:label>
                                                
                                                <div class="col-md-3 col-sm-3 col-xs-12">
                                                    <form:select path="mmReportMonth" cssClass="form-control">
                                                        <option value="0">Choose Month</option>
                                                        <option value="1">January</option>
                                                        <option value="2">February</option>
                                                        <option value="3">March</option>
                                                        <option value="4">April</option>
                                                        <option value="5">May</option>
                                                        <option value="6">June</option>
                                                        <option value="7">July</option>
                                                        <option value="8">August</option>
                                                        <option value="9">September</option>
                                                        <option value="10">October</option>
                                                        <option value="11">November</option>
                                                        <option value="12">December</option>
                                                    </form:select>
                                                </div>
                                            </div>
                                            
                                            <div id="yearFormGroup" class="form-group displayNone">
                                                <form:label path="mmReportYear" cssClass="control-label col-md-3 col-sm-3 col-xs-12">Year 
                                                    <span class="required">*</span>
                                                </form:label>
                                                
                                                <div class="col-md-3 col-sm-3 col-xs-12">
                                                    <form:select path="mmReportYear" cssClass="form-control">
                                                        <option value="0">Choose Year</option>
                                                        <option value="2016">2016</option>
                                                        <option value="2015">2015</option>
                                                        <option value="2014">2014</option>
                                                        <option value="2013">2013</option>
                                                    </form:select>
                                                </div>
                                            </div>
                                            
                                            <div id="formSeparator" class="ln_solid displayNone"></div>
                                            
                                            <div id="buttonFormGroup" class="form-group displayNone">
                                                <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                                    <button type="button" id="generateReport" 
                                                            class="btn btn-success pull-right">Generate Report</button>
                                                </div>
                                            </div>
                                        </form:form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /filter criteria -->
                        
                        <!-- graphs -->
                        <div id="graphs" class="row displayNone">
                            <div class="col-md-12 col-sm-6 col-xs-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2>Expenditure <small>(Based on Category)</small></h2>
                                        
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
                                        <canvas id="categoryCanvas"></canvas>
                                    </div>
                                </div>
                            </div>
                            
                            <!--
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2>Expenditure <small>(Based on Tags)</small></h2>
                                        
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
                                        <canvas id="tagsCanvas"></canvas>
                                    </div>
                                </div>
                            </div>
                            -->
                        </div>
                        <!-- /graphs -->
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
        <!-- Bootstrap-Daterangepicker -->
        <script src="<%=request.getContextPath()%>/JS/moment.min.js"></script>
        <script src="<%=request.getContextPath()%>/JS/daterangepicker.js"></script>
        <!-- Chart.js -->
        <script src="<%=request.getContextPath()%>/JS/chart.min.js"></script>
        
        <!-- Custom Theme Scripts -->
        <script src="<%=request.getContextPath()%>/JS/custom.min.js"></script>
        
        <script>
            // Rendering Pie Chart (Based on Category)
            function renderCategoryPieChart(categories, percentages) {
                var categoryChartCanvas = $("#categoryCanvas");
                var categoryChartConfig = {
                    type    : 'pie',
                    data    : {
                        datasets : [{
                            // data         : [ percentages ],
                            data            : [ 20000, 14500, 40000, 21000, 17000, 12670, 80007,
                                                25000, 10500, 47000, 22000, 17000, 12670, 87007 ],
                            backgroundColor : [ "#455C73", "#9B59B6", "#BDC3C7", "#26B99A", "#3498DB", "#F7464A", "#46BFBD",
                                                "#34495E", "#B370CF", "#CFD4D8", "#36CAAB", "#49A9EA", "#FF6384", "#36A2EB" ]
                        }],
                        // labels: [ categories ]
                        labels   : [ "Shopping", "Education", "Loans", "Groceries", "Entertainment", "Credit Card", "Fuel",
                                     "EMI", "Home Maintainence", "Bike Maintainence", "Electronics", "Electrical", "Recharges", "Cooking Gas" ]
                    },
                    options : {
                        responsive : true,
                        legend     : {
                            display   : true,
                            position  : 'bottom',
                            fullWidth : true,
                            labels    : {
                                boxWidth : 20
                            }
                        }
                    }
                };
                
                // alert("categoryChartConfig.data.datasets[0].data : " + categoryChartConfig.data.datasets[0].data);
                // alert("categoryChartConfig.data.labels : " + categoryChartConfig.data.labels);
                
                var categoryPieChart = new Chart(categoryChartCanvas, categoryChartConfig);
            }
            
            $(document).ready(function() {
                // Bootstrap DateRangepicker (For Date Fields: #mmReportStartDate, #mmReportEndDate, #mmReportDate)
                $('#mmReportStartDate').daterangepicker({
                    singleDatePicker : true,
                    calender_style   : "picker_3"
                }, 
                function(start, end, label) {
                    console.log(start.toISOString(), end.toISOString(), label);
                });
                
                $('#mmReportEndDate').daterangepicker({
                    singleDatePicker : true,
                    calender_style   : "picker_3"
                }, 
                function(start, end, label) {
                    console.log(start.toISOString(), end.toISOString(), label);
                });
                
                $('#mmReportDate').daterangepicker({
                    singleDatePicker : true,
                    calender_style   : "picker_3"
                }, 
                function(start, end, label) {
                    console.log(start.toISOString(), end.toISOString(), label);
                });
                
                // 'Report For' Dropdown Change Event Handler
                $('#mmReportFor').change(function(e) {
                    $('#formSeparator').addClass('displayNone');
                    $('#buttonFormGroup').addClass('displayNone');
                    
                    // Get all HTML elements having 'displayBlock' class added to it
                    var displayedElements = $('.displayBlock');
                    displayedElements.each(function(index, value) {
                        $(value).removeClass('displayBlock').hide();
                    });
                    
                    var selectedValue = $('#mmReportFor option:selected').val();
                    if (selectedValue == 1) {
                        $('#startDateFormGroup').addClass('displayBlock').show();
                        $('#endDateFormGroup').addClass('displayBlock').show();
                    }
                    else if (selectedValue == 2) {
                        $('#dateFormGroup').addClass('displayBlock').show();
                    }
                    else if (selectedValue == 3) {
                        $('#monthFormGroup').addClass('displayBlock').show();
                        $('#yearFormGroup').addClass('displayBlock').show();
                    }
                    else if (selectedValue == 4) {
                        $('#yearFormGroup').addClass('displayBlock').show();
                    }
                    
                    $('#formSeparator').removeClass('displayNone');
                    $('#buttonFormGroup').removeClass('displayNone');
                    
                    e.preventDefault();
                });
                
                // 'GENERATE REPORT' Button Click Handler
                $('#generateReport').click(function() {
                    $('#graphs').addClass('displayNone');
                    
                    $.ajax({
                        type     : 'POST',
                        url      : 'reports',
                        data     : {
                            'mmReportFor'       : $('#mmReportFor option:selected').val(),
                            'mmReportStartDate' : $('#mmReportStartDate').val(),
                            'mmReportEndDate'   : $('#mmReportEndDate').val(),
                            'mmReportDate'      : $('#mmReportDate').val(),
                            'mmReportMonth'     : $('#mmReportMonth option:selected').val(),
                            'mmReportYear'      : $('#mmReportYear option:selected').val()
                        },
                        dataType : 'json',
                        success  : function(returnData) {
                            renderCategoryPieChart(returnData.categories, returnData.percentages);
                        },
                        error    : function() {
                            alert('Some error occurred...');
                        }
                    });
                    
                    $('#graphs').fadeIn();
                    $('#viewReportsCollapseLink').click();
                });
            });
        </script>
    </body>
</html>