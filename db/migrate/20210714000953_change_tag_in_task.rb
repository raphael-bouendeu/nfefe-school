class ChangeTagInTask < ActiveRecord::Migration[6.1]
  def change
  change_column :tasks, :tag, :integer, using: 'tag::integer'
  end
end
