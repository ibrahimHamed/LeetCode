class Solution {
public:
    int lengthOfLastWord(string s) {
        
        // int last_index = s.size() - 1;
        // for (int i = last_index; i >= 0; --i){
        //     if (s[i] != ' '){
        //         last_index = i;
        //         break;
        //     }


        // }
        // int i = last_index;
        // while(i >= 0 && s[i] != ' '){
        //     i--;
        // }
        // return last_index - i;

        int n = s.size();
        bool isStarted = false;
        int ans = 0;
        for (int i = n-1; i >= 0; i--)
        {
            if(!isStarted && s[i] != ' ')
            {
                isStarted = true;
                ans = 1;
            }
            else if (isStarted)
            {
                if( s[i] == ' ') break;
                else ans++;
            }
        }
        return ans;
    }
};