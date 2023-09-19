import mysql from 'mysql2/promise'
import { dbconnection as db } from "../../configuration/dbconnection"
import { insertSQLStatementGenerator } from '../../functions'



export const create = async (table, body) => {

    try {

        const connection = await mysql.createConnection(db)

        const mysqlquery = insertSQLStatementGenerator(table, body)

        const [rows, fields] = await connection.execute(mysqlquery)


        if (rows && rows.affectedRows > 0) {
            return {
                message: `o objeto enviado foi inserido com sucesso na ${table}!`,
                status: 'success',
                success: true,
                data: {
                    ...body,
                    id: rows.insertId
                },
                error: null,
                rows: rows.affectedRows,
            }
        }

        throw (`ocorreu um erro ao tentar criar um registro na tabela ${table}!`)

    } catch (error) {

        return {
            message: `ocorreu um erro ao tentar criar um registro na tabela ${table}!`,
            status: 'error',
            success: false,
            data: null,
            error,
            rows: 0,
        }
    }
}
