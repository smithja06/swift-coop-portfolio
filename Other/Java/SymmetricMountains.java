import java.util.Arrays;
import java.util.Scanner;

/* Symmetric Mountains
 *
 * For every crop length from 1 to N, prints the smallest asymmetric value of any
 * crop of that length. The asymmetric value of a crop is the sum of
 * |left - right| over each pair of mountains mirrored around the crop's center.
 *
 * Approach: expand outward from every center (odd and even lengths), adding one
 * mirrored pair per step, and keep the minimum cost seen for each length. O(N^2).
 *
 * Sample input:   7
 *                 3 1 4 1 5 9 2
 * Sample output:  0 2 0 5 2 10 10
 */
public class SymmetricMountains
{
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        int N = scanner.nextInt();
        int[] heights = new int[N];
        for (int i = 0; i < N; i++) {
            heights[i] = scanner.nextInt();
        }
        scanner.close();

        // asymmetricValues[len] = minimum asymmetric value of any crop of length len
        int[] asymmetricValues = new int[N + 1];
        Arrays.fill(asymmetricValues, Integer.MAX_VALUE);

        for (int center = 0; center < N; center++) {
            // Odd-length crops centered on a single mountain
            expand(heights, center, center, 0, asymmetricValues);

            // Even-length crops centered between two mountains
            if (center + 1 < N) {
                int startValue = Math.abs(heights[center] - heights[center + 1]);
                expand(heights, center, center + 1, startValue, asymmetricValues);
            }
        }

        StringBuilder output = new StringBuilder();
        for (int len = 1; len <= N; len++) {
            output.append(asymmetricValues[len]);
            if (len < N) {
                output.append(" ");
            }
        }
        System.out.println(output);
    }

    private static void expand(int[] heights, int left, int right, int symmetricValue, int[] asymmetricValues) {
        while (left >= 0 && right < heights.length) {
            int len = right - left + 1;
            asymmetricValues[len] = Math.min(asymmetricValues[len], symmetricValue);

            left--;
            right++;
            if (left >= 0 && right < heights.length) {
                symmetricValue += Math.abs(heights[left] - heights[right]);
            }
        }
    }
}
