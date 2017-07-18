require_relative 'config/application'

input = ARGV
controller = TasksController.new(input)
controller.menu(input, input.drop(1).join(" "))
