import express from "express";
import path from "node:path"
const __dirname = import.meta.dirname
const app = express()
const port = 3000

const replica = process.env.APP_NAME

// makes everything under /public accessible from /
app.use(express.static(path.join(__dirname, 'public')))

app.use('/', (req, res) => {
	res.sendFile(path.join(__dirname, 'index.html'))
	console.log(`Request served by replica ${replica}`)
})

app.listen(port, () => {
	console.log(`Replica ${replica} is listening on port ${port}`);
}) 