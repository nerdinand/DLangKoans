module about_basics;

import helpers;
import dunit;

class AboutBasics
{
  mixin UnitTest;

  struct k {
    int x;
    float f;
    string s;
  }

  @Test
  void about_basics() {
    assertEquals(true, true, "what is truth ?");
    assertEquals(5 % 2, 1);
    assertEquals(5 * 2, 10);
    assertEquals(5 ^ 2, 7);

    //zero values
    int x;
    assertEquals(x, 0);

    //for all types
    float f;
    // WTF: both don't work?!
    // assertEquals(f, float.nan);
    // assertEquals(f, float.init);

    k c;  //also composite

    assertEquals(c.x, 0);
    // WTF: same here?!
    //assertEquals(c.f, float.nan);
    assertEquals(c.s, "");
  }

}
