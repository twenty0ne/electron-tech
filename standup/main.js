const { app, BrowserWindow } = require('electron')

let win

function createWindow() {
	win = new BrowserWindow({ width: 400, height: 360, titleBarStyle: 'hidden' })
	win.loadFile('index.html')

	// win.webContents.openDevTools()

	win.on('closed', () => {
		console.log('win closed')
		win = null
	})
}

app.on('ready', createWindow)

app.on('window-all-closed', ()=>{
	console.log('window-all-closed')
	if (process.platform !== 'darwin') {
		app.quit()
	}
})

app.on('activate', ()=>{
	console.log('activate')
	if (win === null)
		createWindow()
})


