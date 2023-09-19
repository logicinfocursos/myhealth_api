export const insertSQLStatementGenerator = (table, body) => {

    let mysql_expression = `INSERT INTO ${table} (`

    let num_fields = Object.values(body).length - 1

    for (let field_name_item of Object.getOwnPropertyNames(body)) {
        
        //if(field_name_item == 'id') continue

        mysql_expression += field_name_item + (num_fields < 1 ? '' : ', ')
        num_fields--
    }

    mysql_expression += `) VALUES (`

    let num_fields_content = Object.values(body).length - 1

    for (let item of Object.values(body)) {

        mysql_expression += `'` + item + `'` + (num_fields_content < 1 ? `` : `, `)
        num_fields_content--
        console.log('+++ num_fields_content', num_fields_content)
    }

    mysql_expression += `);`

    return mysql_expression
}