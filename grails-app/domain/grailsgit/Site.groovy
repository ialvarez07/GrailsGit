package grailsgit

class Site {

    String name
    Long idSite
    Boolean active

    static hasMany = [categories: Category]
    static constraints = {

        idSite unique: true

    }
}
