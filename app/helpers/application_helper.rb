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

  def self.alert_generator msg
    js add_gritter(msg, title: "Alonso Hernandez Portfolio", sticky: false)
  end

  
end