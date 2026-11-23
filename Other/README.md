# Other

These are Java practice problems. They aren't part of the Swift co-op coursework.

| File | What it does | Run |
|---|---|---|
| `SymmetricMountains.java` | For each crop length 1..N, prints the minimum asymmetric value of any crop of that length. It expands outward from every center, so it runs in O(N²). | `javac SymmetricMountains.java && echo "7 3 1 4 1 5 9 2" \| java SymmetricMountains` gives `0 2 0 5 2 10 10` |
| `Trianglane.java` | Computes the perimeter of the wet tiles in two rows of triangles. | `javac Trianglane.java && java Trianglane` (reads from stdin) |
| `TestCase.java` | Removes every `0` from an `ArrayList` without skipping consecutive zeros. | `javac TestCase.java && java TestCase` prints `[4, 2, 5, 3]` and then `4` |
