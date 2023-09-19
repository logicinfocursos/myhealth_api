import { request, response } from 'express'

import Controller from './controller'



export class UsersController extends Controller{

    constructor(request, response, table){
        super(request, response, table)        
    }

}