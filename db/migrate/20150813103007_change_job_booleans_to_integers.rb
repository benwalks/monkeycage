class ChangeJobBooleansToIntegers < ActiveRecord::Migration
  def change
    connection.execute(%q{
      ALTER TABLE jobs ALTER COLUMN survey_job SET DEFAULT null;
      ALTER TABLE jobs ALTER COLUMN survey_job TYPE INTEGER USING CASE survey_job WHEN TRUE THEN 2 ELSE 0 END;
      ALTER TABLE jobs ALTER COLUMN survey_job SET DEFAULT 0;})
    connection.execute(%q{
      ALTER TABLE jobs ALTER COLUMN risk_assess SET DEFAULT null;
      ALTER TABLE jobs ALTER COLUMN risk_assess TYPE INTEGER USING CASE risk_assess WHEN TRUE THEN 2 ELSE 0 END;
      ALTER TABLE jobs ALTER COLUMN risk_assess SET DEFAULT 0;})
    connection.execute(%q{
      ALTER TABLE jobs ALTER COLUMN init_smes SET DEFAULT null;
      ALTER TABLE jobs ALTER COLUMN init_smes TYPE INTEGER USING CASE init_smes WHEN TRUE THEN 2 ELSE 0 END;
      ALTER TABLE jobs ALTER COLUMN init_smes SET DEFAULT 0;})
    connection.execute(%q{
      ALTER TABLE jobs ALTER COLUMN lv_drop_catan SET DEFAULT null;
      ALTER TABLE jobs ALTER COLUMN lv_drop_catan TYPE INTEGER USING CASE lv_drop_catan WHEN TRUE THEN 2 ELSE 0 END;
      ALTER TABLE jobs ALTER COLUMN lv_drop_catan SET DEFAULT 0;})
    connection.execute(%q{
      ALTER TABLE jobs ALTER COLUMN design_calcs SET DEFAULT null;
      ALTER TABLE jobs ALTER COLUMN design_calcs TYPE INTEGER USING CASE design_calcs WHEN TRUE THEN 2 ELSE 0 END;
      ALTER TABLE jobs ALTER COLUMN design_calcs SET DEFAULT 0;})
    connection.execute(%q{
      ALTER TABLE jobs ALTER COLUMN prelim_dwg SET DEFAULT null;
      ALTER TABLE jobs ALTER COLUMN prelim_dwg TYPE INTEGER USING CASE prelim_dwg WHEN TRUE THEN 2 ELSE 0 END;
      ALTER TABLE jobs ALTER COLUMN prelim_dwg SET DEFAULT 0;})
    connection.execute(%q{
      ALTER TABLE jobs ALTER COLUMN check_internals SET DEFAULT null;
      ALTER TABLE jobs ALTER COLUMN check_internals TYPE INTEGER USING CASE check_internals WHEN TRUE THEN 2 ELSE 0 END;
      ALTER TABLE jobs ALTER COLUMN check_internals SET DEFAULT 0;})
    connection.execute(%q{
      ALTER TABLE jobs ALTER COLUMN peer_check SET DEFAULT null;
      ALTER TABLE jobs ALTER COLUMN peer_check TYPE INTEGER USING CASE peer_check WHEN TRUE THEN 2 ELSE 0 END;
      ALTER TABLE jobs ALTER COLUMN peer_check SET DEFAULT 0;})
    connection.execute(%q{
      ALTER TABLE jobs ALTER COLUMN outage_manage SET DEFAULT null;
      ALTER TABLE jobs ALTER COLUMN outage_manage TYPE INTEGER USING CASE outage_manage WHEN TRUE THEN 2 ELSE 0 END;
      ALTER TABLE jobs ALTER COLUMN outage_manage SET DEFAULT 0;})
    connection.execute(%q{
      ALTER TABLE jobs ALTER COLUMN obtain_quotes SET DEFAULT null;
      ALTER TABLE jobs ALTER COLUMN obtain_quotes TYPE INTEGER USING CASE obtain_quotes WHEN TRUE THEN 2 ELSE 0 END;
      ALTER TABLE jobs ALTER COLUMN obtain_quotes SET DEFAULT 0;})
    connection.execute(%q{
      ALTER TABLE jobs ALTER COLUMN estimate SET DEFAULT null;
      ALTER TABLE jobs ALTER COLUMN estimate TYPE INTEGER USING CASE estimate WHEN TRUE THEN 2 ELSE 0 END;
      ALTER TABLE jobs ALTER COLUMN estimate SET DEFAULT 0;})
    connection.execute(%q{
      ALTER TABLE jobs ALTER COLUMN approved_dwg SET DEFAULT null;
      ALTER TABLE jobs ALTER COLUMN approved_dwg TYPE INTEGER USING CASE approved_dwg WHEN TRUE THEN 2 ELSE 0 END;
      ALTER TABLE jobs ALTER COLUMN approved_dwg SET DEFAULT 0;})
    connection.execute(%q{
      ALTER TABLE jobs ALTER COLUMN admin_emails SET DEFAULT null;
      ALTER TABLE jobs ALTER COLUMN admin_emails TYPE INTEGER USING CASE admin_emails WHEN TRUE THEN 2 ELSE 0 END;
      ALTER TABLE jobs ALTER COLUMN admin_emails SET DEFAULT 0;})
    connection.execute(%q{
      ALTER TABLE jobs ALTER COLUMN revalidation SET DEFAULT null;
      ALTER TABLE jobs ALTER COLUMN revalidation TYPE INTEGER USING CASE revalidation WHEN TRUE THEN 2 ELSE 0 END;
      ALTER TABLE jobs ALTER COLUMN revalidation SET DEFAULT 0;})
    connection.execute(%q{
      ALTER TABLE jobs ALTER COLUMN admin_received SET DEFAULT null;
      ALTER TABLE jobs ALTER COLUMN admin_received TYPE INTEGER USING CASE admin_received WHEN TRUE THEN 2 ELSE 0 END;
      ALTER TABLE jobs ALTER COLUMN admin_received SET DEFAULT 0;})
    connection.execute(%q{
      ALTER TABLE jobs ALTER COLUMN peg_job SET DEFAULT null;
      ALTER TABLE jobs ALTER COLUMN peg_job TYPE INTEGER USING CASE peg_job WHEN TRUE THEN 2 ELSE 0 END;
      ALTER TABLE jobs ALTER COLUMN peg_job SET DEFAULT 0;})
    connection.execute(%q{
      ALTER TABLE jobs ALTER COLUMN design_maint SET DEFAULT null;
      ALTER TABLE jobs ALTER COLUMN design_maint TYPE INTEGER USING CASE design_maint WHEN TRUE THEN 2 ELSE 0 END;
      ALTER TABLE jobs ALTER COLUMN design_maint SET DEFAULT 0;})
    connection.execute(%q{
      ALTER TABLE jobs ALTER COLUMN completed SET DEFAULT null;
      ALTER TABLE jobs ALTER COLUMN completed TYPE INTEGER USING CASE completed WHEN TRUE THEN 2 ELSE 0 END;
      ALTER TABLE jobs ALTER COLUMN completed SET DEFAULT 0;})
  end
end
