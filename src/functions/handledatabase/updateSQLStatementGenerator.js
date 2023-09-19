export const updateSQLStatementGenerator = (table, body, id) => {

    let mysql_expression = `UPDATE ${table} SET `

    let num_fields = Object.values(body).length - 1

    for (let field_name_item of Object.getOwnPropertyNames(body)) {

        if(field_name_item == 'id') continue
        
        mysql_expression += field_name_item + `='` + body[field_name_item] + `'` + (num_fields <= 1 ? '' : ', ')

        num_fields--
    }

    mysql_expression += ` WHERE id=${id};`

    console.log(">>> updateSQLGenerator - mysql_expression: ", mysql_expression)

    return mysql_expression
}