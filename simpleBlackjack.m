function avgScore = simpleBlackjack(limit, trials)
%
% This function simulates playing many hands of
% Simple Blackjack where the player continually
% hits up to a given limit. Final score for each
% hand is computed, and the average score over all
% hands is returned.
%
% INPUT limit – The player always hits if their
% hand value is less than limit
% INPUT trials – The number of hands to simulate
%
% OUTPUT avgScore – The average final score of
% all hands.
deck = [2:10, 10, 10, 10]; 
    totalScore = 0;  
    for trial = 1:trials
        hand = 0;  
        while hand < limit && hand <= 21
            card = deck(randi(length(deck))); 
            hand = hand + card;
            if hand > 21
                break;
            end
        end
        totalScore = totalScore + hand;
    end
    avgScore = totalScore/trials;
end
