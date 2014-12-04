import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.Before;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;

public class FizzBuzzTest {
	private FizzBuzz fizzBuzz;

	@Before
	public void setUp() {
		fizzBuzz = new FizzBuzz();
	}

	@Test
	public void returnsFizzIfIsDivisibleBy3() {
		String result = fizzBuzz.forNumber(6);

		assertEquals("Fizz", result);
	}

	@Test
	public void returnsBuzzIfIsDivisibleBy5() {
		String result = fizzBuzz.forNumber(10);

		assertEquals("Buzz", result);
	}

	@Test
	public void returnsFizzBuzzIfIsDivisibleBy5And3() {
		String result = fizzBuzz.forNumber(15);

		assertEquals("FizzBuzz", result);
	}

	@Test
	public void returnsSameNumberIfNotFizzOrBuzz() {
		String result = fizzBuzz.forNumber(1);

		assertEquals("1", result);
	}
}
