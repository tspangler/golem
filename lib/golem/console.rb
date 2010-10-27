module Golem
  module Console

    attr_reader :client

    def initialize(client)
      @client = client
    end

    # def post_init
    #   puts "console ready"
    # end

    # def unbind
    #   puts "console stopping"
    # end

    def receive_data(data)
      command, args = data.strip.split(/\s+/, 2)
      args = (args || "").split("/\s+/")

      case command

      when "q", "quit", "exit"
        EM.stop
        return

      when "d", "debug"
        if args.first == "off"
          client.debug_pattern = nil
        elsif args.first == "all"
          client.debug_pattern = "."
        else
          client.debug_pattern = args.first
        end

      when "c", "command"
        puts "current command: #{client.current_action.class}"

      when "stop"
        client.stop

      when "p", "pos", "position"
        if pos = client.position
          location = [pos.x, pos.y, pos.z].map(&:to_i)
          puts "position: #{location.inspect} #{pos.inspect}"
        else
          puts "no position yet?"
        end

      when "watch"
        if player = args.first
          client.watch(player)
        else
          puts "specify a player to watch"
        end

      # when "m", "move"
      #   x, y, z = args.split(" ").map(&:to_i)

      #   unless x && y
      #     puts "usage: move <x> <y> <z> (integers)"
      #     return
      #   end

      #   # move to center of block
      #   if z
      #     client.move_to x + 0.5, y, z + 0.5
      #   else
      #     client.move_to x + 0.5, client.position.y, y + 0.5
      #   end

      # when "dig"
      #   x, y, z, direction = args.split(" ").map(&:to_i)
      #   unless x && y
      #     puts "usage: dig <x> <y> <z> (integers)"
      #     return
      #   end
      #   client.dig(x, y, z, direction)

      # when "b", "block"
      #   x, y, z = args.split(" ").map(&:to_i)
      #   unless x && y && z
      #     puts "usage: move <x> <y> <z> (integers)"
      #     return
      #   end

      #   puts "block at #{[x, y, z].inspect}: #{client.block_at(x, y, z).inspect}"

      # when "p", "path"
      #   x, y, z = args.split(" ").map(&:to_i)
      #   unless x && y && z
      #     puts "usage: move <x> <y> <z> (integers)"
      #     return
      #   end
      #   p = client.position

      #   puts "path from #{[p.x.floor, p.y, p.z.floor].map(&:to_i).inspect} to #{[x, y, z].inspect}:"
      #   if path = client.path_to(x, y, z)
      #     puts "path:"
      #     path.each {|p| puts "  #{p.inspect}" }
      #   else
      #     puts "no path found"
      #   end

      # when "f", "follow"
      #   if args == "" || args == "on"
      #     puts "following master"
      #     client.follow true
      #   else
      #     puts "staying here, then."
      #     client.follow false
      #   end

      # when "a", "adjacent"
      #   p = client.position

      #   puts "position: #{[p.x.floor, p.y, p.z.floor].inspect}"
      #   puts "adjacent locations:"
      #   client.adjacent.each {|a| puts "  - #{a.inspect}" }

      # when "e", "equip"
      #   if !args || args.strip.empty?
      #     puts "usage: equip <item code>"
      #     return
      #   end
      #   client.equip args.strip

      # when "x", "place"
      #   x, y, z, code = args.split(" ").map(&:to_i)

      #   unless x && y && z && code
      #     puts "usage: place <x> <y> <z> <code>"
      #     return
      #   end

      #   client.place(x, y, z, code)

      # when "y", "say"
      #   if !args.strip.empty?
      #     client.say(args.strip)
      #   end

      else
        puts "unrecognized"
      end
    end
  end
end
