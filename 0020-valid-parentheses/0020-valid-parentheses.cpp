class Solution {
public:
    bool isValid(string s) {
        stack<char> charStack;
        
        int i = 0;
       while(i < s.size())
       {

          if (s[i] == '{' || s[i] == '[' || s[i] == '(') 
          {
             charStack.push(s[i]); 
          } 
          else if (charStack.empty() == false)
          {
              
              if (s[i] == '}' && charStack.top() == '{') charStack.pop();
              else if (s[i] == ']' && charStack.top() == '[') charStack.pop();
              else if (s[i] == ')' && charStack.top() == '(') charStack.pop();
              else {
               return 0;   
              }
           } else {
              return 0;
           }
           i++;
        } 
        return (charStack.empty());
    }
};