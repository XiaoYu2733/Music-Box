package com.tencent.gamecenter.wadl.api;
import com.tencent.gamecenter.wadl.api.IWadlServiceCallBack;
import com.tencent.gamecenter.wadl.api.WadlRequest;
oneway interface IWadlService
{
  void transferAsync(in WadlRequest request);
  void registerCallback(IWadlServiceCallBack callback);
  void unregisterCallback(IWadlServiceCallBack callback);
}