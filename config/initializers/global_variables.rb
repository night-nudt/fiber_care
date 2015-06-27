numbers = %w(一 二 三 四 五 六 七 八 九)
tree = []
rand(9).times do |index_ju|
  ju_hash = {node: "#{numbers[index_ju]}局", branches: []}
  rand(9).times do |index_chu|
    chu_hash = {node: "#{numbers[index_chu]}处", branches: []}
    rand(9).times do |index_ke|
      ke_hash = {node: "#{numbers[index_ke]}科", branches: []}
      rand(9).times do |index_yuan|
        yuan_hash = {node: "预案#{numbers[index_yuan]}", serial_number: "0#{index_ju + 1}J0#{index_chu + 1}C0#{index_ke + 1}K0#{rand(9) + 1}0#{rand(9) + 1}0#{rand(9) + 1}0#{rand(9) + 1}0#{rand(9) + 1}"}
        ke_hash[:branches] << yuan_hash
      end
      chu_hash[:branches] << ke_hash
    end
    ju_hash[:branches] << chu_hash
  end
  tree << ju_hash
end

TREE = tree