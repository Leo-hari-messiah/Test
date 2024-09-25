import matplotlib.pyplot as plt

def fibonacci(n):
    """Generates the Fibonacci sequence up to the nth number."""
    sequence = [0, 1]
    while len(sequence) < n:
        next_value = sequence[-1] + sequence[-2]
        sequence.append(next_value)
    return sequence

def save_fibonacci_to_file(sequence, filename):
    """Saves the Fibonacci sequence to a text file."""
    with open(filename, 'w') as f:
        for number in sequence:
            f.write(f"{number}\n")
    print(f"Sequence saved to {filename}")

def plot_fibonacci(sequence):
    """Plots the Fibonacci sequence."""
    plt.plot(sequence, marker='o', linestyle='-', color='b')
    plt.title('Fibonacci Sequence')
    plt.xlabel('Index')
    plt.ylabel('Value')
    plt.grid(True)
    plt.show()

if __name__ == "__main__":
    # Get user input
    n = int(input("Enter the number of Fibonacci numbers to generate: "))

    # Generate Fibonacci sequence
    fibonacci_sequence = fibonacci(n)

    # Print sequence to console
    print("Fibonacci sequence:")
    print(fibonacci_sequence)

    # Save sequence to file
    save_fibonacci_to_file(fibonacci_sequence, 'fibonacci.txt')

    # Plot the sequence
    plot_fibonacci(fibonacci_sequence)
