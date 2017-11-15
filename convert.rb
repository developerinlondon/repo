#!/usr/bin/ruby
require 'active_support/core_ext/hash/conversions'
require 'yaml'
require 'optparse'

class YamlToXml
  def self.yaml_to_xml file_to_read
    doc = String.new
    File.open( file_to_read ) { |yf| doc << YAML.parse( yf ).transform.to_xml }
    return doc
  end

  def self.xml_to_yaml file_to_read
    doc = Hash.new 
    File.open( file_to_read ) { |xf| doc = Hash.from_xml( xf ) } 
    return doc.to_yaml
  end
end

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: convert.rb [options]"

  opts.on('-f', '--filename FILENAME', 'Filename') { |v| options[:filename] = v }
  opts.on('-m', '--mode MODE', 'Mode (x2y or y2x)') { |v| options[:mode] = v }

end.parse!
if options[:mode] == 'x2y'
  print YamlToXml.xml_to_yaml(options[:filename])
elsif options[:mode] == 'y2x'
  print YamlToXml.yaml_to_xml(options[:filename])
else
  print "Usage:\nconvert.rb -f <ilename> -m <x2y|y2x>\n"
end
