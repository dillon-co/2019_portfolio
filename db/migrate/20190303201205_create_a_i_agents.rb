class CreateAIAgents < ActiveRecord::Migration[5.2]
  def change
    create_table :a_i_agents do |t|

      t.timestamps
    end
  end
end
