package member;

import java.util.Arrays;

import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson.JacksonFactory;

public final class GoogleInitData {

	/**
	 * Please provide a value for the CLIENT_ID constant before proceeding, set this up at https://console.developers.google.com/
	 */
	public static final String CLIENT_ID = "176570357159-s073kjip1v6v8vcu2bta223s9neuqoht.apps.googleusercontent.com";
	/**
	 * Please provide a value for the CLIENT_SECRET constant before proceeding, set this up at https://console.developers.google.com/
	 */
	public static final String CLIENT_SECRET = "CCNZSypNLx8-mAMLwjLFzsp5";

	/**
	 * Callback URI that google will redirect to after successful authentication
	 */
	public static final String CALLBACK_URI = "http://localhost:8080/HalfOf73/member/oauth2callback";
	
	public static final String CALLBACK_URI_PRO = "http://halfof73.ane.tw/HalfOf73/member/oauth2callback";
	
	// start google authentication constants
	public static final Iterable<String> SCOPE = Arrays.asList("https://www.googleapis.com/auth/userinfo.profile;https://www.googleapis.com/auth/userinfo.email".split(";"));
	public static final String USER_INFO_URL = "https://www.googleapis.com/oauth2/v1/userinfo";
	public static final JsonFactory JSON_FACTORY = new JacksonFactory();
	public static final HttpTransport HTTP_TRANSPORT = new NetHttpTransport();
	// end google authentication constants

}
