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
  String[] punctuation = {" ", ".", ",", "!", ";", "?", "'", "\"",};
  String noPunc = "";
  for(String punc : punctuation)
  {
    String[] listWords = word.split(punc); //remember obj
    for(String wrd : listWords)
    {
      noPunc += wrd;
    }
    word = noPunc;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    //your code here
    return sNew;
}
