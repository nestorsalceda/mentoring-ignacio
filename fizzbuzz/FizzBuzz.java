public class FizzBuzz {
	public String forNumber(int num){
		String result = "";
		if(isFizz(num)) {
			result += "Fizz";
		}
		if(isBuzz(num)) {
			result += "Buzz";
		}

		return result.length() != 0? result : String.valueOf(num);
	}

	private boolean isFizz(int num) {
		return num % 3 == 0;
	}
	private boolean isBuzz (int num){
		return num % 5 == 0;
	}
}
