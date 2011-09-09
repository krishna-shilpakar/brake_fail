class CreateNotifyErrorTable < Sequel::Migration
  def up
    create_table :hoptoad_errors do
      primary_key :id
      Integer :error_id
      Integer :project_id
      String  :error_class
      String  :error_msg
      String  :controller_action
      Boolean :resolved
      String  :file
      String  :rails_env
      Integer :line_number
      Time    :created_at
    end
  end

  def down
    drop_table(:hoptoad_errors)
  end

end

# to run migration sequel -m . -M 1 sqlite://hoptoads.db


# +----+----------+--------+-------------+-----------+-------------------+
# | id | error_id | app_id | error_class | error_msg | controller_action |
# +----+----------+--------+-------------+-----------+-------------------+
# |    |          |        |             |           |                   |
# +----+----------+--------+-------------+-----------+-------------------+
