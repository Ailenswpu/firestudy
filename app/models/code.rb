#encoding : utf-8
class Code
  include Mongoid::Document

  field :code, type: String

  CODE_THEME = %w( Ruby Python JavaScript C++ C Lisp Clojure Lua C# Java)
end
