class MenuType < ActiveHash::Base
  self.data = [
    { id: 0, type: '---' },
    { id: 1, type: '主菜（肉）' },
    { id: 2, type: '主菜（魚）' },
    { id: 3, type: '副菜' }
  ]
end
