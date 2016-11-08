/**
 * Created by ZD on 2016/10/27.
 */

//定义引用的模块
var channel = require('cordova/channel');
var utils = require('cordova/utils');
var exec = require('cordova/exec');
var cordova = require('cordova');

//region 定义接口相关信息

//定义插件名称
var PLUGIN_NAME = 'TestPlugin';

//定义插件Native接口方法
var jsAction = {
  //测试
  test1: 'jsActionTestMethod'
};

//endregion


//region 定义插件对外暴露的接口

var TestPlugin = {

  /**
   * 测试
   * @param scope
   * @param state
   * @param onSuccess
   * @param onError
   */
  test1: function (scope, onSuccess, onError) {
    exec(onSuccess, onError, PLUGIN_NAME, jsAction.test1, [scope]);
  }
};
module.exports = TestPlugin;
//endregion

