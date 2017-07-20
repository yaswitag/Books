package com.example.yaswitha.steel;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import static android.R.attr.button;

public class MainActivity extends Activity {
    Button button;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        button=(Button)findViewById(R.id.button1);

    }


    public void getURL(View v){
        Intent intent=new Intent(this,TrialActivity.class);
        startActivityForResult(intent,1);
    }

    protected void onActivityResult(int requestCode,int resultCode,Intent data){
        if(requestCode==1 && resultCode==1){
            final String url1= data.getStringExtra("url");
            Intent i = new Intent(Intent.ACTION_VIEW);
            i.setData(Uri.parse(url1));
            startActivity(i);
            /*button.setOnClickListener(new View.OnClickListener() {

                @Override
                public void onClick(View arg0) {

                    Intent intent = new Intent(Intent.ACTION_VIEW,
                            Uri.parse(url1));

                    startActivity(intent);

                }


            });*/

        }
    }
    }



