public with sharing class AOC_2015_1 extends AOC_BaseUtils {
  private static Integer startingFloor = 0;

  public void main() {
    this.proccessInputLines('AOC2015_Day1');

    System.debug('---- Execution ------ ');

    Results result = operation_Part1();
    System.debug('My result PART 1 => ' + result.floor);
    System.debug('My result PART 2 => ' + result.position);

    // Integer result2 = operation_Part2();
    // System.debug('My result PART 2 => ' + result2);

    System.debug('---- END Execution ---');
  }

  private Results operation_Part1() {
    Results result = new Results();
    Integer floor = startingFloor;
    Integer position = 1;
    for (String bracket : this.inputLines[0].split('')) {
      if (bracket == '(') {
        floor += 1;
      } else {
        floor -= 1;
      }
      if (floor == -1) {
        break;
      }
      position++;
    }
    result.floor = floor;
    result.position = position;
    return result;
  }

  public class Results {
    public Integer floor;
    public Integer position;
  }

  //
  private Integer operation_Part2() {
    Integer floor = startingFloor;
    Integer position = 1;
    for (String bracket : this.inputLines[0].split('')) {
      if (bracket == '(') {
        floor += 1;
      } else {
        floor -= 1;
      }
      if (floor == -1) {
        break;
      }
      position++;
    }
    return position;
  }
}
