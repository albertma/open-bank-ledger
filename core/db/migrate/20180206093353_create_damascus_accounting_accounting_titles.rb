class CreateDamascusAccountingAccountingTitles < ActiveRecord::Migration[5.0]
  def change
    create_table :damascus_accounting_accounting_titles do |t|
      t.string :accounting_code, :comment => '科目编码'
      t.string :accounting_name, :comment => '科目名称'
      t.string :accounting_level, :comment => '科目类别'
      t.string :parent_title_code, :comment => '父科目编码'
      t.integer :status, :comment => '科目状态 1 普通  2 作废'
      t.integer :accounting_title_type, :comment => '科目类别 1 资产类 2 负债类 3 共同类'
      t.string :create_user, :comment => '插入用户'
      t.string :update_user, :comment => '更新用户'
      t.integer :balance_direction,:comment => '余额方向 1.借方 2.贷方  3. 共同类统一为借方'
      t.boolean :negativeable, :comment => '是否可以为负值'
      t.string :currency_type, :comment => '货币种类：RMB、USD '
      t.string :memo, :comment => '其他说明'
      t.string :scope_type, :comment => '范围类别 1：外部科目  2：内部科目'
      t.boolean :has_account, :comment => '是否是开户科目 1 是  0 否'
      t.string :organization_type, :comment => '相关机构类型，1 银行  0 无'

      t.timestamps
    end
  end
end
