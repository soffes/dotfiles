require 'rubygems'
require 'irb/completion'
require 'json'

class Object
  # Return a list of methods defined locally for a particular object. Useful
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

# Enable history
IRB.conf[:USE_READLINE] = true
IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"
