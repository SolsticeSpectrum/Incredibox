cordova.define("cordova-plugin-icloudkv.iCloudKV", function(require, exports, module) {
// Copyright (c) Alex Drel 2012

var iCloudKV = exports;

var exec = require('cordova/exec');
var cordova = require('cordova');

iCloudKV.onChange = null;

iCloudKV.sync = function(success, fail) {
  exec(success /*(dictionary_with_all_sync_keys)*/, fail, "iCloudKV", "sync", []);
};

iCloudKV.save = function (key, value, success) {
  exec(success, null, "iCloudKV", "save", [key, value]);
};

iCloudKV.load = function (key, success, fail) {
  exec(success /*(value)*/, fail, "iCloudKV", "load", [key]);
};

iCloudKV.remove = function (key, success) {
  exec(success, null, "iCloudKV", "remove", [key]);
};

iCloudKV.monitor = function (notification /*(keys)*/, success) {
  this.onChange = notification;
  exec(success, null, "iCloudKV", "monitor", []);
};

iCloudKV.didChanged = function (keys) {
  if (this.onChange)
    this.onChange(keys);
};

});
