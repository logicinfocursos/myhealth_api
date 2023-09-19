import express from 'express'

import { MeasurementsController, UsersController } from '../controllers'



const _router = express.Router()




/*********************************************************************
*** measurements ***
**********************************************************************/
_router.post('/measurements', (request, response) => {
    MeasurementsController.create(request, response, 'measurements')
    
})

_router.get('/measurements', (request, response) => {
    MeasurementsController.getAll(request, response, 'measurements')
})

_router.get('/measurements/:id/:key', (request, response) => {
    MeasurementsController.getByKey(request, response, 'measurements')
})

_router.get('/measurements/:id', (request, response) => {
    MeasurementsController.getByKey(request, response, 'measurements')
})

_router.put('/measurements/:id', (request, response) => {
    MeasurementsController.update(request, response, 'measurements')
})

_router.delete('/measurements/:id', (request, response) => {
    MeasurementsController.erase(request, response, 'measurements')
})




/*********************************************************************
*** users ***
**********************************************************************/
_router.post('/users', (request, response) => {
    UsersController.create(request, response, 'users')
    
})

_router.get('/users', (request, response) => {
    UsersController.getAll(request, response, 'users')
})

_router.get('/users/:id/:key', (request, response) => {
    UsersController.getByKey(request, response, 'users')
})

_router.get('/users/:id', (request, response) => {
    UsersController.getByKey(request, response, 'users')
})

_router.put('/users/:id', (request, response) => {
    UsersController.update(request, response, 'users')
})

_router.delete('/users/:id', (request, response) => {
    UsersController.erase(request, response, 'users')
})

export default _router