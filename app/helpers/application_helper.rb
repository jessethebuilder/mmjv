module ApplicationHelper
  include Parts
  include HtmlTools

  def user_is_admin?
    current_user.admin if user_signed_in?
  end

  #----------------------Twitter Bootstrap----------------------------------------
  def error_row(record)
    html = '<div class="row"><div class="col-sm-12">'
    html += error_explanation(record)
    html += '</div></div>'
    html.html_safe
  end

  def bootstrap_text_field(attr, form_builder, media_query: 'sm', col_span: 4, alt_label: nil)
    html = bootstrap_form_col(media_query, col_span) do
      str = form_builder.label attr, alt_label, :class => 'form-label'
      str += form_builder.text_field attr, :class => 'form-control'
      str
    end
    html.html_safe
  end

  def bootstrap_select(attr, form_builder, options, media_query: 'sm', col_span: 4, alt_label: nil)
    html = bootstrap_form_col(media_query, col_span) do
      str = form_builder.label attr, alt_label, :class => 'form-label'
      str += form_builder.select attr, options, {}, :class => 'form-control'
      str
    end
    html.html_safe
  end

  def bootstrap_submit_row(form_builder)
    html = '<div class="row"><div class="col-sm-12">'
    html += form_builder.submit :class => 'btn btn-primary'
    html += '</div></div>'
    html.html_safe
  end

  private

  def bootstrap_form_col(media_query, col_span, &block)
    html = %Q|<div class="col-#{media_query}-#{col_span}">|
    html += '<div class="form-group">'
    html += capture(&block)
    html += '</div></div>'
    html
  end
end
