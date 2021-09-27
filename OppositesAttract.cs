using System;

public class LoveDetector
{
    public static bool lovefunc(int flower1, int flower2)
    {
      if (flower1 % 2 == 0 && flower2 % 2 != 0)      // If flower1 is even and flower2 is odd...
        {
          return true;
        }
      else if (flower1 % 2 != 0 && flower2 % 2 == 0) // If flower1 is odd and flower2 is even...
        {
          return true;
        }
      else                                           // Otherwise...
        {
          return false;
        }
    }
}
