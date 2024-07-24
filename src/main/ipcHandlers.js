const { ipcMain } = require('electron');

ipcMain.on('message', (event, arg) => {
  console.log(arg); // prints "ping"
  event.reply('reply', 'pong');
});
