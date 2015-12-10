# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

class Seed
  def self.start
    seed = Seed.new
    seed.generate_strands
    seed.generate_standards

  end

  def generate_strands
    Strand.create(id: 1, name: 'nouns')
    Strand.create(id: 2, name: 'verbs')
  end

  def generate_standards
    Standard.create(id: 1, name: 'common_nouns', strand_id: 1 )
    Standard.create(id: 2, name: 'abstract_nouns', strand_id: 1 )
    Standard.create(id: 3, name: 'proper_nouns', strand_id: 1 )
    Standard.create(id: 4, name: 'action_verbs', strand_id: 2 )
    Standard.create(id: 5, name: 'transitive_verbs', strand_id: 2 )
    Standard.create(id: 6, name: 'reflexive_verbs', strand_id: 2 )
  end

  def generate_questions
    Question.create(difficulty: 0.7, strand_id: 1)
    Question.create(difficulty: 0.6, strand_id: 1)
    Question.create(difficulty: 0.8, strand_id: 1)
    Question.create(difficulty: 0.2, strand_id: 1)
    Question.create(difficulty: 0.5, strand_id: 1)
    Question.create(difficulty: 0.4, strand_id: 1)
    Question.create(difficulty: 0.9, strand_id: 2)
    Question.create(difficulty: 0.1, strand_id: 2)
    Question.create(difficulty: 0.3, strand_id: 2)
    Question.create(difficulty: 0.6, strand_id: 2)
    Question.create(difficulty: 0.4, strand_id: 2)
    Question.create(difficulty: 0.2, strand_id: 2)
  end

end


Seed.start