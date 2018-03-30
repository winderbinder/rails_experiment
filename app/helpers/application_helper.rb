module ApplicationHelper

  def copyright_generator
    AlonsoViewTool::Renderer.copyright 'Alonso Hernandez', 'All rights reserved'
  end
  
end
