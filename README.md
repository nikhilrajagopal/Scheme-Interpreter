# Scheme Interpreter

This is a Scheme interpreter project developed for the CS61A course at UC Berkeley. The Scheme interpreter is implemented in Python and provides functionality to evaluate Scheme expressions, execute Scheme programs, and explore the power of functional programming.

## Features
The Scheme interpreter offers the following features:
- Evaluation of Scheme expressions: The interpreter can evaluate basic Scheme expressions and provide the corresponding results.
- Support for built-in procedures: Various built-in procedures such as arithmetic operations, conditional statements, and list operations are supported.
- Function definition and application: Users can define their own Scheme functions and apply them to arguments.
- Recursion: The interpreter supports recursive function calls.
- Lexical scoping: Proper lexical scoping rules are followed during function evaluation.
- Error handling: Appropriate error messages are displayed for syntax errors or evaluation errors.

## Usage
To use the Scheme interpreter, follow these steps:
1. Clone the repository to your local machine.
2. Navigate to the directory containing the interpreter files.
3. Run the interpreter using a Scheme file or directly in the REPL (Read-Eval-Print Loop) mode.

#### Running Scheme Files
To run a Scheme file, use the following command:
```
python3 scheme.py [file_name].scm
```

#### Running in REPL Mode
To run the interpreter in REPL mode, use the following command:
```
python3 scheme.py
```
This will start the interpreter in interactive mode, where you can enter Scheme expressions one by one and see the results.

## Examples
Here are some examples of valid Scheme expressions that can be evaluated using the interpreter:

```scheme
(+ 2 3)    ; Addition: returns 5
(- 5 2)    ; Subtraction: returns 3
(* 2 4)    ; Multiplication: returns 8
(/ 10 2)   ; Division: returns 5
(> 4 2)    ; Greater than: returns #t (true)
(< 4 2)    ; Less than: returns #f (false)
(= 3 3)    ; Equality: returns #t (true)
```

```scheme
(define (factorial n)
  (if (= n 0)
      1
      (* n (factorial (- n 1)))))

(factorial 5)    ; Factorial of 5: returns 120
```

## Additional Resources
For more information on Scheme programming and the CS61A course, refer to the following resources:
- [Scheme Programming Language](https://en.wikipedia.org/wiki/Scheme_(programming_language))
- [CS61A Course Website](https://cs61a.org/)

Please note that this README provides a brief overview of the Scheme interpreter project. For detailed documentation and code implementation, refer to the original CS61A repository.
