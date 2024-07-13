public virtual class AOC_BaseUtils {
  protected List<String> inputLines;

  protected void proccessInputLines(String srday) {
    List<StaticResource> srList = [
      SELECT Id, Body
      FROM StaticResource
      WHERE Name = :srday
    ];

    String input = (!srList.isEmpty()) ? srList[0].Body?.toString() : null;

    this.inputLines = input.split('\\n');
  }
}
