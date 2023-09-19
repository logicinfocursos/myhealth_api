import mysql from 'mysql2/promise'
import { dbconnection as db } from "../../configuration/dbconnection"
import { getByKey } from './getByKey'



export const erase = async (table, id) =>{

    try {

        const rows = await getByKey(table, id, 'id')

        if (rows && rows.data[0].id) {

            const connection = await mysql.createConnection(db)

            const mysqlquery = `DELETE FROM ${table} WHERE id = ${id}`
            const [rows] = await connection.execute(mysqlquery)

            return {
                message: `o registro id: ${id} foi deletado com sucesso da ${table}!`,
                status: 'success',
                success: true,
                data: null,
                error: null,
                rows,
            }
        }

        throw (`o registro id: ${id} não foi encontrado na tabela ${table}, impossível deletar!`)

    } catch (error) {

        return {
            message: `ocorreu um erro ao se tentar deletar o registro id: ${id} da tabela ${table}!`,
            status: 'error',
            success: false,
            data: null,
            error,
            rows: null,
        }
    }
}