class Bottles
    def verse(lineNumber)
        return lineNumber.to_s + " bottles of beer on the wall, " +
      lineNumber.to_s + " bottles of beer.\n" +
      "Take one down and pass it around, " +
      (lineNumber - 1).to_s + " bottles of beer on the wall.\n";
    end
end