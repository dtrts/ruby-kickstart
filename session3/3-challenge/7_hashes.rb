# frozen_string_literal: true

# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!

# This challenge is based off of Example 1 (session 3/2-examples/1_hashes)
# modify it such that it also accepts in the hash, a color (whose values are red("#FF0000"), green("#00FF00"), and blue(#0000FF) )
# if the color is set, then it should show up in the style
# It should also not be necessary to pass in the hash, if you don't want to specify options
#
#
# EXAMPLE:
#
# html = HTMLTag.new 'p', 'Hello World', :multiline => false, :color => :red
# html.to_s     # => <p style="color:#FF0000">Hello World</p>
#
# sports = [
#   HTMLTag.new('li', 'baseball', :multiline => false, :color => :red,   :font => :serif) ,
#   HTMLTag.new('li', 'soccer',   :multiline => false, :color => :green, :font => :sans_serif) ,
#   HTMLTag.new('li', 'football', :multiline => false, :color => :blue,  :font => :monospace) ,
# ]
#
# ordered_list = HTMLTag.new 'ol' , sports.join , :multiline => true
#
# puts ordered_list  # => (as output)
#                      <ol >
#                      <li style='color:#FF0000;font-family:"Times New Roman", "Georgia"'>baseball</li>
#                      <li style='color:#00FF00;font-family:"Arial", "Verdana"'>soccer</li>
#                      <li style='color:#0000FF;font-family:"Courier New", "Lucida Console"'>football</li>
#                      </ol>

class HTMLTag
  FONTS = {
    serif: '"Times New Roman", "Georgia"',
    sans_serif: '"Arial", "Verdana"',
    monospace: '"Courier New", "Lucida Console"'
  }.freeze

  COLORS = {
    red: '#FF0000',
    green: '#00FF00',
    blue: '#0000FF'
  }.freeze

  attr_accessor :name, :innerHTML, :font, :color, :multiline

  # options: :multiline should be true or false
  def initialize(name, innerHTML, options = {})
    @name = name
    @innerHTML = innerHTML
    @font = FONTS[options[:font]]
    @color = COLORS[options[:color]]
    @multiline = options.fetch(:multiline, false)
  end

  def style
    # puts "Style called"
    style_string = 'style="'
    style_string += "font-family:#{@font};" if @font
    style_string += "color:#{@color};" if @color
    style_string += '"'
    # puts "Style string is currently #{style_string}"
    if style_string == 'style=""'
      return nil
    else
      return style_string
    end
  end

  def to_s
    line_end = @multiline ? "\n" : ''
    "<#{@name} #{style}>#{line_end}"  \
    "#{innerHTML.chomp}#{line_end}"  \
    "</#{name}>\n"
  end
end
