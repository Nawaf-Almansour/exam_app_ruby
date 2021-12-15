import axios from 'axios';
import apiUrl from './apiConfig';


export const api = axios.create({
    timeout: 30000,
    baseURL: apiUrl,
    headers: {
        Accept: 'application/json',
    }
});

