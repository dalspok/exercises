require "pry"

FILENAME = "tm_database.txt"
database = eval(File.read(FILENAME))

ROW_LENGTH = 50
ROW_LENGTH_LIST_OF_PROJECTS = 30
COMMAND_LIST = {"l" => :list_projects, "d" => :delete, "e" => :edit, "n" => :next_project,
  "u" => :up, "-" => :new, ".." => :list_projects, "p" => :previous_project, "q" => :quit}

def display_database(dtb)
  system "clear"
  dtb.each_key {|project_name| display_project(dtb, project_name)}
end

def display_project_separately(dtb, project_name)
  system "clear"
  display_project(dtb, project_name)
end

def display_project(dtb, project_name)
  puts project_name
  dtb[project_name][:tasklist].each_with_index do |task, index|
    puts "- #{task}".ljust(ROW_LENGTH) + ":#{index+1}"
  end
end

def display_previous_project(dtb, project_list, project_name)
  new_index = project_list.index(project_name) - 1
  new_index = 0 if new_index < 0
  display_project_separately(dtb, project_list[new_index])
end

def display_next_project(dtb, project_list, project_name)
  new_index = project_list.index(project_name) + 1
  new_index = project_list.size-1 if new_index >= project_list.size
  display_project_separately(dtb, project_list[new_index])
end

def make_project_list(dtb)
  arr_of_projects = []
  dtb.each {|project_name, project| arr_of_projects[project[:index]] = project_name}
  arr_of_projects
end


def list_projects(project_list)
  system "clear"
  puts "P r o j e c t   L i s t"
  puts
  project_list.each_with_index do |task, index|
    puts "#{task}".ljust(ROW_LENGTH_LIST_OF_PROJECTS) + ":#{index+1}"
  end
end

def search_for_project(project_list, search_string)
  project_list.select {|project_name|
    is_string_included(project_name, search_string)}.first
end

def search_for_command(commands, search_string)
  before_space = search_string.downcase.split(" ").first
  before_colon = search_string.downcase.split(":").first
  commands [before_space] || commands[before_colon]
end

def is_command(commands, search_string)
  !!search_for_command(commands, search_string)
end

def is_string_included(searched_text, string)
  string_array = string.chars
  searched_text.each_char do |char|
    if char.downcase == string_array.first
      string_array.shift
    end
  end
  string_array.empty?
end

def create_task(dtb, project_name, task)
  task_name = task.split(" ").drop(1).join(" ").capitalize
  dtb[project_name][:tasklist] << task_name
end

def delete_task(dtb, project_name, input)
  task_number = input.split(":").at(1).to_i
  alternative_task_number = input.split(" ").at(1).to_i
  binding.pry
  higher_task_number = [task_number, alternative_task_number].max
  return false if higher_task_number == 0
  dtb[project_name][:tasklist].delete_at(higher_task_number-1)
end

def save_file(database, filename)
  File.open(filename, "w") {|file| file.puts database}
end

project_list = make_project_list(database)
list_projects(project_list)
current_project_name = nil

loop do
  input = gets.chomp
  command = search_for_command(COMMAND_LIST, input)

  if command && current_project_name
    command = search_for_command(COMMAND_LIST, input)
    case command
    when :new
      create_task(database, current_project_name, input)
      display_project_separately(database, current_project_name)
    when :delete
      delete_task(database, current_project_name, input)
      display_project_separately(database, current_project_name)
    when :list_projects
      list_projects(project_list)
      current_project_name = nil
    when :previous_project
      display_previous_project(database, project_list, current_project_name)
    when :next_project
      display_next_project(database, project_list, current_project_name)
    when :quit
      save_file(database, FILENAME)
      exit
    end

  elsif command && !current_project_name

  else
    found_project = search_for_project(project_list, input)
    if found_project
      display_project_separately(database, found_project)
      current_project_name = found_project
    end
  end

  save_file(database, FILENAME)
end

