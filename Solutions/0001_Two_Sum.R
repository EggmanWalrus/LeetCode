library(hash)
library(microbenchmark)

nums <- c(2, 3, 4, 5, 7, 11, 15)
target <- 13

#Loop
twoSum <- function(nums, target) {
  for (i in seq(1, length(nums) - 1)) {
    
    for (j in seq(i+1, length(nums))) {
      if ((nums[i] + nums[j]) == target) {
        print(c(i, j))
      }
    }
  }
}

twoSum(nums, target)

#Hash
h <- hash()
twoSum_hash <- function(nums, target) {
  for (i in seq(1, length(nums))) {
    if (!((target - nums[i]) %in% values(h))) {
      h[nums[i]] <- i
    } else {
      print(c(values(h, keys = (target - nums[i]))[[1]], i))
    }
  }
}

twoSum_hash(nums, target)

microbenchmark('loop' = {twoSum(nums, target)},
               'hash' = {twoSum_hash(nums, target)})