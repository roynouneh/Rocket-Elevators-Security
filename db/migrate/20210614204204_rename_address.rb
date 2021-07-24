class RenameAddress < ActiveRecord::Migration[5.2]
  def rename_table(adress, address)
    raise NotImplementedError, "rename_table is not implemented"
  end
end
