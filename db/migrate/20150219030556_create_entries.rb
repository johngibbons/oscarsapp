class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.decimal :score
      t.string :name
      t.integer :best_picture
      t.integer :actor
      t.integer :actress
      t.integer :supporting_actor
      t.integer :supporting_actress
      t.integer :animated_feature
      t.integer :cinematography
      t.integer :costume
      t.integer :directing
      t.integer :documentary_feature
      t.integer :documentary_short
      t.integer :film_editing
      t.integer :foreign_feature
      t.integer :makeup
      t.integer :music_score
      t.integer :music_song
      t.integer :production_design
      t.integer :animated_short
      t.integer :live_action_short
      t.integer :sound_editing
      t.integer :sound_mixing
      t.integer :visual_effects
      t.integer :adapted_screenplay
      t.integer :original_screenplay
      t.boolean :master, default: false, null: false

      t.timestamps null: false
    end
  end
end
