function love.load()
love.window.setTitle("orcs")
p = {225, 300, 5, "down"}
i = {
up = love.graphics.newImage('s/p4.png'),
down = love.graphics.newImage('s/p.png'),
left = love.graphics.newImage('s/p2.png'),
right = love.graphics.newImage('s/p3.png')
}
cam = {0, 0}
end

function love.update(dt)
cam[1] = p[1] - love.graphics.getWidth() / 2
cam[2] = p[2] - love.graphics.getHeight() / 2

if love.keyboard.isDown("w", "up") then
p[2] = p[2] - p[3]
p[4] = "up"
end

if love.keyboard.isDown("s", "down") then
p[2] = p[2] + p[3]
p[4] = "down"
end

if love.keyboard.isDown("a", "left") then
p[1] = p[1] - p[3]
p[4] = "left"
end

if love.keyboard.isDown("d", "right") then
p[1] = p[1] + p[3]
p[4] = "right"
end

if love.keyboard.isDown("lshift", "rshift") then
p[3] = 10
else
p[3] = 5
end
end

function love.draw()
love.graphics.push()
love.graphics.translate(-cam[1], -cam[2])

love.graphics.draw(i[p[4]], p[1], p[2], nill, 0.5)
love.graphics.rectangle("fill", 0, 0, 50, 50)

love.graphics.pop()
end