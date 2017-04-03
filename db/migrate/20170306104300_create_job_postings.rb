class CreateJobPostings < ActiveRecord::Migration[5.0]
  def change
    create_table :job_postings do |t|
      t.string :code
      t.string :position
      t.string :description
      t.text :requirement
      t.date :post_date
      t.date :expired_date

      t.timestamps
    end
  end
end
