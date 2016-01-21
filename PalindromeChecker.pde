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
  String reverse = new String();
  for(int i = 0; i < word.length(); i++)
  {
    if(!word.substring(i, i + 1).equals(" ") && !word.substring(i, i + 1).equals("!") && !word.substring(i, i + 1).equals("'") && !word.substring(i, i + 1).equals(","))
    {
      newStr = newStr + word.substring(i, i+1);
    }

  }
  for(int i = newStr.length()-1; i >=0; i--)
  {
    reverse = reverse + newStr.substring(i, i +1);
  }
  if(newStr.equalsIgnoreCase(reverse))
  {
    return true;
  }
  return false;
}

