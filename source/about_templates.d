module about_templates;

import helpers;
import dunit;

class AboutTemplates {
  mixin UnitTest;

  T twice(T)(T value){  //shortcut syntax
      return 2 * value;
  }

  T twice(T : string)(T value){ // specialization
    return value ~ value;
  }

  @Test
  public void functionTemplates()
  {
    auto val1 = twice!int(2);  // instantiation
    assertEquals(val1, 4);
    auto val2 = twice("hello");
    assertEquals(val2, "hellohello");
  }
}
