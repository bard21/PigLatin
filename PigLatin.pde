public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
   for (int i = 0; i < sWord.length(); i++) {
    if (sWord.substring(i, i+1).equals("a")) {
      return i;
    }
    if (sWord.substring(i, i+1).equals("e")) {
      return i;
    }
    if (sWord.substring(i, i+1).equals("i")) {
      return i;
    }
    if (sWord.substring(i, i+1).equals("o")) {
      return i;
    }
    if (sWord.substring(i, i+1).equals("u")) {
      return i;
    }
  }
	return -1;
}

public boolean BeginVowels(String sWord) {
  if (sWord.substring(0, 1).equals("a")) {
  return true;
  }
  else if (sWord.substring(0, 1).equals("e")) {
    return true;
  }
  else if (sWord.substring(0, 1).equals("i")) {
    return true;
  }
  else if (sWord.substring(0, 1).equals("o")) {
    return true;
  }
  else if (sWord.substring(0, 1).equals("u")) {
    return true;
  }
  else {
    return false;
  }
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
  else if (BeginVowels(sWord) == true) {
    return sWord + "way";
  }
  else if (sWord.substring(0, 2).equals("qu")) {
    return sWord.substring(2) + "quay";
  }

	else
	{
		return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0, findFirstVowel(sWord)) + "ay";
	}
}
