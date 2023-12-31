import * as dotenv from "dotenv"
import express from "express"
import cors from "cors"
//import helmet from "helmet"

import _router from './routers/router'



dotenv.config()



/*********************************************************************************
 *** App Variables
 *********************************************************************************/
const HOSTNAME = process.env.API_HOSTNAME || 'http://localhost'
const PORT = parseInt(process.env.API_PORT, 10) || 5000

const app = express()




/*********************************************************************************
 *** Endpoint raiz
 *********************************************************************************/
app.get('/', (req, res) => {
    res.send('Bem-vindo!')
})


/*********************************************************************************
 *** JSON
 *********************************************************************************/
app.use(express.json())
app.use(express.urlencoded({ extended: true }))



/*********************************************************************************
 *** App Configuration
 *********************************************************************************/
//app.use(helmet())
app.use(cors())
// Cors
/* app.use(cors({
    origin: ['http://localhost:3000']
})) */



/*********************************************************************************
 *** Rotas
 *********************************************************************************/
app.use('/api', _router)



/*********************************************************************************
 *** Resposta padrão para quaisquer outras requisições:
 *********************************************************************************/
app.use((req, res) => {
    res.status(404)
})



/*********************************************************************************
 *** Server Activation
 *********************************************************************************/
app.listen(PORT, () => {
    console.log(`Servidor rodando com sucesso ${HOSTNAME}:${PORT}`)
  });