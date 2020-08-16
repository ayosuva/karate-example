package examples.users;

import org.junit.runner.RunWith;

import com.intuit.karate.junit5.Karate;

public class UsersRunner {
	@Karate.Test
    Karate testSample() {
        return Karate.run("users").relativeTo(getClass());
    }
}