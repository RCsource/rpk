path1 = 'c:/Raccoon/libs/'
url1 = '0'
ufc = 'https://github.com/RCsource/raccoon_pkexamples'
uufc = 'https://github.com/RCsource/rpk'

while true
    data = gets.chomp
    if data == "rpk install"
      print "Enter username and name repository.\nexample: username/reponame\nenter: "
      url1 = gets.chomp
      print "Enter libary name.\nexample: libaryname\nenter: "
      lname = gets.chomp
      puts "Search repo.."
      url = "https://github.com/" + url1
      puts "Start rpk install libary!"
      #git = Git.clone(url,path)
      system('MD ' + path1 + lname)
      path = path1 + lname
      system('git clone ' + url + " " + path)
      puts "Libary install sucesfully!\n\n"
    elsif data == "exit"
      break
    elsif data == "rpk"
      puts "Rpk - Raccoon package (help tool)\n\nusage:\nrpk - about command\n\nexamples:\nrpk install - install libary\nrpk uninstall - uninstall libary\nrpk build - build a new libary\nexit - exit from rpk\n\n"
    elsif data == "rpk uninstall"
      print "Enter name of libary for deleted\nenter:"
      lname = gets.chomp
      system("RD /s/q #{path1}#{lname} ")
      puts "Libary deleted is sucesfully!\n\n"
    elsif data == "rpk build"
      print "Enter name of new libary: "
      lname = gets.chomp
      puts "Start rpk install libary!"
      system('MD ' + path1 + lname)
      path = path1 + lname
      system('git clone ' + ufc + " " + path)
      puts "Libary build is sucesfully!"
    elsif data == 'rpk update'
      puts "Installing the latest version..."
      puts "Search repository.."
      system ('MD rpk_lastver')
      puts "Create new direcory.."
      system ('git clone ' + uufc + ' ' + 'rpk_lastver')
      puts "Update.."
      puts "Update a succesfully!\nUnpack the rpk_lastver folder and delete the main.rb file from the root folder of the project, then transfer all the contents from rpk_lastver to the root folder of the project. Enjoy the new version!"
    end
  end
