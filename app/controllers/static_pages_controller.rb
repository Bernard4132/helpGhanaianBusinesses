class StaticPagesController < ApplicationController

def home
@dream = Dream.new	
end

def helpbusinessesgrow
@dream = Dream.new
end

end