<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <title>Money Manager | View Transactions</title>
        
        <!-- Bootstrap -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/font-awesome.min.css">
        <!-- NProgress -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/nprogress.css">
        <!-- Datatables -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/dataTables.bootstrap.min.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/buttons.bootstrap.min.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/fixedHeader.bootstrap.min.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/responsive.bootstrap.min.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/scroller.bootstrap.min.css">
        
        <!-- Custom Theme Style -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/custom.min.css">
        
        <style type="text/css">
            .panel_toolbox {
                min-width: 24px;
            }
            .displayNone {
                display: none;
            }
            #datatable-responsive {
                width: 100%;
                border-spacing: 0;
                border-collapse: collapse;
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
                            <!-- filter criteria -->
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2>Transactions Filter <small></small></h2>
                                        
                                        <ul class="nav navbar-right panel_toolbox">
                                            <li><a class="collapse-link" id="viewTxnsCollapseLink"><i class="fa fa-chevron-up"></i></a></li>
                                        </ul>
                                        
                                        <div class="clearfix"></div>
                                    </div>
                                    
                                    <div class="x_content">
                                        <br />
                                        
                                        <form:form action="transactionview" method="POST" modelAttribute="transactionmodel"
                                                    cssClass="form-horizontal form-label-left">
                                            <div class="form-group">
                                                <form:label path="viewTxnsForType" class="control-label col-md-3 col-sm-3 col-xs-12">
                                                    View Transactions for: <span class="required">*</span>
                                                </form:label>
                                                
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <form:select path="viewTxnsForType" cssClass="form-control">
                                                        <form:option value="0">Choose option</form:option>
                                                        <form:option value="1">For a period</form:option>
                                                        <form:option value="2">For a day</form:option>
                                                        <form:option value="3">For a month</form:option>
                                                        <form:option value="4">For a year</form:option>
                                                    </form:select>
                                                </div>
                                            </div>
                                            
                                            <div id="startDateFormGroup" class="form-group displayNone">
                                                <form:label path="viewTxnsStartDate" class="control-label col-md-3 col-sm-3 col-xs-12">
                                                    Start Date <span class="required">*</span>
                                                </form:label>
                                                
                                                <div class="col-md-3 col-sm-3 col-xs-12">
                                                    <form:input path="viewTxnsStartDate" cssClass="date-picker form-control col-md-7 col-xs-12" 
                                                                required="required" />
                                                </div>
                                            </div>
                                            
                                            <div id="endDateFormGroup" class="form-group displayNone">
                                                <form:label path="viewTxnsEndDate" class="control-label col-md-3 col-sm-3 col-xs-12">
                                                    End Date <span class="required">*</span>
                                                </form:label>
                                                
                                                <div class="col-md-3 col-sm-3 col-xs-12">
                                                    <form:input path="viewTxnsEndDate" cssClass="date-picker form-control col-md-7 col-xs-12" 
                                                                required="required" />
                                                </div>
                                            </div>
                                            
                                            <div id="dateFormGroup" class="form-group displayNone">
                                                <form:label path="viewTxnsDate" class="control-label col-md-3 col-sm-3 col-xs-12">
                                                    Date <span class="required">*</span>
                                                </form:label>
                                                
                                                <div class="col-md-3 col-sm-3 col-xs-12">
                                                    <form:input path="viewTxnsDate" cssClass="date-picker form-control col-md-7 col-xs-12" 
                                                                required="required" />
                                                </div>
                                            </div>
                                            
                                            <div id="monthFormGroup" class="form-group displayNone">
                                                <form:label path="viewTxnsMonth" class="control-label col-md-3 col-sm-3 col-xs-12">
                                                    Month <span class="required">*</span>
                                                </form:label>
                                                
                                                <div class="col-md-3 col-sm-3 col-xs-12">
                                                    <form:select path="viewTxnsMonth" cssClass="form-control">
                                                        <form:option value="0">Choose Month</form:option>
                                                        <form:option value="1">January</form:option>
                                                        <form:option value="2">February</form:option>
                                                        <form:option value="3">March</form:option>
                                                        <form:option value="4">April</form:option>
                                                        <form:option value="5">May</form:option>
                                                        <form:option value="6">June</form:option>
                                                        <form:option value="7">July</form:option>
                                                        <form:option value="8">August</form:option>
                                                        <form:option value="9">September</form:option>
                                                        <form:option value="10">October</form:option>
                                                        <form:option value="11">November</form:option>
                                                        <form:option value="12">December</form:option>
                                                    </form:select>
                                                </div>
                                            </div>
                                            
                                            <div id="yearFormGroup" class="form-group displayNone">
                                                <form:label path="viewTxnsYear" class="control-label col-md-3 col-sm-3 col-xs-12">
                                                    Year <span class="required">*</span>
                                                </form:label>
                                                
                                                <div class="col-md-3 col-sm-3 col-xs-12">
                                                    <form:select path="viewTxnsYear" cssClass="form-control">
                                                        <option value="0">Choose Year</option>
                                                        <option value="2016">2016</option>
                                                        <option value="2015">2015</option>
                                                        <option value="2014">2014</option>
                                                        <option value="2013">2013</option>
                                                    </form:select>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <form:label path="viewTxnsByCategory" class="control-label col-md-3 col-sm-3 col-xs-12">
                                                    View Transactions by Category: 
                                                </form:label>
                                                
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <form:select path="viewTxnsByCategory" cssClass="form-control">
                                                        <form:option value="0">Choose option</form:option>
                                                        <form:option value="Placeholder">Placeholder</form:option>
                                                        <form:option value="Message">Message</form:option>
                                                        <form:option value="Smartphone">Smartphone</form:option>
                                                        <form:option value="Settings">Settings</form:option>
                                                        <form:option value="Clock">Clock</form:option>
                                                        <form:option value="House">House</form:option>
                                                        <form:option value="Contract">Contract</form:option>
                                                        <form:option value="Credit Card">Credit Card</form:option>
                                                        <form:option value="Television">Television</form:option>
                                                    </form:select>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <form:label path="viewTxnsByTags" class="control-label col-md-3 col-sm-3 col-xs-12">
                                                    View Transactions by Tags: 
                                                </form:label>
                                                
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <form:select path="viewTxnsByTags" cssClass="form-control">
                                                        <form:option value="0">Choose option</form:option>
                                                        <form:option value="1">Pre-defined</form:option>
                                                        <form:option value="2">User-defined</form:option>
                                                    </form:select>
                                                </div>
                                            </div>
                                            
                                            <div id="formSeparator" class="ln_solid displayNone"></div>
                                            
                                            <div id="buttonFormGroup" class="form-group displayNone">
                                                <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                                    <input type="button" id="viewTxns" class="btn btn-success pull-right" 
                                                            value="View Transactions" />
                                                </div>
                                            </div>
                                        </form:form>
                                    </div>
                                </div>
                            </div>
                            <!-- /filter criteria -->
                            
                            <!-- filter results -->
                            <div id="txns" class="col-md-12 col-sm-12 col-xs-12 displayNone">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2>Transactions <small id="txnPeriod"></small></h2>
                                        
                                        <ul class="nav navbar-right panel_toolbox">
                                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
                                        </ul>
                                        
                                        <div class="clearfix"></div>
                                    </div>
                                    
                                    <div class="x_content">
                                        <table id="datatable-responsive" 
                                               class="table table-striped table-bordered dt-responsive nowrap" width="100%"></table>
                                    </div>
                                </div>
                            </div>
                            <!-- /filter results -->
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
        <!-- Datatables -->
        <script src="<%=request.getContextPath()%>/JS/jquery.dataTables.min.js"></script>
        <script src="<%=request.getContextPath()%>/JS/dataTables.bootstrap.min.js"></script>
        <script src="<%=request.getContextPath()%>/JS/dataTables.buttons.min.js"></script>
        <script src="<%=request.getContextPath()%>/JS/dataTables.responsive.min.js"></script>
        <script src="<%=request.getContextPath()%>/JS/responsive.bootstrap.js"></script>
        
        <!-- Custom Theme Scripts -->
        <script src="<%=request.getContextPath()%>/JS/custom.min.js"></script>
        
        <script>
            $(document).ready(function() {
                // Bootstrap DateRangepicker (For Transaction Date Field: #startDate, #endDate, #date)
                $('#viewTxnsStartDate').daterangepicker({
                    singleDatePicker : true,
                    calender_style   : "picker_3"
                }, 
                function(start, end, label) {
                    console.log(start.toISOString(), end.toISOString(), label);
                });
                
                $('#viewTxnsEndDate').daterangepicker({
                    singleDatePicker : true,
                    calender_style   : "picker_3"
                }, 
                function(start, end, label) {
                    console.log(start.toISOString(), end.toISOString(), label);
                });
                
                $('#viewTxnsDate').daterangepicker({
                    singleDatePicker : true,
                    calender_style   : "picker_3"
                }, 
                function(start, end, label) {
                    console.log(start.toISOString(), end.toISOString(), label);
                });
                
                // 
                $('#viewTxnsForType').change(function() {
                    $('#formSeparator').addClass('displayNone');
                    $('#buttonFormGroup').addClass('displayNone');
                    
                    // Get all HTML elements having 'displayBlock' class added to it
                    var displayedElements = $('.displayBlock');
                    displayedElements.each(function(index, value) {
                        $(value).removeClass('displayBlock').hide();
                    });
                    
                    var selectedValue = $('#viewTxnsForType option:selected').val();
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
                });
                
                // VIEW Button Click Handler
                $('#viewTxns').click(function() {
                    $('#txns').addClass('displayNone');
                    $('#txnPeriod').empty();
                    
                    var selectedValue = $('#viewTxnsForType option:selected').val();
                    if (selectedValue == 1) {
                        $('#txnPeriod').html('(For the period: <strong>' + $('#viewTxnsStartDate').val() + ' - ' 
                                                                         + $('#viewTxnsEndDate').val() + '</strong>)');
                    }
                    else if (selectedValue == 2) {
                        $('#txnPeriod').html('(For the day: <strong>' + $('#viewTxnsDate').val() + '</strong>)');
                    }
                    else if (selectedValue == 3) {
                        $('#txnPeriod').html('(For the month: <strong>' + $('#viewTxnsMonth option:selected').text() + ' ' 
                                                                        + $('#viewTxnsYear option:selected').text() + '</strong>)');
                    }
                    else if (selectedValue == 4) {
                        $('#txnPeriod').html('(For the year: <strong>' + $('#viewTxnsYear option:selected').text() + '</strong>)');
                    }
                    
                    var dataSet = [ 
                        [ "Tiger Nixon", "System Architect", "Edinburgh", "5421", "2011/04/25", "$320,800" ], 
                        [ "Garrett Winters", "Accountant", "Tokyo", "8422", "2011/07/25", "$170,750" ], 
                        [ "Ashton Cox", "Junior Technical Author", "San Francisco", "1562", "2009/01/12", "$86,000" ], 
                        [ "Cedric Kelly", "Senior Javascript Developer", "Edinburgh", "6224", "2012/03/29", "$433,060" ], 
                        [ "Airi Satou", "Accountant", "Tokyo", "5407", "2008/11/28", "$162,700" ], 
                        [ "Brielle Williamson", "Integration Specialist", "New York", "4804", "2012/12/02", "$372,000" ], 
                        [ "Herrod Chandler", "Sales Assistant", "San Francisco", "9608", "2012/08/06", "$137,500" ], 
                        [ "Rhona Davidson", "Integration Specialist", "Tokyo", "6200", "2010/10/14", "$327,900" ], 
                        [ "Colleen Hurst", "Javascript Developer", "San Francisco", "2360", "2009/09/15", "$205,500" ], 
                        [ "Sonya Frost", "Software Engineer", "Edinburgh", "1667", "2008/12/13", "$103,600" ], 
                        [ "Jena Gaines", "Office Manager", "London", "3814", "2008/12/19", "$90,560" ], 
                        [ "Quinn Flynn", "Support Lead", "Edinburgh", "9497", "2013/03/03", "$342,000" ], 
                        [ "Charde Marshall", "Regional Director", "San Francisco", "6741", "2008/10/16", "$470,600" ], 
                        [ "Haley Kennedy", "Senior Marketing Designer", "London", "3597", "2012/12/18", "$313,500" ], 
                        [ "Tatyana Fitzpatrick", "Regional Director", "London", "1965", "2010/03/17", "$385,750" ], 
                        [ "Michael Silva", "Marketing Designer", "London", "1581", "2012/11/27", "$198,500" ], 
                        [ "Paul Byrd", "Chief Financial Officer (CFO)", "New York", "3059", "2010/06/09", "$725,000" ], 
                        [ "Gloria Little", "Systems Administrator", "New York", "1721", "2009/04/10", "$237,500" ], 
                        [ "Bradley Greer", "Software Engineer", "London", "2558", "2012/10/13", "$132,000" ], 
                        [ "Dai Rios", "Personnel Lead", "Edinburgh", "2290", "2012/09/26", "$217,500" ], 
                        [ "Jenette Caldwell", "Development Lead", "New York", "1937", "2011/09/03", "$345,000" ], 
                        [ "Yuri Berry", "Chief Marketing Officer (CMO)", "New York", "6154", "2009/06/25", "$675,000" ], 
                        [ "Caesar Vance", "Pre-Sales Support", "New York", "8330", "2011/12/12", "$106,450" ], 
                        [ "Doris Wilder", "Sales Assistant", "Sidney", "3023", "2010/09/20", "$85,600" ], 
                        [ "Angelica Ramos", "Chief Executive Officer (CEO)", "London", "5797", "2009/10/09", "$1,200,000" ], 
                        [ "Gavin Joyce", "Developer", "Edinburgh", "8822", "2010/12/22", "$92,575" ], 
                        [ "Jennifer Chang", "Regional Director", "Singapore", "9239", "2010/11/14", "$357,650" ], 
                        [ "Brenden Wagner", "Software Engineer", "San Francisco", "1314", "2011/06/07", "$206,850" ], 
                        [ "Fiona Green", "Chief Operating Officer (COO)", "San Francisco", "2947", "2010/03/11", "$850,000" ], 
                        [ "Shou Itou", "Regional Marketing", "Tokyo", "8899", "2011/08/14", "$163,000" ], 
                        [ "Michelle House", "Integration Specialist", "Sidney", "2769", "2011/06/02", "$95,400" ], 
                        [ "Suki Burks", "Developer", "London", "6832", "2009/10/22", "$114,500" ], 
                        [ "Prescott Bartlett", "Technical Author", "London", "3606", "2011/05/07", "$145,000" ], 
                        [ "Gavin Cortez", "Team Leader", "San Francisco", "2860", "2008/10/26", "$235,500" ], 
                        [ "Martena Mccray", "Post-Sales support", "Edinburgh", "8240", "2011/03/09", "$324,050" ], 
                        [ "Unity Butler", "Marketing Designer", "San Francisco", "5384", "2009/12/09", "$85,675" ] 
                    ];
                    
                    // Intialize the Transactions Filter Table with jQuery Datatable
                    $('#datatable-responsive').DataTable({ 
                        data    : dataSet, 
                        columns : [
                            { title : "Name" }, 
                            { title : "Position" }, 
                            { title : "Office" }, 
                            { title : "Extn." }, 
                            { title : "Start date" }, 
                            { title : "Salary" } 
                        ]
                    });
                    
                    $('#txns').fadeIn();
                    $('#viewTxnsCollapseLink').click();
                });
            });
        </script>
    </body>
</html>