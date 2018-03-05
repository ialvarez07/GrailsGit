package grailsgit

class GrailsGitController {

    SiteService siteService  
    CategoryService categoryService
    static defaultAction = "login"

    def listarSitios()
    {
        def lista
        [lista = siteService.List()]
    }
  
    def index() { }

    def change() {
      [mensaje: "VA CAMBIA!"]
    }
  
    def login() {
        String username = params.username
        String password = params.password

        if(!username){

            return
        }
        def user = User.findByUser(username)
        if(user.password == password){
            redirect(action: "listarSitios")
        }
      
    def categoryVisities(Long id) {
        Category category =  categoryService.get(id)
        category.visits ++
        categoryService.save(category)
        return category
    }
}
