package grailsgit

class GrailsGitController {

    CategoryService categoryService

    def categoryVisities(Long id) {
        Category category =  categoryService.get(id)
        category.visits ++
        categoryService.save(category)
        return category
    }
}
