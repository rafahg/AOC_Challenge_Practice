


public with sharing class AOC_2015_1 {


   // ( will add 1 , ) will substract 1. At the end we want a number with the result

    private static final List<String> example = new List<String>{'(','(',')',')'};
    private static Integer startingFloor = 0;

    public void main() {
        
        System.debug('---- Execution ------ ');

        Integer result = operation();
        System.debug('My result => ' + result);

        System.debug('---- END Execution ---'); 
    }


    private Integer operation(){
        Integer floor = startingFloor;
        // We start at 0 level.
        // If ( we increment 1 level (+1)
        // IF ) we go down 1 level. (-1)
        for(String bracket : example) {
        if(bracket == '(') {
            floor +=1;
        }else {
            floor -=1;
        }

        }
        return floor;
    }
}