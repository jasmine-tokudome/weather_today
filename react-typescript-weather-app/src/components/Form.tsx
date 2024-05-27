import { useState } from 'react';

const Form = () => {
    const [city,setCity] = useState<string>("");
    const getWeather = () => {
        fetch("http://api.weatherapi.com/v1/current.json?key=cb54494cc2a845f3b36145131240302&q=London&aqi=no
        ")
    }
    return(
<form>
    <input type="text" name="city" placeholder="都市名" onChange = {e => setCity(e.target.value)}/>
    {city}
    <button type="submit">Get Weather</button>
</form>
    );
};

export default Form;
