namespace :create_sample_data do
  desc 'サンプルデータの追加'
  task create_sample_subjects: :environment do
    ['Physics', 'Mathematics', 'Chemistry', 'Psychology', 'Geography', 'History'].each do |subject|
      if Subject.where(name: subject).blank?
        Subject.create(name: subject)
        puts "---- #{subject} is inserted ----"
      end
    end
  end
end
