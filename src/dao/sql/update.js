import mysql from 'mysql2/promise'
import { dbconnection as db } from "../../configuration/dbconnection"
import { updateSQLStatementGenerator } from '../../functions'
import { getByKey } from './getByKey'



export const update = async (table, body, id) =>{

    try {

        const rows = await getByKey(table, id, 'id')

        if (rows && rows.data[0].id) {

            const connection = await mysql.createConnection(db)

            const mysqlquery = updateSQLStatementGenerator(table, body, id) //`UPDATE ${table} SET name = '${body.name}', category = '${body.name}' WHERE id = ${id}`

            const [rows] = await connection.execute(mysqlquery)

            return {
                message: `o registro id: ${id} foi atualizado com sucesso na ${table}!`,
                status: 'success',
                success: true,
                sql: mysqlquery,
                data: body,
                error: null,
                rows,
            }
        }

        throw (`não exite o registro id: ${id} na tabela ${table}!`)

    } catch (error) {

        return {
            message: `>>> update: ocorreu um erro ao tentar atualizar o registro o registro id: ${id} na tabela ${table}!`,
            status: 'error',
            success: false,
            data: null,
            error,
            rows: 0,
        }
    }
}

