import mysql from 'mysql2/promise'
import { dbconnection as db } from "../../configuration/dbconnection"



// todo: implementar a paginação
export const getAll = async (table) =>{

    try {
        const connection = await mysql.createConnection(db)

        const mysqlquery = `SELECT * FROM ${table}`
        const [rows, fields] = await connection.execute(mysqlquery)

        if (rows && rows.length > 0) {
            return {
                message: `consulta da tabela ${table} realizada com sucesso!`,
                status: 'success',
                success: true,
                rows: rows.length,
                error: null,
                data: rows,
            }
        }

        throw (`algum erro ocorreu ao tentar listar a tabela ${table}!`)

    } catch (error) {

        return {
            message: `ocorreu um erro ao tentar listar os registros da tabela ${table}!`,
            status: 'error',
            success: false,
            rows: 0,
            error,
            data: null,
        }
    }
}
