class Solution {
public:
    int timeRequiredToBuy(vector<int>& tickets, int k) {
        int n = 0;
        queue<pair<int, int>> ticketQueue;
        for (int i = 0; i < tickets.size(); i++) {
            ticketQueue.push({tickets[i],i});
        }
        while ( ticketQueue.size()) {
            int currentTicket = ticketQueue.front().first;
            int currentTicketIndex = ticketQueue.front().second;
            currentTicket--;
            n++;
            if (currentTicket == 0 && currentTicketIndex == k) return n;
            ticketQueue.pop();
            if (currentTicket > 0) ticketQueue.push({currentTicket,currentTicketIndex});
        }
        return n;
    }
};