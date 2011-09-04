#!/usr/bin/ruby

#require 'ruby-debug'
#debugger
require './hoplang.rb'


class ArrayReader
  def initialize(str)
    @array=str.split "\n"
    @cur=0
  end

  def get
    @cur+=1
    @array[@cur-1]
  end

  def put val
    pp val
  end
end


ex=TopHopstance.new
a= ArrayReader.new ""#("scalar abc\n#  test\nabc=1\n yield abc 1 +\n")
ex.connectInput a
ex.connectOutput a
text=["scalar abc\n","#  test\n","abc=1\n"," yield abc 1 + , 10\n",
      " out = each x in ttt","yield x.end x.start - , x.user","end"]
ex.createNewRetLineNum(text,0)
ex.hop

