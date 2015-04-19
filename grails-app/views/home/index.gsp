<html>

<head>
    <title>UCR Classes</title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'foundation.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'custom.css')}" type="text/css">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script type="text/javascript" src="http://www.parsecdn.com/js/parse-1.4.2.min.js"></script>
</head>

<body>
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
				<g:select id="subject" name="subject" from="${subjects}" noSelection="${['null':'Subject']}" />
		    </div>
		    <!-- course number -->
		    <div class="small-3 columns">
		    	<g:textField id="courseNumber" name="CourseNumber" placeholder="Course Number" />
		    </div>
		    <!-- days -->
		    <div class="small-6 columns">
		    	<g:each in="${days}" var="day">
		    		<g:checkBox id="on${day}" name="day" /> ${day}
		    	</g:each>
		    </div>
		    <!-- type -->
		    <div class="small-6 columns">
		    	<g:select name="type" from="${type}" noSelection="${['null':'Type']}" />
		    </div>
		    <!-- submit search request -->
		    <div class="small-2 columns">
		    	<p class="button" onclick="search()">Search</p>
		    </div>
		</div>
	</g:form>

	<div class="row">
		<div class="large-12 columns">
			<div id="results-count"></div>
		</div>
	</div>

	<div id="results-table">
	</div>

	<script type="text/javascript">
		Parse.initialize("rMVCfg1QjbCVG3w6n03uKFwg1GvC64fPRWi8oQHW", "ISIuV7n9bhoSglfsijwdDluGLeVdHEAq1VVO4TDZ");

		function search() {

			var tableTitles = [
				["Course"		, "courseNumber"], 
				["Sec."			, "sectionNumber"],
				["Call #"		, "callNumber"],
				["Title"		, "title"], 
				["Type"			, "type"], 
				["Day"			, "day"], 
				["Time"			, "time"], 
				["Avail. Seats"	, "availableSeats"], 
				["Status"		, "status"]]; 

			var courseNumber = document.getElementById("courseNumber").value; 

			var Class = Parse.Object.extend("Class");
			var query = new Parse.Query(Class);
			if (courseNumber)
				query.equalTo("courseNumber", courseNumber);
			query.find({
				success: function(results) {

					var tableResults = '<div class="row"><div class="large-12 columns"><table class="full-width">'; 
					tableResults += results.length + " results found"; 
					
					if (results.length > 0) {

						for(var i = 0; i < tableTitles.length; ++i) {
							tableResults += "<th>" + tableTitles[i][0] + "</th>"; 
						}

						for(var i = 0; i < results.length; ++i) {
							var object = results[i]; 
							tableResults += "<tr>"; 
							for (var j = 0; j < tableTitles.length; ++j)
								tableResults += "<td>" + object.get(tableTitles[j][1]) + "</td>";
							tableResults += "</tr>"; 
						}
						
					} 
					tableResults += '</table></div></div>'; 
					document.getElementById("results-table").innerHTML = tableResults; 
					
				},
				error: function(error) {
					alert("Error: " + error.code + " " + error.message);
				
				}
			}); 
		}
	</script>
</body>

</html>
