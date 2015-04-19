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
    	def staticDepartments = [
    		"Computer Science", 
            "Dance",
    		"Engineering", 
            "Ethnic Studies"]
    	def staticDays = [
    		"M", "T", "W", "R", "F"]
    	//def staticType = [
        //["Lecture",     "Discussion",   "Laboratory"], 
        //["LEC",         "DIS",          "LAB"       ]];
    	def staticType = ["Lecture",     "Discussion",   "Laboratory"];
        

      	[ quarters: staticQuarters, years: staticYears, departments: staticDepartments, days: staticDays, type: staticType ]

    }
}
