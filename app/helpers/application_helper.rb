module ApplicationHelper
    def page_title
        title = "telbook"
        title = @page_title + " - " + title if @page_title
        title
    end
end
