class Solution {
public:
    int lengthOfLastWord(string s) {
        int last_index = s.size() - 1;
        for (int i = last_index; i >= 0; --i){
            if (s[i] != ' '){
                last_index = i;
                break;
            }
        }
        int i = last_index;
        while(i >= 0 && s[i] != ' '){
            i--;
        }
        return last_index - i;
    }
};