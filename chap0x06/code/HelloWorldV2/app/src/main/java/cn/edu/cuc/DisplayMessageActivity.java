package cn.edu.cuc;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class DisplayMessageActivity extends AppCompatActivity {

    public final static String SECRET_SEED = "idchannov";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_display_message);

        register();
    }

    private void register() {
        Intent intent = getIntent();
        String message = intent.getStringExtra(MainActivity.EXTRA_MESSAGE);
        String secret_key = md5(SECRET_SEED).substring(0, 4);

        Log.d("user input", message);
        Log.d("debug secret_key", secret_key);

        TextView textViewName = findViewById(R.id.textView);
        textViewName.setText(message);

        TextView textView = new TextView(this);
        textView.setTextSize(16);

        if(message.equalsIgnoreCase(secret_key)) {
            textView.setText(getString(R.string.register_ok));
        } else {
            textView.setText(getString(R.string.register_failed));
        }

        ViewGroup layout = (ViewGroup) findViewById(R.id.activity_display_message);
        layout.addView(textView);
    }

    private String md5(String s) {
        try {
            // Create MD5 Hash
            MessageDigest digest =MessageDigest.getInstance("MD5");
            digest.update(s.getBytes());
            byte messageDigest[] = digest.digest();

            // Create Hex String
            StringBuffer hexString = new StringBuffer();
            for (int i=0; i<messageDigest.length; i++)
                hexString.append(Integer.toHexString(0xFF & messageDigest[i]));
            return hexString.toString();

        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return "";
    }
}