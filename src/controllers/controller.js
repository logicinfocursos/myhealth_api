import {
	ReasonPhrases,
	StatusCodes,
	getReasonPhrase,
	getStatusCode,
} from 'http-status-codes'

import * as dao from "../dao"



export default class Controller {



    static async getAll(_, response, table) {

        const result = await dao.getAll(table)

        if (result && result.rows && result.rows > 0) return response.status(StatusCodes.OK).json(result)

        else return response.status(400).json(result)
    }



    static async getByKey(request, response, table) {

        const id = request.params.id
        const key = request.params.key ? request.params.key : 'id'
        const result = await dao.getByKey(table, id, key)

        if (result && result.rows && result.rows > 0) return response.status(200).json(result)

        else return response.status(400).json(result)
    }



    static async create(request, response, table) {

        const result = await dao.create(table, request.body)

        if (result) return response.status(201).json(result)

        else return response.status(400).json(result)

    }



    static async update(request, response, table) {

        const result = await dao.update(table, request.body, request.params.id)

        if (result) return response.status(200).json(result)

        else return response.status(400).json(result)
    }



    static async erase(request, response, table) {

        const result = await dao.erase(table, request.params.id)

        console.log(">>> delete: result", result)
        console.log(">>> delete: result.success", result.success)

        if (result && result.success) return response.status(200).json(result)

        else return response.status(400).json(result)
    }
}