package placements

class ApplyController {

    def index() { }
        

        def processApplication(){
        
                log.debug(params.txtName)
                log.debug(params.txtPlacement)
                log.debug(params.txtStatus)

                        
                def findStudent = Student.findByName(params.txtName)
                def findPlacement = Placement.findByJobTitle(params.txtPlacement)
                def findStatus = Status.findByCode("001")

                log.debug(findStudent)
                log.debug(findPlacement)
                log.debug(findStatus)

                def applyJob = new Application(student:findStudent, placement:findPlacement, status:findStatus)
                        
                       if (applyJob.save()){
log.debug("saved okay")
}else{
log.debug("saved bad")
applyJob.errors.each{

log.debug(it);


}
                        }
                

                redirect(action:'application')
                

}
}
