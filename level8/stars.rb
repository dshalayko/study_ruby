class CelestialBody
  attr_accessor :type, :name
end

bodies = Hash.new do |hash, key| #получает ссылку на хэш и текущий ключ
  body = CelestialBody.new #создает новй объект щля текущего ключа
  body.type = 'planet'
  hash[key] = body #ВЫПОЛНЯЕТ ПРИСВАИВАНИЕ В ХЕШЕ и внозвращает новое значение
end


bodies['mars'].name = "mars"
bodies['europa'].name = "europa"
bodies['europa'].type = "moon"
bodies["venus"].name = 'venus'

p bodies['mars']
p bodies["europa"]
p bodies["venus"]
