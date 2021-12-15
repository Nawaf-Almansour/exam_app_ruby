import React, {useEffect, useState} from 'react'
import axios from "axios";



const Home = () => {
    const [lists, setLists] = useState();

    useEffect(() => {
        axios.get('http://127.0.0.1:3000/api/v1/tests.json')
            .then(response => {
                console.log(response)
                setLists(response.data)
                console.log(lists)
            })
            .catch(error => console.log(error))
    }, [lists,null]);
    return(
        <div>
            <h1>"Home"</h1>
        </div>

    )
}

export default Home