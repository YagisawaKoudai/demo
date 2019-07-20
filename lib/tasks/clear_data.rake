namespace :clear_data do
  desc 'データの消去'
  task clear_all_subjects: :environment do
    subjects = Subject.all
    subjects.each do |subject|
      if subject.books.blank?
        subject.destroy
        puts "---- #{subject.name} has been destroyed ----"
      else
        puts "---- #{subject.name} has some books ----"
      end
    end
  end
end
