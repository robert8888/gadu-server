require("dotenv").config();
const express = require("express")
const cors = require("cors")

const port = process.env.PORT || 3000

const app = express()

app.use(cors())


app.get("/", (req, res) => {
    res.send("hello word - 3")
})

app.listen(port, () => {
    console.log(`Server started at port ${port}`)
})