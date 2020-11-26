class Color < ActiveHash::Base
  self.data = [
    { id: 0, color: '---' },
    { id: 1, color: '茶色' },
    { id: 2, color: '白色' },
    { id: 3, color: '緑色' }
  ]
end