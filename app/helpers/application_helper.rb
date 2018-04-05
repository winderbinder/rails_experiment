module ApplicationHelper

  def copyright_generator
    AlonsoViewTool::Renderer.copyright 'Carfo', 'All rights reserved'
  end
  
end
