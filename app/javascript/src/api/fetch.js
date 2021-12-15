import axios  from 'axios';
import {api} from './index'


export const postSignUp = (data) => {
    return api.post('/sign-up', data)
}

// export const getTests = (token) => {
//     return api.get('/tests', {headers: {Authorization: 'Bearer ' + token}})
// }

export const getTests = () => {
    return api.get('/tests')
}