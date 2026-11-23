import java.util.Scanner;

/* Trianglane
 * 
 * 
 * 
 */
public class Trianglane {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        
        int c = in.nextInt(); 

        int[] row1 = new int[c];
        int[] row2 = new int[c];

        int totalP = 0;

        for(int i = 0; i < c; i++) {
            row1[i] = in.nextInt();

            if(row1[i] == 1) {
                totalP += 3;
            }

        }

        for(int i = 0; i < c; i++) {
            row2[i] = in.nextInt();

            if(row2[i] == 1) {
                totalP += 3;
            }
        }

        for(int i = 0; i < c-1; i++) {
            if (row1[i] == 1 && row1[i+1] == 1) {
                totalP -= 2;
            }

            if (row2[i] == 1 && row2[i+1] == 1) {
                totalP -= 2;
            }
        }

        for(int i = 0; i < c; i+= 2) {
            if(row1[i] == 1 && row2[i] == 1){
                totalP -= 2;
            }
        }

        System.out.println(totalP);

    }
    
}