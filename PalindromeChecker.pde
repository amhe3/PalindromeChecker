public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String newStr = new String();
  for(int i = 0; i < word.length(); i++)
  {
    if(word.substring(i, i + 1).equals(word.substring(word.length()-(i+1))))
    {
      return true;
    }
  }
  return false;
}

