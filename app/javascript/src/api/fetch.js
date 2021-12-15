import axios  from 'axios';
import {api} from './index'


export const postSignUp = (data) => {
    return api.post('/sign-up', data)
}
export const sendVerification = (data) => {
    return api.post('/send-verification', data)
}