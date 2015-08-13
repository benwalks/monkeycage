class ChangeScopeJobToInt < ActiveRecord::Migration
  def change
    connection.execute(%q{
      ALTER TABLE jobs ALTER COLUMN scope_job SET DEFAULT null;
      ALTER TABLE jobs ALTER COLUMN scope_job TYPE INTEGER USING CASE scope_job WHEN TRUE THEN 2 ELSE 1 END;
      ALTER TABLE jobs ALTER COLUMN scope_job SET DEFAULT 0;})
  end
end
