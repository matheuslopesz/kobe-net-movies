# frozen_string_literal: true

namespace :setup do
  desc 'Add a default User'
  task add_user: :environment do
    show_spinner('Adding  User...') do
      User.create(email: 'matheus@kobe.email.com',
                  password: '123123',
                  password_confirmation: '123123')
    end
  end

  private

  def show_spinner(msg_start, msg_end = 'Finished !')
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")
  end
end