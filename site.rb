#!/usr/bin/ruby

# A simple app to display my senior project code.
# @author Nathaniel "Nat" Welch

require 'rubygems'
require 'sinatra'
require 'less'
require 'rdiscount'
require 'RMagick'

get '/' do
   md = RDiscount.new(File.read("list.md"), :smart).to_html
   erb :index, :locals => { :readme => md }
end

