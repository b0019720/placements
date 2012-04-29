import placements.Student
import placements.Placement
import placements.Status

class BootStrap {

def Status1 = new Status(code:"001",Description:"is avaiable ").save();
def Status2 = new Status(code:"002",Description:"not avaiable ").save();

    def init = { servletContext ->
    def chris = new Student(name:"chris",CourseCode:"w21",Notes:"none").save();
    def luke = new Student(name:"luke",CourseCode:"w22",Notes:"none").save();
    def paul = new Student(name:"paul",CourseCode:"w23",Notes:"none").save();              
    
                def Placement1 = new Placement(JobTitle:"web systems job",CompanyName:"hallam               inc",status:Status2).save();
            
                def Placement2 = new Placement(JobTitle:"mediajob",CompanyName:"media inc",Status:Status1).save();           



}

    def destroy = {
    }
}




 
