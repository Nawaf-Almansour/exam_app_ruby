import React, {useEffect, useState} from 'react'
import {getTests} from "../../../api/fetch";



const Home = () => {
    const [lists, setLists] = useState([]);
    const [loading, setLoading] = useState(false);

    useEffect(() => {
            fetchData().then() ;

    }, [null]);

    const fetchData = async () =>{
        setLoading(true);
        try {
            const response= await getTests();
            const data = response.data.data;
            setLists([...data]);
        } catch (error) {
            console.error(error.message);
        }
        setLoading(true);
    }

    return(

        <div>
            {loading ? (
                <h1>"Home"</h1>
            ): null}
        </div>

    )
}

export default Home