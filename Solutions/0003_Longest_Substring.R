#Given a string, find the length of the longest substring without repeating characters.

#Input: "abcabcbb"
#Output: 3 
#Explanation: The answer is "abc", with the length of 3.

#Input: "bbbbb"
#Output: 1
#Explanation: The answer is "b", with the length of 1.

#Input: "pwwkew"
#Output: 3
#Explanation: The answer is "wke", with the length of 3. 
#Note that the answer must be a substring, "pwke" is a subsequence and not a substring.

longestsubstr <- function(s) {
  n <- nchar(s)
  ans_length <- 0
  for (i in 1:n){
    for (j in 1:n) {
      subs <- substr(s, start = i, stop = j)
      judge_rep <- max(table(strsplit(subs, '')))
      judge_len <- length(table(strsplit(subs, '')))
      if (judge_rep == 1 & judge_len > ans_length) {
        ans <- subs
        ans_length <- nchar(subs)
      }
    }
  }
  
  return(data.frame(answer = ans, ans_length))
}

longestsubstr("abcabcbb")
longestsubstr("bbbbbb")
longestsubstr("pwwkew")