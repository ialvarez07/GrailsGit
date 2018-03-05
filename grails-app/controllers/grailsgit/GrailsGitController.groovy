package grailsgit

class GrailsGitController {

    SiteService siteService  
    CategoryService categoryService
    static defaultAction = "login"

    def listarSitios()
    {
        def lista
        [lista: siteService.list()]
    }
  
    def index() { }

    def change() {
      [mensaje: "VA CAMBIA!"]
    }
  
    def login() {
        String username = params.username
        String password = params.password

        if (!username) {

            return
        }
        def user = User.findByUser(username)
        if (user.password == password) {
            redirect(action: "listarSitios")
        }
    }

    def categories(Site site){
        List<Category> categoryList = Category.findAllBySite(site)

        respond categoryList
    }

    def categoryVisities(Category category) {
        if(category){
            category.visits ++
            categoryService.save(category)
            redirect(controller:"category", action: "show", id:category.id)
        }
        return category
    }
}
