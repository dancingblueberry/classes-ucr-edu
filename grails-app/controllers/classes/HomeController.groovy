package classes

class HomeController {

    def index() { 
    	
    	def staticQuarters = [
    		"SUMMER", 
    		"SPRING",
    		"WINTER", 
    		"FALL"]
    	def staticYears = [
    		"2015", 
    		"2014", 
    		"2013", 
    		"2012"]
    	def staticSubjects = [
    		["CS", "Computer Science"], 
    		["ENGR", "Engineering"]]
    	def staticDays = [
    		"M", "T", "W", "R", "F"]
    	def staticType = [
    		"Lecture", 
    		"Discussion", 
    		"Laboratory"]

    	def staticTitles = [
    		"Course #", 
			"Sec.",
			"Call #",
			"Course Title", 
			"Type", 
			"Day", 
			"Time", 
			"Avail Seats", 
			"Status"] 
    	
      	[ quarters: staticQuarters, years: staticYears, subjects: staticSubjects, days: staticDays, type: staticType,
      	titles: staticTitles ]

    }
}
