<html>

<head>
    <title>UCR Classes</title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'foundation.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'custom.css')}" type="text/css">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script type="text/javascript" src="http://www.parsecdn.com/js/parse-1.4.2.min.js"></script>
</head>

<body>

	<div class="fixed">
		<nav class="top-bar" data-topbar role="navigation">
			<ul class="title-area">
				<li class="name">
				  	<h1><a href="#">UCR Classes</a></h1>
				</li>
				 <!-- Remove the class "menu-icon" to get rid of menu icon. Take out "Menu" to just have icon alone -->
				<li class="toggle-topbar menu-icon"><a href="#"><span>Menu</span></a></li>
			</ul>

			<section class="top-bar-section">
				<!-- Right Nav Section -->
				<ul class="right">
					<li><a href="#">Compare Courses</a></li>
					<li class="has-dropdown">
						<a href="#">Schedules</a>
						<ul class="dropdown">
							<li class="active"><a href="#">Plan 1</a></li>
						  	<li><a href="#">Plan 2</a></li>
						  	<li><a href="#">+ New Plan</a></li>
						  	<li><a href="#">[][] Compare Plans</a></li>
						</ul>
					</li>
				</ul>
			</section>
		</nav>
	</div>

	<g:form>
		<div class="row">
			<!-- quarter -->
			<div class="small-3 columns">
				<g:select id="quarter" name="quarter" from="${quarters}" />
		    </div>
		    <!-- year -->
		    <div class="small-3 columns">
				<g:select id="year" name="year" from="${years}" />
		    </div>
		    <!-- subject -->
		    <div class="small-3 columns">
				<g:select id="department" name="department" from="${departments}" noSelection="${['null':'Department']}" />
		    </div>
		    <!-- course number -->
		    <div class="small-3 columns">
		    	<g:textField id="courseNumber" name="CourseNumber" placeholder="Course Number" />
		    </div>
		    <!-- days -->
		    <div class="small-6 columns">
		    	<!-- <g:each in="${days}" var="day">
		    		<g:checkBox id="on${day}" name="day" /> ${day}
		    	</g:each> -->
		    	<g:checkBox id="onM" name="dayM" /> M
		    	<g:checkBox id="onT" name="dayT" /> T
		    	<g:checkBox id="onW" name="dayW" /> W
		    	<g:checkBox id="onR" name="dayR" /> R
		    	<g:checkBox id="onF" name="dayF" /> F
		    	<g:checkBox id="onS" name="dayS" /> S
		    </div>
		    <!-- type -->
		    <!-- <div class="small-6 columns">
		    	<g:select name="type" from="${type}" noSelection="${['null':'Type']}" />
		    </div> -->
		    <!-- submit search request -->
		    <div class="large-2 columns">
		    	<p class="button" onclick="search()">Search</p>
		    </div>
		</div>
	</g:form>

	<div id="results-table">
	</div>

	<!-- <div class="row">
		<div class="large-12 columns">
			<table class="full-width">
				<tr>
					<th>
					</th>
					<th>Monday
					</th>
					<th>Tuesday
					</th>
					<th>Wednesday
					</th>
					<th>Thursday
					</th>
					<th>Friday
					</th>
					<th>Saturday
					</th>
				</tr>
				<tr>
					<th>8:00 AM
					</th>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>
					<th>9:00 AM
					</th>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>
					<th>10:00 AM
					</th>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>
					<th>11:00 AM
					</th>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>
					<th>12:00 PM
					</th>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>
					<th>1:00 PM
					</th>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>
					<th>2:00 PM
					</th>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>
					<th>3:00 PM
					</th>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>
					<th>4:00 PM
					</th>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>
					<th>5:00 PM
					</th>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>
					<th>6:00 PM
					</th>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>
					<th>7:00 PM
					</th>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>
					<th>8:00 PM
					</th>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
			</table>
		</div>
	</div> -->



	<div id="calendar">
	</div>

	<g:javascript src="jquery.js" />
	<g:javascript src="foundation.min.js" />
	<script type="text/javascript">
		$(document).foundation();
		Parse.initialize("rMVCfg1QjbCVG3w6n03uKFwg1GvC64fPRWi8oQHW", "ISIuV7n9bhoSglfsijwdDluGLeVdHEAq1VVO4TDZ");

		Parse.User.logIn("amanda", "amanda", {
			success: function(user) {
			    // Do stuff after successful login.
			},
			error: function(user, error) {
			    // The login failed. Check error to see why.
			}
		});

		var calendar = [
			["","","","","",""],
			["","","","CS164: LAB","CS170: DIS",""],
			["","","","CS164: LAB","",""],
			["DNCE071B: STU","","DNCE071B: STU","CS164: LAB","",""],
			["DNCE071B: STU","","DNCE071B: STU","","",""],
			["CS166: LEC","","CS166: LEC","","",""],
			["CS166: LEC","","CS166: LEC","","",""],
			["CS170: LEC","","CS170: LEC","","CS170: LEC",""],
			["","","","","",""],
			["","CS164: LEC","","CS164: LEC","",""],
			["","CS164: LEC","","CS164: LEC","",""],
			["","","","","",""],
			["","","","CS166: LAB","",""],
			["","","","CS166: LAB","",""],
			["","","","CS166: LAB","",""],
			["","","","","",""]]; 
		var tableCalendar = '<div class="row"><div class="large-12 columns"><table class="full-width">'; 
		var days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]; 

		tableCalendar += "<tr><th></th>"; 
		for (var i = 0; i < days.length; ++i) {
			tableCalendar += "<th>" + days[i] + "</th>";
		}
		tableCalendar += "</tr>"; 
		for (var i = 0; i < calendar.length; ++i) {
			tableCalendar += "<tr><th>" + (i+7) + "</th>"; 
			for (var j = 0; j < calendar[i].length; ++j) {
				tableCalendar += "<td"; 
				if (calendar[i][j])
					tableCalendar += " class='event'";
				tableCalendar += ">" + calendar[i][j] + "</td>"; 
			}
			tableCalendar += "</tr>"; 
		}
		tableCalendar += "</table></div></div>"; 

		document.getElementById("calendar").innerHTML = tableCalendar; 

		

		function search() {

			var tableTitles = [
				["Course", "Sec.", "Call #", "Title", "Type", "Day", "Time"],
				["courseNumber", "sectionNumber", "callNumber", "title", "type", "days", "startTime"]];

			var department = document.getElementById("department").value; 
			var courseNumber = document.getElementById("courseNumber").value; 
			var days = []; 
			if (document.getElementById("onM").checked)
				days.push("M");
			if (document.getElementById("onT").checked)
				days.push("T"); 
			if (document.getElementById("onW").checked)
				days.push("W"); 
			if (document.getElementById("onR").checked) 
				days.push("R");
			if (document.getElementById("onF").checked)
				days.push("F"); 
			if (document.getElementById("onS").checked)
				days.push("S"); 

			var Class = Parse.Object.extend("Class");
			var query = new Parse.Query(Class);
			query.ascending("departmentAbbreviation,courseNumber,sectionNumber"); 

			if (department != "null")
				query.equalTo("department", department); 
			if (courseNumber)
				query.equalTo("courseNumber", courseNumber);
			if (days.length > 0)
				query.containedIn("days", days); 

			query.find({
				success: function(results) {

					var tableResults = '<div class="row"><div class="large-12 columns"><table class="full-width">'; 
					tableResults += results.length + " results found"; 
					
					if (results.length > 0) {
						tableResults += "<tr>"; 
						for(var i = 0; i < tableTitles[0].length; ++i) {
							tableResults += "<th>" + tableTitles[0][i] + "</th>"; 
						}
						tableResults += "</tr>"; 

						for(var i = 0; i < results.length; ++i) {
							var course = results[i]; 
							tableResults += "<tr>"; 
							for (var j = 0; j < tableTitles[1].length; ++j) {
								var entry = course.get(tableTitles[1][j]); 
								if (tableTitles[0][j] == "Course") {
									// var subject = course.get("subject"); 
									entry = course.get("departmentAbbreviation") + " " + course.get("courseNumber");
								} 
								if (tableTitles[0][j] == "Time") {
									entry = course.get("startTime").toHHMM() + " - " + course.get("endTime").toHHMM(); 
								}
								tableResults += "<td>" + entry + "</td>";
							}
							
							tableResults += "</tr>"; 
						}
						
					} 
					tableResults += '</table></div></div>'; 
					document.getElementById("results-table").innerHTML = tableResults; 
					
				},
				error: function(error) {
					document.getElementById("results-table").innerHTML = "Error: " + error.code + " " + error.message;
				}
			}); 
		}

		Number.prototype.toHHMM = function () {
		    var time = this.toString(); 
		    var position = time.length - 2; 
		    time = time.substr(0, position) + ":" + time.substr(position);
		    return time;
		}

	</script>
</body>

</html>
