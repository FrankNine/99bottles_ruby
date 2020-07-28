class Bottles
    def verse(lineNumber)
        bottlesOnTheWall = lineNumber;
        bottlesRemainOnTheWall = lineNumber - 1; 
        return bottlesOnTheWall.to_s + " bottles of beer on the wall, " +
               bottlesOnTheWall.to_s + " bottles of beer.\n" +
               "Take one down and pass it around, " +
               bottlesRemainOnTheWall.to_s + (bottlesRemainOnTheWall == 1 ? " bottle" : " bottles") + " of beer on the wall.\n";
    end
end