module ApplicationHelper
  def nav_menu_item_class(path)
    path == "/#{controller_path}" ? "nav-menu-item-active" : "nav-menu-item"
  end
end
