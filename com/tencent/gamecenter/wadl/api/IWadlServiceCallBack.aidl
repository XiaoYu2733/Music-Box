package com.tencent.gamecenter.wadl.api;
import android.os.Bundle;

oneway interface IWadlServiceCallBack
{
	void transferAsync(in String cmd, in Bundle params);
}