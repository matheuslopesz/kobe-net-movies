# frozen_string_literal: true

Dir[File.join(Rails.root, 'lib', 'adapters', '*')].each do |dir|
  load dir.to_s
end
