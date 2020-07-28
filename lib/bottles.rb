class Bottles
    def verse(lineNumber)
        bottlesOnTheWall = lineNumber;
        bottlesRemainOnTheWall = lineNumber - 1; 
        return printBottle(bottlesOnTheWall) + " of beer on the wall, " +
               printBottle(bottlesOnTheWall) + " of beer.\n" +
               "Take " + (bottlesOnTheWall != 1 ? "one" : "it") + " down and pass it around, " +
               printBottle(bottlesRemainOnTheWall).downcase + " of beer on the wall.\n";
    end

    def printBottle(count)
        if 1 < count
            return count.to_s + " bottles"
        elsif count == 1
            return "1 bottle"
        else
            return "No more bottles"
        end
    end
end