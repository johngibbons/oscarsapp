# This will guess the User class
FactoryGirl.define do
  factory :entry do
    name "Sample Name"
    master  false
    best_picture 1
    actor 1
    actress 1
    supporting_actress 1
    supporting_actor 1
    animated_feature 1
    animated_short 1
    cinematography 1
    costume 1
    directing 1
    documentary_feature 1
    documentary_short 1
    film_editing 1
    foreign_feature 1
    makeup 1
    music_score 1
    music_song 1
    production_design 1
    animated_short 1
    live_action_short 1
    sound_editing 1
    sound_mixing 1
    visual_effects 1
    adapted_screenplay 1
    original_screenplay 1

    factory :master, class: Entry do
      master true
    end
  end
end