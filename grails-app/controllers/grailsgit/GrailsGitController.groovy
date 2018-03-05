package grailsgit

class GrailsGitController {

    static defaultAction = "login"

    def index() { }

    def login() {
        String username = params.username
        String password = params.password

        if(!username){

            return
        }
        def user = User.findByUser(username)
        if(user.password == password){
            redirect(action: "index")
        }

    }
}
