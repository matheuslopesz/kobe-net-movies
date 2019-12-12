module ApplicationHelper
  def flash_message(obj = nil)
    msg = []
    titulo = css = nil
    %i[notice alert error information].each do |flash_type|
      if flash[flash_type].present?
        titulo, css       = flash_message_style(flash_type)
        msg              << flash[flash_type]
        flash[flash_type] = nil
      end
    end
    if obj and !obj.errors.full_messages.blank?
      titulo, css = flash_message_style(:error)
      obj.errors.full_messages.uniq.each do |erro|
        msg << erro.to_s.gsub('base','')
      end
    end

    retorno = ""
    msg.each do |texto|
      retorno += content_tag(:div, 
                    content_tag(:div, 
                      content_tag(:div, content_tag(:span, titulo.to_s + texto.to_s), class: css),
                    class: 'col-md-12'), class: 'row')
    end
    retorno.html_safe
  end

  def flash_message_style(flash_type)
    flash_data  = { success:      ['Informação: ', 'alert alert-success'], 
                    alert:        ['Atenção: ',    'alert alert-warning'], 
                    warning:      ['Atenção: ',    'alert alert-warning'], 
                    error:        ['Erros: ',      'alert alert-danger'], 
                    information:  ['Nota: ',       'alert alert-info'],
                    notice:       ['Informação: ', 'alert alert-success'] }
    if flash_data[flash_type]
      flash_data[flash_type]
    else
      ['Nota: ', 'alert alert-default'] 
    end
  end
end
