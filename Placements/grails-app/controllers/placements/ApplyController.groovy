package placements

class ApplyController {

    def index() { }
        

        def processApplication(){
        
                log.debug(params.txtName)
                redirect(action:'index')
                

}
}
