class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.text :body
      t.string :submitter

      t.timestamps
    end
  end
end
