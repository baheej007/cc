def coin_change(coins, amount):
   
    dp = [float('inf')] * (amount + 1)
    dp[0] = 0  
    for i in coins: 
        for x in range(i, amount + 1):
            dp[x] = min(dp[x], dp[x - i] + 1)

     
    return dp[amount] if dp[amount] != float('inf') else -1
        
print(coin_change([1, 2, 5], 11)) 
print(coin_change([2], 3))   

