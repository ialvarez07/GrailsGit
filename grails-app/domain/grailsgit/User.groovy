package grailsgit

class User {

    
    String name
    String lastName
    String user
    String password

    static constraints = {
        user blank: false, nullable: false
        password blank: false, nullable: false
    }
}
