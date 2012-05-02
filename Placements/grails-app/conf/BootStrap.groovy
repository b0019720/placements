import placements.Student
import placements.Placement
import placements.Status

class BootStrap {

def Status1 = new Status(code:"001",Description:"is avaiable ").save();
def Status2 = new Status(code:"002",Description:"not avaiable ").save();

    def init = { servletContext ->
    def chris = new Student(name:"chris",courseCode:"w21",notes:"none").save();
    def luke = new Student(name:"luke",courseCode:"w22",notes:"none").save();
    def paul = new Student(name:"paul",courseCode:"w23",notes:"none").save();              
    
                def Placement1 = new Placement(jobTitle:"web systems job",CompanyName:"hallam               inc",status:Status2).save();
            
                def Placement2 = new Placement(jobTitle:"mediajob",CompanyName:"media inc",Status:Status1).save();           



}

    def destroy = {
    }
}




 
