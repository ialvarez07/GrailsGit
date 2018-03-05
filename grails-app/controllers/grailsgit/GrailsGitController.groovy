package grailsgit

class GrailsGitController {

    SiteService siteService

    def index() { }

    def listarSitios()
    {
        def lista
        [lista = siteService.List()]

    }
}
