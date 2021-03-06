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
  String[] punctuation = {" ", ",", "'", "!", ";", "\"", "\\?", "\\.", ":"};
  for(String punc : punctuation)
  {
    CharSequence p = punc;
    if(word.contains(p)) 
    {
      String noPunc = "";
      String[] listWords = word.split(punc);
      for(String wrd : listWords)
      {
        noPunc += wrd;
      }
      word = noPunc;
    }
  }
  word = word.toLowerCase();
  if (reverse(word).equals(word)) 
    return true;
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length()-1; i >= 0; i--)
    {
      sNew += str.substring(i, i+1);
    }
    return sNew;
}
