import {
    URL_LOCAL,
    URL_PRODUCTION,
    NODE_ENV,
    SENTRY_KEY_PROD,
    URL_LOCAL_PIC,
    URL_PRODUCTION_PIC,

} from './env';


let  SENTRY_KEY, apiUrl, apiUrlImage;
if (NODE_ENV === 'production') {
    SENTRY_KEY = SENTRY_KEY_PROD;
    apiUrl = URL_PRODUCTION;
    apiUrlImage = URL_PRODUCTION_PIC;
} else {
    SENTRY_KEY = SENTRY_KEY_PROD;
    apiUrl = URL_LOCAL;
    apiUrlImage = URL_LOCAL_PIC;

}

// console.log(apiUrl)

const timeout = 10000;

export { SENTRY_KEY, timeout, apiUrl, NODE_ENV, apiUrlImage} ;
export default apiUrl;
