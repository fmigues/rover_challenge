# rover_challenge

This is a ruby challenge for a rover exploring a planet.

The rover:
A rover's position is at direction (N => north, S => south, W => west and E => east) [x, y].
When the rover moves N or S, the position will change as [x + 1, y] or [x - 1, y].
When the rover moves E or W, the position will change as [x, y + 1] or [x, y - 1].

The planet:
Planets are sphere and I considered for this test that ther max size is [max_x, max_y] and the min size is [0, 0].
So if the rover is at N [0, 0] and it moves backward, the position will be N [max_x, 0].
You can also set obstacles in the planet and rovers are ready to detect them and stop moving.

You can test it by running rspec spec/rover_spec.rb - need to install gem rspec
You can play by running ruby all/app.rb


