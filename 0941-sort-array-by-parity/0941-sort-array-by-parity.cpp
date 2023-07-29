class Solution {
public:
    vector<int> sortArrayByParity(vector<int>& nums) {
    //     vector<int> new_nums;
    //    for(int i = 0; i<nums.size(); i++) {
    //        if (nums[i]%2 == 0) new_nums.push_back(nums[i]);
    //    } 

    //    for(int i = 0; i<nums.size(); i++) {
    //        if (nums[i]%2 != 0) new_nums.push_back(nums[i]);
    //    } 
    //    return new_nums;

        int first_to_put_even =0;
       for(int i = 0; i<nums.size(); i++) {
           if (nums[i]%2 == 0) {
               swap(nums[i], nums[first_to_put_even]);
               first_to_put_even++;
           }
       } 
       return nums;

    }
};