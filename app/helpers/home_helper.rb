module HomeHelper
  def flash_class_for flash_type
    case flash_type
    when 'success' then 'alert-success'
    when 'error'   then 'alert-danger'
    when 'danger'   then 'alert-danger'
    when 'alert'   then 'alert-warning'
    when 'notice'  then 'alert-info'
    when 'info'  then 'alert-info'
    end
  end
end