const axios = require('axios');

const baseUrl = 'https://us-central1-involvement-api.cloudfunctions.net/capstoneApi/';

async function createApp(){
    try {
        const response = await axios.post(baseUrl + 'apps/');
        return response.data;
    }
    catch (error) {
        console.error('Error :', error.message);
        return null;
    }
}

createApp()
.then(uniqueIdentifier => {
    console.log('Unique identifier: ', uniqueIdentifier);
})
.catch(error => {
    console.error('Error', error);
});