import React, {useEffect, useState} from 'react'
import axios from "axios";



const Home = () => {
    const [lists, setLists] = useState();
    const [loading, setLoading] = useState(true);

    useEffect(() => {

        const fetchData = async () =>{
            setLoading(true);
            try {
                const {data: response} = await axios.get('/stuff/to/fetch');
                setLists(response);
            } catch (error) {
                console.error(error.message);
            }
            setLoading(false);
        }

        fetchData();
    }, [lists,null]);
    return(
        <div>
            <h1>"Home"</h1>
        </div>

    )
}

export default Home