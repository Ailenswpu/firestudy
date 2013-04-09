module QuestionsHelper
  def option question
    tags = ['A.','B.','C.','D.' ]
    options = question.option.split "\r\n"
    Hash[*tags.zip(options).flatten]
  end

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
