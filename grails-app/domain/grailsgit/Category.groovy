package grailsgit

class Category {

    String name
    String urlImage
    int visits

    static belongsTo = [site : Site]

    static constraints = {
        visits min: 0
        name blank: false
        urlImage url: true
    }
}
