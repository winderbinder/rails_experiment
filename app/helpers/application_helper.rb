module ApplicationHelper

  def copyright_generator
    AlonsoViewTool::Renderer.copyright 'Carfo', 'All rights reserved'
  end

  def self.alert
    alert = (flash[:alert] || flash[:error] || flash[:notice])

    if alert
      alert_generator alert
    end
  end
  
end
