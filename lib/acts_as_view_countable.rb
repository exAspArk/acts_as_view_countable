require "acts_as_view_countable/version"

module ActsAsViewCountable
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def acts_as_view_countable(options)
      @@acts_as_view_countable_options = options
    end

    private

    def acts_as_view_countable_column
      @@acts_as_view_countable_options[:column_name]
    end
  end

  def inc_view_count(n)
    update_column(self.acts_as_view_countable_column, view_count + n)
  end

  def view_count
    send(self.acts_as_view_countable_column)
  end
end

ActiveRecord::Base.send(:include, ActsAsViewCountable)
