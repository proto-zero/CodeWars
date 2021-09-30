using System;

public static class Kata
{
    public static int CheckExam(string[] arr1, string[] arr2)
    {
      // Variables
      int score = 0;

      // Loop
      for (int i = 0; i < arr1.Length; i++)   // For each position in arr1...
        {
          if (arr1[i] == arr2[i])             // if that position is equal to its position in arr2...
            {
              score += 4;                     // increase score by 4
            }
          else                                // If that position is not equal to its position in arr2...
            {
              if (arr2[i] == "")              // if that position in arr2 equals an empty string...
                {
                  score = score;              // score remains the same
                }
              else                            // If that position in arr2 is not empty and not equal to arr1...
                {
                  score--;                    // score decreases by 1
                }
            }
        }
      if (score < 0)                          // If score is negative...
        {
          score = 0;                          // score equals 0
        }

      // Result
      return score;
    }
}
