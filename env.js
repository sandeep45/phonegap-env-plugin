//
//  env.js
//  Enviornment Detection Cordova Plugin
//
//  Created by Sandeep Arneja on 04/15/2013.
//  MIT Licensed
//
(function(){
  var cordovaRef = window.PhoneGap || window.Cordova || window.cordova; // old to new fallbacks
  
  var Env = function(){
  };
  
  Env.prototype.env = function(scope,s,f) {
    cordovaRef.exec(
      function(ans){s.call(scope,ans);},
      function(ans){f.call(scope,ans);},
      "Env","envDetected", []
    );
  };
  
  cordovaRef.addConstructor(function(){
    if(!window.plugins)
    {
      window.plugins = {};
    }
    window.plugins.env = new Env();
  });
})();