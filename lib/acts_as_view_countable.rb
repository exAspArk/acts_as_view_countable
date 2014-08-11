require "acts_as_view_countable/version"

module ActsAsViewCountable
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def acts_as_view_countable(options)
      @@acts_as_view_countable_options = options
    end

    def acts_as_view_countable_column
      @@acts_as_view_countable_options[:column_name]
    end
  end

  def inc_view_count(n)
    public_send("#{ self.class.acts_as_view_countable_column }=", public_send(self.class.acts_as_view_countable_column) + n)
  end

  def inc_view_count!(n)
    update_column(self.class.acts_as_view_countable_column, public_send(self.class.acts_as_view_countable_column) + n)
  end
end

ActiveRecord::Base.send(:include, ActsAsViewCountable)
