class Bottles
    def song
        return verses(99, 0)
    end
    def verses(startLine, endLine)
        result = ""
        for i in (startLine).downto(endLine)
            result += verse(i)
            result += "\n"
        end
        return result.chomp
    end

    def verse(lineNumber)
        bottlesOnTheWall = lineNumber;
        bottlesRemainOnTheWall = lineNumber - 1;
        if bottlesRemainOnTheWall == -1
            bottlesRemainOnTheWall = 99
        end

        return printBottle(bottlesOnTheWall) + " of beer on the wall, " +
               printBottle(bottlesOnTheWall).downcase + " of beer.\n" +
               printOperation(bottlesOnTheWall) +
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

    def printOperation(count)
        if 1 < count
            return "Take one down and pass it around, "
        elsif count == 1
            return "Take it down and pass it around, "
        else
            return "Go to the store and buy some more, "
        end
    end
end