/* 0.5.4 2021-04-23 21:06:13 */
const { app, contextBridge } = require('electron')
const os = require('os');
const nodeMachineId = require('node-machine-id');
const electron = require('electron');

contextBridge.exposeInMainWorld('_electron', {
  _electron: electron.remote,
  os: os,
  machine: nodeMachineId,
})
