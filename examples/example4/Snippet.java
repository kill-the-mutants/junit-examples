package examples.example4;

/*
 * Selection Sort
 * http://www.java2novice.com/java-sorting-algorithms/selection-sort/
 */

public class Snippet
{ 
    public static int[] doSelectionSort(int[] arr)
	{        
        for (int i = 0; i < arr.length - 1; i++)
        {
            int index = i;
            for (int j = i + 1; j < arr.length; j++)
                if (arr[j] < arr[index])
                    index = j;
      
            int smallerNumber = arr[index]; 
            arr[index] = arr[i];
            arr[i] = smallerNumber;
        }
        return arr;
    }
    
	/* Main method that we don't really need
    public static void main(String a[])
	{
        int[] arr1 = {10,34,2,56,7,67,88,42};
        int[] arr2 = doSelectionSort(arr1);
        for(int i:arr2)
		{
            System.out.print(i);
            System.out.print(", ");
        }
    }
	*/
}