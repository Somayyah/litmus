# litmus - Work in progress, expect bugs and missing features

A simple Bash script to test C programs with input/output cases.
Uses GCC, no extra dependencies.
Made for quick checks and learning, not for production.

## Usage

- To create test files:

  ```
  ./litmus.sh generate test.txt [path for the generated text, by default it's in .]
  ```

  This will generate a JSON file test.json. The test.txt file format is like this:

  ```
  ---------------------
  <input1>
  
  
  <Expected Output1>
  
  ----------------------
  <input2>
  
  
  <Expected Output1>
  
  ----------------------
  ```

  And the result JSON is like this:

  ```
  [
    {
      "input": "input1",
      "expected": "output1"
    },
    {
      "input": "input2",
      "expected": "output2"
    }
  ]
  ```
- To test against the test file:

  ```./litmus.sh input.c [the test filename, by default it searches for input.json]```

Errors and mismatches are saved in input.log for easy debugging.
  
