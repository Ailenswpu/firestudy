#encoding : utf-8
module ExamsHelper
  def radio
    select =  ['A','B','C','D']
    html = ''
    html << "<p>"
    select.each do |s|
      html << "<input id='answer_#{s}' name='answer' type='radio' value=#{s}>&nbsp;#{s}"
      html << "&nbsp;&nbsp;&nbsp;"
    end
    html << "</p>"
    html
  end
end
