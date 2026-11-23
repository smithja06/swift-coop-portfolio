import java.util.ArrayList;

/* TestCase
 *
 * Removes every 0 from a list while walking it with an index.
 * The index only advances when nothing is removed, so consecutive zeros
 * are not skipped.
 *
 * Expected output:  [4, 2, 5, 3]
 *                   4
 */
public class TestCase
{
    public static void main(String[] args)
    {
        ArrayList<Integer> nums = numQuest();
        System.out.println(nums);
        System.out.println(nums.get(0));
    }

    public static ArrayList<Integer> numQuest()
    {
        ArrayList<Integer> nums = new ArrayList<Integer>();
        nums.add(0);
        nums.add(0);
        nums.add(4);
        nums.add(2);
        nums.add(5);
        nums.add(0);
        nums.add(0);
        nums.add(3);
        nums.add(0);

        int k = 0;
        Integer zero = Integer.valueOf(0);
        while (k < nums.size()) {
            if (nums.get(k).equals(zero)) {
                nums.remove(k);
            } else {
                k++;
            }
        }
        return nums;
    }
}
