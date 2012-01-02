# General awesome. From: http://drnicwilliams.com/2006/10/12/my-irbrc-for-consoleirb/
require 'rubygems'
require 'irb/completion'
require 'map_by_method' # gem install map_by_method
require 'what_methods'# gem install what_methods
require 'pp'

class Object
  # Return a list of methods defined locally for a particular object.  Useful
  # for seeing what it does whilst losing all the guff that's implemented
  # by its parents (eg Object).
  def local_methods(obj = self)
    (obj.methods - obj.class.superclass.instance_methods).sort
  end
end

# Simple prompt. From: http://linux.die.net/man/1/irb
IRB.conf[:AUTO_INDENT] = true
IRB.conf[:PROMPT][:SIMPLE] = {
  :PROMPT_I => ">> ",
  :PROMPT_S => "%l> ",
  :PROMPT_C => "%i> ",
  :RETURN => "%s\n"
}
IRB.conf[:PROMPT_MODE] = :SIMPLE

# Enable history. From: http://blog.nicksieger.com/articles/2006/04/23/tweaking-irb
require 'irb/ext/save-history'
IRB.conf[:USE_READLINE] = true
IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"
