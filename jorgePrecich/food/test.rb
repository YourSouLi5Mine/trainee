require 'active_support'
require 'pry'

path = File.expand_path File.dirname(__FILE__)

autoload :RegistryCSV, "#{path}/helpers/registry_csv"
autoload :ManualRegistry, "#{path}/helpers/manual_registry"

$fruits = []
$meats = []
