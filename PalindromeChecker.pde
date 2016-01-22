public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String newStr = new String();
  String reverse = new String();
  for(int i = 0; i < word.length(); i++)
  {
    if(Character.isLetter(word.charAt(i)) == true) //adds ONLY letters to newStr
    {
      newStr = newStr + word.substring(i, i+1);
    }
  }
  for(int i = newStr.length()-1; i >=0; i--) //get the reverse of newStr (to be compared with Str)
  {
    reverse = reverse + newStr.substring(i, i +1);
  }
  if(newStr.equalsIgnoreCase(reverse)) //compares newStr and reverse (of newStr)
  {
    return true;
  }
  return false;
}

