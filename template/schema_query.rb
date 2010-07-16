require 'rubygems'
require 'ruby_debug'
require "sequel"
require 'erubis'
require "active_support"
require "yaml"

BASEPATH = File.dirname(__FILE__)

DB = Sequel.sqlite("#{BASEPATH}/../test/example.msf")

class_template = Erubis::Eruby.new(File.read("#{BASEPATH}/class.erb"))
base_class_template = Erubis::Eruby.new(File.read("#{BASEPATH}/base_class.erb"))
bctx = {:models => []}

ActiveSupport::Inflector.inflections do |inflect|
  inflect.irregular 'spectrum', 'spectra'
  inflect.singular /^(ox)en/i, '\1'
  inflect.uncountable %w( fasta mass )
end

models = File.open("#{BASEPATH}/../lib/thermo_msf/model.rb","w")
models.puts "module ThermoMSF\n  module Model\n"
DB.tables.map{|e| e.to_s}.sort.each do |tn|
  puts "#{tn} => #{tn.underscore}"
  cn = tn.underscore.split("_").map do |x|
    puts "#{x} => #{x.singularize}"
    x.singularize
  end.join("_").camelize
  # add class name to base class models context
  bctx[:models] << cn
  # output the autoload to the ThermlMSF::Models module file
  models.puts "    autoload :#{cn}, 'thermo_msf/model/#{cn.underscore}'"
  # build the class context
  ctx = { :tn => tn,
          :cn => cn,
          :pk => [],
          :tcls =>[]}
  DB.schema(tn).each do |cl|
    tmpcl = cl[0]
    ctx[:tcls] << tmpcl
    if cl[1][:primary_key]
      ctx[:pk] << tmpcl
    end
  end
  # output the model class file
  o = File.open("#{BASEPATH}/../lib/thermo_msf/model/#{cn.underscore}.rb","w")
  o.puts(class_template.evaluate(ctx))
  o.close
end
# close the ThermoMSF::Model module file
models.puts "  end\nend\n"
models.close
# output the base class file
o = File.open("#{BASEPATH}/../lib/thermo_msf/base.rb","w")
o.puts(base_class_template.evaluate(bctx))
o.close