import mysql from 'mysql2/promise'
import { dbconnection as db } from "../../configuration/dbconnection"



// todo: implementar a paginação
export const getByKey = async (table, id, key) =>{

    try {
        const connection = await mysql.createConnection(db)

        const mysqlquery = `SELECT * FROM ${table} WHERE ${key} ` + (key == 'id' ? ` ='${id}';` : ` LIKE '%${id}%';`)
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

        throw (`a consulta com do campo: '${key}', conteúdo '${id}' na tabela ${table}, não obteve resultados`)

    } catch (error) {

        return {
            message: `ocorreu um erro ao tentar listar os registros da tabela ${table}!`,
            status: 'error',
            success: false,
            data: null,
            error,
            rows: 0,
        }
    }
}
