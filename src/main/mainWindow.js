const { BrowserWindow } = require('electron');
const path = require('path');


function createMainWindow() {
  const mainWindow = new BrowserWindow({
    width: 800,
    height: 600,
    webPreferences: {
      preload: path.join(__dirname, 'preload.js')
    }
  });

  mainWindow.loadFile('public/index.html');
  return mainWindow;
}

module.exports = { createMainWindow };
