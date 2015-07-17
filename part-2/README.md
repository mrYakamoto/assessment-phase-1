# Part 2: Work with a Collection
## Summary
In this part of the assessment, we are going to be working with a collection of objects.  We've been provided three classes and tests that describe the behaviors of the classes.  Take a look at the provided code before moving on to completing this part of the assessment.

### 'Team' and 'PointsCalculator'
The `Team` and `PointsCalculator` classes have been written for us.  Furthermore, tests have been provided that describe the behaviors of these classes.  Read the code for these classes and the test code because we'll be working with these objects later

### `League`
A league is a collection of teams. We can initialize a league with a collection of teams and a points calculator. Your task is to add functionality to the `League` class to allow it to answer the following questions:

- What is the current ranking of the teams? (Highest to Lowest)
- What teams will make the playoffs? (Top 4 Teams)

## Running the Tests
If you have questions on how to run the tests, please check the [rspec-help](../rspec-help.md) document.

## Releases
### Release 0: `League#standings`
`Team` objects know their record, and the `PointsCalculator` knows how to convert this data into a single comparable value. To determine the current standing of the league, we'll need to leverage these objects to find out how the teams stack up.

A group of tests is provided to describe how an instance of `League` behaves when told to supply the current standings.  This group of tests is [tagged](https://www.relishapp.com/rspec/rspec-core/v/2-4/docs/command-line/tag-option) `standings`.  To run the tests specific to the `#standings` method, from the root directory run:

```
rspec --tag standings
```

The three tests in the example group should be failing.  Update the `League` class in `league.rb` to make the tests pass.

*Do not modify the tests.*

### Release 1:  `SockDrawer#supply_random_pair_of_socks`
Now pretend we need a pair of socks.  We don't have any particular sock for the sock drawer to match.  Instead, we want the sock drawer to give us any pair of socks that it can find among its socks.

A group of tests is provided to describe how an instance of `SockDrawer` behaves when told to supply a random pair of socks.  This group of tests is [tagged](https://www.relishapp.com/rspec/rspec-core/v/2-4/docs/command-line/tag-option) `supply_random_pair_of_socks`.  To run the tests specific to the `#supply_random_pair_of_socks` method, from the root directory run:

```
rspec --tag supply_random_pair_of_socks
```

Update the `SockDrawer` class in `sock_drawer.rb` to make the tests pass.

*Do not modify the tests.*

## Conclusion
Once all the tests have passed, you have completed Part 2 of the assessment.  If you haven't done so already, commit your changes and move on to Part 3.
